package com.us.myubond;

import java.io.UnsupportedEncodingException;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import com.us.Utils.Utils;
import com.us.adaptr.PerAdapter;
import com.us.ble.central.BLEDevice;
import com.us.ble.central.BLEManager;
import com.us.ble.central.L;
import com.us.ble.listener.ScanListener;
import com.us.fragment.DeviceFragment;
import com.us.view.CustomViewPager;

import android.app.AlertDialog;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.v4.app.FragmentActivity;
import android.support.v4.view.PagerTabStrip;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;

public class MainActivity extends FragmentActivity {
	private BluetoothManager myBluetoothManager;
	private BluetoothAdapter myBluetoothAdapter;
	private static final int REQUEST_ENABLE_BLUETOOTH = 1001;
	private static final String tag = "MainActicity";
	private PagerTabStrip pagerTabStrip;
	private CustomViewPager per_viewPager;
	private PerAdapter perAdater;
	private BLEManager mBleManager;

	private ListView lv;
	private TextView tv_hint;
	private ProgressBar pbar;
	private ShowBLEAdapter mViewAdapter;
	private MenuItem itemSacn;

	private boolean scaning = false; // 是否正在扫描
	private List<String> addressView;// 每个设备Key

	private BLEDevice dBleDevice; // 当前正在操作的设备
	private String dAddress; // 操作当前的设备

	private ArrayList<BLEDevice> mBLEList;
	/**
	 * key is the MAC Address 多设备 每一个BLEDevice实例代表一个设备
	 * 把所有的设备即BLEDevice实例放到一个集合里面，通过address 来获得对应的设备，做相应的操作
	 * 
	 * */
	Map<String, BLEDevice> mBLEDevices = new LinkedHashMap<String, BLEDevice>();
	private List<DeviceFragment> mFragments = new ArrayList<DeviceFragment>();
	Map<String, Handler> mHandlers = new LinkedHashMap<String, Handler>();

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.peripheral_viewpager);
		myBluetoothManager = (BluetoothManager) getSystemService(Context.BLUETOOTH_SERVICE);
		myBluetoothAdapter = myBluetoothManager.getAdapter();
		intit();
		intiView();
	}

	private void intit() {
		L.isDebug = true; // 打印设备连接，写入，接收数据的信息
		mBleManager = new BLEManager(this);
		mBleManager.setScanListener(new ScanListener() { // 扫描回调监听器
					@Override
					public void onScanResult(final int result,
							final BLEDevice bleDevice, final int rssi,
							byte[] scanRecord) {
						runOnUiThread(new Runnable() {
							public void run() {
								if (result == 0) { // 正在扫描
									scaning = true;
									System.out.println("找到了device:"
											+ bleDevice.getName() + " Rssi : "
											+ rssi + "" + "Address : "
											+ bleDevice.getAddress());
									if (!mBLEList.contains(bleDevice)) {
										mBLEList.add(bleDevice);
									}
									lv.setVisibility(View.VISIBLE);
									mViewAdapter.notifyDataSetChanged();
								} else {
									// 扫描结束
									scaning = false;
									itemSacn.setTitle("scan");
									if (mBLEList.size() <= 0) {
										tv_hint.setText("找不到设备");
										tv_hint.setVisibility(View.VISIBLE);
									} else {
										tv_hint.setVisibility(View.GONE);
									}
									pbar.setVisibility(View.GONE);
								}
							}
						});
					}
				});
		addressView = new ArrayList<String>();
		addressView.clear();
	}

	@SuppressWarnings("deprecation")
	private void intiView() {
		pagerTabStrip = (PagerTabStrip) findViewById(R.id.per_pagertab);
		pagerTabStrip
				.setTabIndicatorColorResource(android.R.color.holo_blue_light);
		per_viewPager = (CustomViewPager) findViewById(R.id.per_viewPager);
		per_viewPager.setOffscreenPageLimit(4);
		perAdater = new PerAdapter(getSupportFragmentManager(), mFragments);
		per_viewPager.setAdapter(perAdater);
		per_viewPager.setOnPageChangeListener(new OnPageChangeListener() {
			@Override
			public void onPageSelected(int arg0) {
				dAddress = addressView.get(arg0);
				if (mBLEDevices.get(dAddress) != null) {
					dBleDevice = mBLEDevices.get(dAddress);
					L.i(tag, "当前设备：" + dBleDevice.getAddress());
				}
			}

			@Override
			public void onPageScrolled(int arg0, float arg1, int arg2) {
			}

			@Override
			public void onPageScrollStateChanged(int arg0) {
			}
		});

	}

	@Override
	protected void onStart() {
		super.onStart();

		/**
		 * 判断蓝牙是否开启
		 */
		if (myBluetoothAdapter.isEnabled()) {
			System.out.println("蓝牙已开启...");
		} else {
			enableBle();
		}
		initScanDialog();
	}

	/**
	 * 开启蓝牙
	 */
	public void enableBle() {
		if (!myBluetoothAdapter.enable()) {
			Intent intent = new Intent(BluetoothAdapter.ACTION_REQUEST_ENABLE);
			startActivityForResult(intent, REQUEST_ENABLE_BLUETOOTH);
		}
	}

	/**
	 * 扫描设备
	 * */
	private void scanLeDevice() {
		itemSacn.setTitle("stop scan");
		if (mBLEList != null) {
			mBLEList.clear();
		}
		// scaning = true;
		if (scaning)
			stopScan();
		mBleManager.startScan(7);// 扫描5秒
	}

	/**
	 * 停止扫描
	 */
	private void stopScan() {
		scaning = false;
		mBleManager.stopScan();
	}

	private void initDialog() {
		initSettingDialog();
		initMessageDialog();
		initSecurityDialog();
		initSportsDialog();
		initHealthDialog();
		initCheersDialog();
		initTextDialog();
		initHeartDialog();
		initpushsettingDialog();
	}

	/***
	 * 添加设备，每连接一个设备就把设备添加到集合里面，方便管理
	 */

	private void addDevice(final BLEDevice device) {
		final String address = device.getAddress();
		byte[] scanRecord = null; // 扫描获取的
		int rssi = 0; // 扫秒是获取的 信号
		if (!mBLEDevices.containsKey(address)) {
			mBLEDevices.put(device.getAddress(), device);
			if (addressView.size() == 0) {
				// address = addressView.get(0); //默认操作第一个
				dBleDevice = mBLEDevices.get(address);
				dAddress = dBleDevice.getAddress();
			}
			runOnUiThread(new Runnable() {
				@Override
				public void run() {
					addDeviceFragment(device.getAddress(), device);
					initDialog();
				}
			});
			addressView.add(device.getAddress());
		}
		Toast.makeText(this, "开始连接设备..", 3000).show();
		per_viewPager.setCurrentItem(addressView.size());
		// updateList(address,"开始连接设备..");
		new Thread(new Runnable() {
			@Override
			public void run() {
				connect(address); // 不要同时连几个蓝牙设备，要等连接成功后再连接下一个
			}
		}).start();

	}

	/**
	 * 连接设备
	 * */
	protected void connect(String address) {
		if (scaning)
			stopScan(); // 先判断是否正在扫描
		dBleDevice = mBLEDevices.get(address);
		dBleDevice.connect();
	}

	private void addDeviceFragment(String st, BLEDevice device) {
		DeviceFragment mFragment = new DeviceFragment(device);
		mFragments.add(mFragment);
		perAdater.setListViews(mFragments, st);
		perAdater.notifyDataSetChanged();

	}

	private AlertDialog scanDialog;

	private void initScanDialog() {
		AlertDialog.Builder scanBuilder = new AlertDialog.Builder(this);
		scanBuilder.setTitle("扫描设备");
		View view = getLayoutInflater().inflate(R.layout.device_list, null);
		mBLEList = new ArrayList<>();
		lv = (ListView) view.findViewById(R.id.device_list);
		tv_hint = (TextView) view.findViewById(R.id.tv);
		pbar = (ProgressBar) view.findViewById(R.id.pbar);
		pbar.setVisibility(View.VISIBLE);
		mViewAdapter = new ShowBLEAdapter(this, mBLEList);
		lv.setAdapter(mViewAdapter);
		scanBuilder.setView(view);
		scanBuilder.setPositiveButton("重试",
				new DialogInterface.OnClickListener() {
					// 重试按钮
					@Override
					public void onClick(DialogInterface dialog, int which) {
						try {// 下面三句控制弹框的关闭
								// stopScan();
							Field field = dialog.getClass().getSuperclass()
									.getDeclaredField("mShowing");

							field.setAccessible(true);

							field.set(dialog, false);// true表示要关闭

						} catch (Exception e) {

							e.printStackTrace();

						}
						// reScanLeDevice(true);
						// actionAlertDialog();
						// lv.setVisibility(View.GONE);
						tv_hint.setVisibility(View.GONE);
						scanLeDevice();
						// scanDialog.show();
						pbar.setVisibility(View.VISIBLE);
					}
				});
		scanBuilder.setNegativeButton("取消",
				new DialogInterface.OnClickListener() {
					@Override
					public void onClick(DialogInterface dialog, int which) {
						// 取消查找设备的操作
						stopScan();
						System.out.println("取消查找");
						try {// 下面三句控制弹框的关闭

							Field field = dialog.getClass().getSuperclass()
									.getDeclaredField("mShowing");
							field.setAccessible(true);
							field.set(dialog, true);// true表示要关闭
						} catch (Exception e) {
							e.printStackTrace();
						}
						scanDialog.cancel();
						// scanDialog.dismiss();
					}
				});

		scanDialog = scanBuilder.create();
		lv.setOnItemClickListener(new AdapterView.OnItemClickListener() {
			@Override
			public void onItemClick(AdapterView<?> parent, View view,
					int position, long id) {
				stopScan();
				try {// 下面三句控制弹框的关闭
					Field field = scanDialog.getClass().getSuperclass()
							.getDeclaredField("mShowing");
					field.setAccessible(true);
					field.set(scanDialog, true);// true表示要关闭
				} catch (Exception e) {
					e.printStackTrace();
				}
				BLEDevice device = mBLEList.get(position);
				addDevice(device);
				scanDialog.dismiss();
				scanDialog.cancel();

			}
		});
	}

	private AlertDialog settingDialog;

	private void initSettingDialog() {
		AlertDialog.Builder builder = new AlertDialog.Builder(this);
		builder.setTitle("设置相关命令");
		final String[] commants = { "时间设置", "闹钟设置", "获取设备闹钟列表请求", "计步目标设定",
				"用户信息设置命令", "防丢设置振动次数:0", "久坐提醒设置-30分钟间隔5分钟", "出厂设置", "名字设置",
				"设置图片1组", "清空图片0组", "设置图片文字1组", "清空图片文字0组", "设置图片0组",
				"设置图片文字0组", "设置图片2组", "设置图片3组", "设置图片4组", "设置图片文字2组",
				"设置图片文字3组", "设置图片文字4组", "防丢设置振动次数:1", "防丢设置振动次数:3", "定时心率测量设置(*) ",
				"抬手亮屏设置(*)-打开", "抬手亮屏设置(*)-关闭", "防丢设置振动次数:7", "防丢设置振动次数:4", "防丢设置振动次数:5", "防丢设置振动次数:6" ,
		        "开机图片设置","功率设置","设备名设置"	,"广播设置"
		};
		builder.setItems(commants, new DialogInterface.OnClickListener() {
			@Override
			public void onClick(DialogInterface dialog, int which) {
				System.out.println("dBleDevice:" + dBleDevice.getAddress());
				if (dBleDevice == null) {
				}
				switch (which) {
				case 0:
					byte[] time = Utils.nowTimeToBytes();
					updateList(dAddress, "cmd:0x01," + commants[0] + " :"
							+ Arrays.toString(Utils.byteTo16String(time)));
					write(dAddress, time.length, 0x01, time);
					break;
				case 1:
					byte[] result = new byte[15];
					byte[] alarmToBytes1 = Utils.alarmToBytes(2017, 1, 1, 1, 1,
							1, 1, 1);
					byte[] alarmToBytes2 = Utils.alarmToBytes(2017, 2, 2, 2, 2,
							2, 127, 1);
					byte[] alarmToBytes3 = Utils.alarmToBytes(2017, 3, 3, 3, 3,
							3, 127, 1);
					System.arraycopy(alarmToBytes1, 0, result, 0,
							alarmToBytes1.length);
					System.arraycopy(alarmToBytes2, 0, result, 5,
							alarmToBytes2.length);
					System.arraycopy(alarmToBytes3, 0, result, 10,
							alarmToBytes3.length);
					updateList(dAddress, "cmd:0x02," + commants[1] + " :"
							+ Arrays.toString(Utils.byteTo16String(result)));
					write(dAddress, result.length, 0x02, result);
					break;

				case 2:
					byte[] alar = { 0x01 };
					updateList(dAddress, "cmd:0x03," + commants[2] + " :"
							+ Arrays.toString(Utils.byteTo16String(alar)));
					write(dAddress, alar.length, 0x03, alar);
					break;

				case 3:
					byte[] b = Utils.intToByteArray(5000);
					updateList(dAddress, "cmd:0x04," + commants[3] + " :"
							+ Arrays.toString(Utils.byteTo16String(b)));
					write(dAddress, b.length, 0x04, b);
					break;

				case 4:
					byte[] user = Utils.userToByte(1, 20, 180, 60);
					updateList(dAddress, "cmd:0x05," + commants[4] + " :"
							+ Arrays.toString(Utils.byteTo16String(user)));
					write(dAddress, user.length, 0x05, user);
					break;
				case 5:  //"防丢设置振动次数:0"
					int set0 = 0; //次数
					int b0 = 1; //报警等级
					byte[] d = new byte[4];
					d[0] = (byte) (((set0<<2)&0xff)| b0) ;
					updateList(dAddress, "cmd:0x06," + commants[5] + " :"
							+ Arrays.toString(Utils.byteTo16String(d)));
					write(dAddress, d.length, 0x06, d);
					break;
				case 6:
					int open = 1;
					int time1 = 30;
					int interval = 5;

					byte[] lgSit = Utils.longSitByte(open, time1, interval);
					updateList(dAddress, "cmd:0x07," + commants[6] + " :"
							+ Arrays.toString(Utils.byteTo16String(lgSit)));
					write(dAddress, lgSit.length, 0x07, lgSit);
					break;
				case 7:
					byte[] r = { 0x00 };
					updateList(dAddress, "cmd:0x09," + commants[7] + " :"
							+ Arrays.toString(Utils.byteTo16String(r)));
					write(dAddress, r.length, 0x09, r);
					break;
				case 8:
					// 云(0) 石(1) 智(2) 能(3)
					byte[] oneFonts = { 0x40, 0x40, 0x44, 0x44, 0x44, 0x44,
							(byte) 0xC4, (byte) 0xC4, 0x44, 0x44, 0x46, 0x46,
							0x64, 0x60, 0x40, 0x00, 0x00, 0x20, 0x70, 0x38,
							0x2C, 0x27, 0x23, 0x31, 0x10, 0x12, 0x14, 0x18,
							0x70, 0x20, 0x00, 0x00 };
					byte[] twoFonts = { 0x02, 0x02, 0x02, 0x02, (byte) 0x82,
							(byte) 0xF2, 0x4E, 0x42, 0x42, 0x42, 0x42, 0x42,
							(byte) 0xC2, 0x02, 0x02, 0x00, 0x10, 0x08, 0x04,
							0x02, 0x01, 0x7F, 0x20, 0x20, 0x20, 0x20, 0x20,
							0x20, 0x7F, 0x00, 0x00, 0x00 };
					byte[] threeFonts = { 0x10, 0x14, 0x13, (byte) 0x92, 0x7E,
							0x32, 0x52, (byte) 0x92, 0x00, 0x7C, 0x44, 0x44,
							0x44, 0x7C, 0x00, 0x00, 0x00, 0x01, 0x01, 0x00,
							(byte) 0xFF, 0x49, 0x49, 0x49, 0x49, 0x49, 0x49,
							(byte) 0xFF, 0x00, 0x00, 0x00, 0x00 };
					byte[] fourFonts = { 0x10, (byte) 0xB8, (byte) 0x97,
							(byte) 0x92, (byte) 0x90, (byte) 0x94, (byte) 0xB8,
							0x10, 0x00, 0x7F, 0x48, 0x48, 0x44, 0x74, 0x20,
							0x00, 0x00, (byte) 0xFF, 0x0A, 0x0A, 0x4A,
							(byte) 0x8A, 0x7F, 0x00, 0x00, 0x3F, 0x44, 0x44,
							0x42, 0x72, 0x20, 0x00 };
					updateList(dAddress, "cmd:0x0A," + commants[8] + " :"
							+ "云石智能");
					writeName(dAddress, 0x0A, oneFonts, twoFonts, threeFonts,
							fourFonts);
					break;
				case 9: // 图片设置
					int index1 = 1; // 组编号
					byte[] data = new byte[128 * 5];
					System.arraycopy(Utils.intArraysTobyteArrays(Image.Home),
							0, data, 128 * 0, 128);
					System.arraycopy(Utils.intArraysTobyteArrays(Image.Party),
							0, data, 128 * 1, 128);
					System.arraycopy(Utils.intArraysTobyteArrays(Image.BBQ), 0,
							data, 128 * 2, 128);
					System.arraycopy(
							Utils.intArraysTobyteArrays(Image.Reading), 0,
							data, 128 * 3, 128);
					System.arraycopy(
							Utils.intArraysTobyteArrays(Image.Watch_TV), 0,
							data, 128 * 4, 128);
					updateList(dAddress, "cmd:0x0B," + commants[9] + " :"
							+ index1);
					writeImage(dAddress, 0x0B, index1, data);

					break;
				case 10: // 清空图片组
					byte[] index = { 0x00 }; // 0x00~0x09
					updateList(dAddress, "cmd:0x0C," + commants[10] + " :"
							+ Arrays.toString(Utils.byteTo16String(index)));
					write(dAddress, index.length, 0x0C, index);
					break;
				case 11: // 图片文字设置
					int n1 = 1; // 那一组图片的文字 0~9
					String[] image_name = { "Home", "Party", "BBQ", "Reading",
							"Watch TV" };
					updateList(dAddress, "cmd:0x0D," + commants[11] + " :" + n1
							+ ",name = " + Arrays.toString(image_name));
					writeImageName(dAddress, 0x0D, n1, image_name);
					break;
				case 12: // 清空图片文字组
					byte[] indexNameClear = { 0x00 };
					updateList(
							dAddress,
							"cmd:0x0E,"
									+ commants[12]
									+ " :"
									+ Arrays.toString(Utils
											.byteTo16String(indexNameClear)));
					write(dAddress, indexNameClear.length, 0x0E, indexNameClear);
					break;
				case 13: // 图片0组
					byte[] data13 = new byte[128 * 8];
					System.arraycopy(Utils.intArraysTobyteArrays(Image.Self),
							0, data13, 128 * 0, 128);
					System.arraycopy(Utils.intArraysTobyteArrays(Image.Pet), 0,
							data13, 128 * 1, 128);
					System.arraycopy(Utils.intArraysTobyteArrays(Image.Kids),
							0, data13, 128 * 2, 128);
					System.arraycopy(Utils.intArraysTobyteArrays(Image.Pizza),
							0, data13, 128 * 3, 128);
					System.arraycopy(Utils.intArraysTobyteArrays(Image.Music),
							0, data13, 128 * 4, 128);
					System.arraycopy(Utils.intArraysTobyteArrays(Image.Really),
							0, data13, 128 * 5, 128);
					System.arraycopy(
							Utils.intArraysTobyteArrays(Image.Whaaaaat), 0,
							data13, 128 * 6, 128);
					System.arraycopy(Utils.intArraysTobyteArrays(Image.WTF), 0,
							data13, 128 * 7, 128);
					int index0 = 0;
					updateList(dAddress, "cmd:0x0B," + commants[13] + " :"
							+ index0);
					writeImage(dAddress, 0x0B, index0, data13);
					break;
				case 14: // 图片文字设置
					int nn = 0; // 那一组图片的文字 0~9
					String[] image_name_0 = { "Self", "Pet", "Kids", "Pizza",
							"Music", "Really", "Whaaaaat", "WTF" };
					updateList(dAddress, "cmd:0x0D," + commants[14] + " :" + nn
							+ ",name = " + Arrays.toString(image_name_0));
					writeImageName(dAddress, 0x0D, nn, image_name_0);
					break;
				case 15: // 设置图片2组 Love
					int imageIndex2 = 2;
					byte[] image_byte2 = new byte[128 * 6];
					System.arraycopy(Utils.intArraysTobyteArrays(Image.Love),
							0, image_byte2, 128 * 0, 128);
					System.arraycopy(
							Utils.intArraysTobyteArrays(Image.Broken_Heart), 0,
							image_byte2, 128 * 1, 128);
					System.arraycopy(
							Utils.intArraysTobyteArrays(Image.Fine_Dining), 0,
							image_byte2, 128 * 2, 128);
					System.arraycopy(
							Utils.intArraysTobyteArrays(Image.Romantic), 0,
							image_byte2, 128 * 3, 128);
					System.arraycopy(Utils.intArraysTobyteArrays(Image.Sex), 0,
							image_byte2, 128 * 4, 128);
					System.arraycopy(
							Utils.intArraysTobyteArrays(Image.Soaking), 0,
							image_byte2, 128 * 5, 128);

					updateList(dAddress, "cmd:0x0B," + commants[15] + " :"
							+ imageIndex2);
					writeImage(dAddress, 0x0B, imageIndex2, image_byte2);

					break;
				case 16: // 设置图片3组 Work
					int imageIndex3 = 3;
					byte[] image_byte3 = new byte[128 * 5];
					System.arraycopy(Utils.intArraysTobyteArrays(Image.Work),
							0, image_byte3, 128 * 0, 128);
					System.arraycopy(
							Utils.intArraysTobyteArrays(Image.Phone_Call), 0,
							image_byte3, 128 * 1, 128);
					System.arraycopy(Utils.intArraysTobyteArrays(Image.Email),
							0, image_byte3, 128 * 2, 128);
					System.arraycopy(
							Utils.intArraysTobyteArrays(Image.Meeting), 0,
							image_byte3, 128 * 3, 128);
					System.arraycopy(
							Utils.intArraysTobyteArrays(Image.Daydream), 0,
							image_byte3, 128 * 4, 128);

					updateList(dAddress, "cmd:0x0B," + commants[16] + " :"
							+ imageIndex3);
					writeImage(dAddress, 0x0B, imageIndex3, image_byte3);
					break;
				case 17: // 设置图片4组 Workshop
					int imageIndex4 = 4;
					byte[] image_byte4 = new byte[128 * 4];
					System.arraycopy(
							Utils.intArraysTobyteArrays(Image.Workshop), 0,
							image_byte4, 128 * 0, 128);
					System.arraycopy(
							Utils.intArraysTobyteArrays(Image.Sculpture), 0,
							image_byte4, 128 * 1, 128);
					System.arraycopy(
							Utils.intArraysTobyteArrays(Image.Painting), 0,
							image_byte4, 128 * 2, 128);
					System.arraycopy(Utils.intArraysTobyteArrays(Image.Craft),
							0, image_byte4, 128 * 3, 128);

					updateList(dAddress, "cmd:0x0B," + commants[17] + " :"
							+ imageIndex4);
					writeImage(dAddress, 0x0B, imageIndex4, image_byte4);
					break;
				case 18: // 设置图片文字2组
					int nameIndex2 = 2; // 那一组图片的文字 0~9
					String[] image_name_2 = { "Love", "Broken", "Fine",
							"Romantic", "Sex", "Soaking" };
					updateList(
							dAddress,
							"cmd:0x0D," + commants[18] + " :" + nameIndex2
									+ ",name = "
									+ Arrays.toString(image_name_2));
					writeImageName(dAddress, 0x0D, nameIndex2, image_name_2);
					break;
				case 19: // 设置图片文字3组
					int nameIndex3 = 3; // 那一组图片的文字 0~9
					String[] image_name_3 = { "Work", "PhoneCal", "Email",
							"Meeting", "Daydream" };
					updateList(
							dAddress,
							"cmd:0x0D," + commants[19] + " :" + nameIndex3
									+ ",name = "
									+ Arrays.toString(image_name_3));
					writeImageName(dAddress, 0x0D, nameIndex3, image_name_3);
					break;
				case 20: // 设置图片文字4组
					int nameIndex4 = 4; // 那一组图片的文字 0~9
					String[] image_name_4 = { "Workshop", "Sculptur",
							"Painting", "Craft" };
					updateList(
							dAddress,
							"cmd:0x0D," + commants[20] + " :" + nameIndex4
									+ ",name = "
									+ Arrays.toString(image_name_4));
					writeImageName(dAddress, 0x0D, nameIndex4, image_name_4);
					break;
				case 21: // "防丢设置振动次数:1"
					 
					int set1 = 1; //次数
					int b1 = 1; //报警等级
					byte[] d1 = new byte[4];
					d1[0] = (byte) (((set1<<2)&0xff)| b1) ;
					updateList(dAddress, "cmd:0x06," + commants[21] + " :"
							+ Arrays.toString(Utils.byteTo16String(d1)));
					write(dAddress, d1.length, 0x06, d1);
					break;
				case 22: //"防丢设置振动次数:3"
					int set3 = 3; //次数
					int b3 = 1; //报警等级
					byte[] d3 = new byte[4];
					d3[0] = (byte) (((set3<<2)&0xff)| b3) ;
					updateList(dAddress, "cmd:0x06," + commants[22] + " :"
							+ Arrays.toString(Utils.byteTo16String(d3)));
					write(dAddress, d3.length, 0x06, d3);
					break;
				case 23: // 定时心率测量
					// 定时设置的值 0或者 15，30，60。0 代表定时测量心率关闭，15 代表每 15 分钟定时测量一次心率，30
					// 代表每隔 30 分钟定时测量一次性率，60 代表每隔 60 分钟定时测量一次心率。
					heartDialog.show();
					break;
				case 24: // 抬手亮屏设置 , 0x00 代表关闭， 0x01 代表打开
					byte[] setx = { 0x01 };
					updateList(dAddress, "cmd:0x0f," + commants[24] + " :"
							+ Arrays.toString(Utils.byteTo16String(setx)));
					write(dAddress, setx.length, 0x0f, setx);
					break;
				case 25: // 抬手亮屏设置 , 0x00 代表关闭， 0x01 代表打开
					byte[] set2 = { 0x00 };
					updateList(dAddress, "cmd:0x0f," + commants[25] + " :"
							+ Arrays.toString(Utils.byteTo16String(set2)));
					write(dAddress, set2.length, 0x0f, set2);
					break;
				case 26: // "防丢设置振动次数:7"
					int set7 = 7; //次数
					int b7 = 1; //报警等级
					byte[] d7 = new byte[4];
					d7[0] = (byte) (((set7<<2)&0xff)| b7) ;
					
					updateList(dAddress, "cmd:0x06," + commants[26] + " :"
							+ Arrays.toString(Utils.byteTo16String(d7)));
					write(dAddress, d7.length, 0x06, d7);
					break;
				case 27: // "防丢设置振动次数:4"
					int set4 = 4; //次数
					int b4 = 1; //报警等级
					byte[] d4 = new byte[4];
					d4[0] = (byte) (((set4<<2)&0xff)| b4) ;
					
					updateList(dAddress, "cmd:0x06," + commants[27] + " :"
							+ Arrays.toString(Utils.byteTo16String(d4)));
					write(dAddress, d4.length, 0x06, d4);
					break;
				case 28: // "防丢设置振动次数:5"
					int set5 = 5; //次数
					int b5 = 1; //报警等级
					byte[] d5 = new byte[4];
					d5[0] = (byte) (((set5<<2)&0xff)| b5) ;
					
					updateList(dAddress, "cmd:0x06," + commants[28] + " :"
							+ Arrays.toString(Utils.byteTo16String(d5)));
					write(dAddress, d5.length, 0x06, d5);
					break;
				case 29: // "防丢设置振动次数:6"
					int set6 = 6; //次数
					int b6 = 1; //报警等级
					byte[] d6 = new byte[4];
					d6[0] = (byte) (((set6<<2)&0xff)| b6) ;
					updateList(dAddress, "cmd:0x06," + commants[26] + " :"
							+ Arrays.toString(Utils.byteTo16String(d6)));
					write(dAddress, d6.length, 0x06, d6);
					break;
				case 30: //	"开机图片设置"
//					11  开机图片设置(*)  0～255  (#)  16
					byte[] imageByte = Utils.intArraysTobyteArrays(Image.BootImages);
					updateList(dAddress, "cmd:0x0B," + commants[30]+",length="+imageByte.length);
					writeBootImages(dAddress,0x0B,imageByte);
					break;
				case 31: //	"功率设置"
					String subtitle=" 范围从-128 到正 127,但是实际能设置的值根据芯片不同有所差异，" +
							"B2 类型手环只支持-40, -30, -20, -16,-12, -8, -4, 0, +4 这几组数字";
					settingDialog(0x0C,commants[31],subtitle);
					break;
				case 32: //	"设备名设置"	
					String subtitle2 = "默认是 B2，长度不超过 2 个字节";
					settingDialog(0x0D, commants[32],subtitle2);
					break;
				case 33: //	"广播设置"	
					String subtitle3 = "设置范围为 32 到 16384，" +
							"真正的时间要用设置的间隔×0.625 才可以达到，" +
							"比如设置成 8000，实际代表 5000 毫秒（8000×0.625）发射一次广播。";
					settingDialog(0x0E, commants[33],subtitle3);
					break;
				}
			}
		});

		settingDialog = builder.create();
	}
	private void settingDialog(final int cmd ,final String title,String subtitle){
		
		AlertDialog.Builder builder = new AlertDialog.Builder(this);
		View view = getLayoutInflater().inflate(R.layout.ed_layout, null);
		final EditText editText = (EditText)view.findViewById(R.id.editText);
		TextView subtitleText = (TextView) view.findViewById(R.id.subtitle_text);
		subtitleText.setText(subtitle);
		builder.setTitle(title);
		builder.setView(view);
		builder.setPositiveButton("确认", new DialogInterface.OnClickListener(){
			public void onClick(DialogInterface dialog, int whichButton) {
				String s = editText.getText().toString();
				int a=0;
				if("".equals(s)){
					return;
				}
				L.i(title+":----------"+s+" --"+cmd);
				switch (cmd) {
				case 0x0C://	"功率设置"
					a = Integer.parseInt(s);
					byte[] dd =  {(byte) a};
					updateList(dAddress, "cmd:0x0C, "+title+":"+a+" , " +Arrays.toString(Utils.byteTo16String(dd)) );
					write(dAddress, dd.length, cmd, dd);
					break;
				case 0x0D://	"设备名设置"	
					byte [] t = s.getBytes();
					updateList(dAddress, "cmd:0x0D, "+title+":"+s+" , " +Arrays.toString(Utils.byteTo16String(t)) );
					write(dAddress, t.length, cmd, t);
					break;
				case 0x0E://	"广播设置"	
					a = Integer.parseInt(s);
					float xx = a*0.625f;
					byte[] gb =Utils.intToByteArray(a);
					updateList(dAddress, "cmd:0x0E, "+title+"毫秒:"+a+"*0.625 ="+xx+ " , " +Arrays.toString(Utils.byteTo16String(gb)) );
					write(dAddress, gb.length, cmd, gb);
					break;
				}
			}
		});
		builder.setNegativeButton("取消", new DialogInterface.OnClickListener() {
			public void onClick(DialogInterface dialog, int whichButton) {
				
			}
		});
		builder.show();
	}
	
	
	
	//定时测量心率dialog
	private AlertDialog heartDialog;
    private void initHeartDialog() {
		
		AlertDialog.Builder builder = new AlertDialog.Builder(this);
		View view = getLayoutInflater().inflate(R.layout.ed_layout, null);
		final EditText editText = (EditText)view.findViewById(R.id.editText);
		builder.setTitle("请输入0~60分钟数");
		builder.setView(view);
		builder.setPositiveButton("确认", new DialogInterface.OnClickListener(){
			public void onClick(DialogInterface dialog, int whichButton) {
				String s = editText.getText().toString();
				int a = Integer.parseInt(s);
				L.i("定时测量心率:----------"+s+" --" +a);
				
				byte [] data ={(byte) a};
				updateList(dAddress, "cmd:0x08, 每隔 "+a+" 分钟定时测量一次心率, " +Arrays.toString(Utils.byteTo16String(data)) );
				write(dAddress, data.length, 0x08, data);
			}
		});
		builder.setNegativeButton("取消", new DialogInterface.OnClickListener() {
			public void onClick(DialogInterface dialog, int whichButton) {
				
			}
		});
		heartDialog = builder.create();
	}
	

	private void writeImageName(String address, int cmd, int number,
			String[] name) {
		// number 设置的那一组
		// 一张最多可以设置八张图片的名字
		// 每张图片的文字可以是 8 个英文或者 4 个中文 （中文后续支持），不能超过8个字节
		BLEDevice bleDevice = mBLEDevices.get(address);
		bleDevice.writeImageName(cmd, number, name);
	}

	private void writeName(String address, int cmd, byte[] oneFonts,
			byte[] twoFonts, byte[] threeFonts, byte[] fourFonts) {
		BLEDevice bleDevice = mBLEDevices.get(address);
		bleDevice.wirteUserName(cmd, oneFonts, twoFonts, threeFonts, fourFonts);
	}

	/**
	 * 
	 * @param address
	 * @param cmd
	 * @param index
	 *            发送那一组图片
	 */
	private void writeImage(String address, int cmd, int index, byte[] data) {
		// int n = 8; //要发多少张图片 1=< n <= 8;
		// byte[] data = new byte [128*n];
		// for(int i =0;i<n;i++){
		// System.arraycopy(Image,0,data,128*i,Image.length);
		// }
		BLEDevice bleDevice = mBLEDevices.get(address);
		bleDevice.writeImage(cmd, index, data); // 发送第一组图片
	}
	/**
	 * 发送开机图片
	 */
    private void writeBootImages(String address,int cmd,byte[] data){
    	BLEDevice bleDevice = mBLEDevices.get(address);
		bleDevice.writeBootImages(cmd, data);
    }
	private void write(String address, int length, int cmd, byte[] data) {
		BLEDevice bleDevice = mBLEDevices.get(address);
		bleDevice.write(length, cmd, data);
	}

	private AlertDialog messageDialog;

	private void initMessageDialog() {
		AlertDialog.Builder builder = new AlertDialog.Builder(this);
		builder.setTitle("消息相关命令");
		final String[] commants = { "手机请求设备报警", "来电提醒", "来电已接听", "来电已拒接",
				"短信提醒", "自定义短消息" };

		builder.setItems(commants, new DialogInterface.OnClickListener() {
			@Override
			public void onClick(DialogInterface dialog, int which) {
				switch (which) {
				case 0:
					byte[] a = { 0x02 };
					updateList(dAddress, "cmd:0x11," + commants[0] + " :"
							+ Arrays.toString(Utils.byteTo16String(a)));
					write(dAddress, a.length, 0x11, a);
					break;

				case 1:
					String str = "+12345678910";
					byte[] st = Utils.strToByteArray(str);
					updateList(dAddress, "cmd:0x14," + commants[1] + " :" + str);
					write(dAddress, st.length, 0x14, st);
					break;
				case 2:
					byte[] s = { 0x00 };
					updateList(dAddress, "cmd:0x15," + commants[2] + " :"
							+ Arrays.toString(Utils.byteTo16String(s)));
					write(dAddress, s.length, 0x15, s);
					break;

				case 3:
					byte[] j = { 0x00 };
					updateList(dAddress, "cmd:0x16," + commants[3] + " :"
							+ Arrays.toString(Utils.byteTo16String(j)));
					write(dAddress, j.length, 0x16, j);
					break;
				case 4:
					String d = "+12345678910";
					updateList(dAddress, "cmd:0x17," + commants[4] + " :" + d);
					byte[] dx = Utils.strToByteArray(d);
					write(dAddress, dx.length, 0x17, dx);
					break;
				case 5:
					
					textDialog.show();
					break;

				}
			}
		});
		messageDialog = builder.create();
	}

	private AlertDialog textDialog;

	private void initTextDialog() {
		
		AlertDialog.Builder builder = new AlertDialog.Builder(this);
		View view = getLayoutInflater().inflate(R.layout.ed_layout, null);
		final EditText editText = (EditText)view.findViewById(R.id.editText);
		builder.setTitle("请输入不超过16个字节的内容");
		builder.setView(view);
		builder.setPositiveButton("确认", new DialogInterface.OnClickListener(){
			public void onClick(DialogInterface dialog, int whichButton) {
				String s = editText.getText().toString();
				L.i("string:----------"+s+"--" );
				L.i("unicode:----------"+Utils.string2Unicode(s)+"--");
				try {
//					byte [] t = s.getBytes("utf-16"); //因为用utf-16 和 Unicode 编码差不多，所以用两个都可以
					byte [] t = s.getBytes("Unicode");
					updateList(dAddress, "cmd:0x19, 发送内容：" + s+ "；  Unicode编码 :" + Utils.string2Unicode(s) + " , byte[] = " + 
							Arrays.toString(Utils.byteTo16String(t)));
					//要去掉Unicode标识头在发送
					byte [] data = new byte[16]; //不能超过16个字节
					System.arraycopy(t, 2,data, 0, t.length-2);
					updateList(dAddress, "cmd:0x19, 去掉Unicode编码标识头后发送的内容 ：" +Arrays.toString(Utils.byteTo16String(data)) );
					write(dAddress, data.length, 0x19, data);
					
				} catch (UnsupportedEncodingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		});
		builder.setNegativeButton("取消", new DialogInterface.OnClickListener() {
			public void onClick(DialogInterface dialog, int whichButton) {
				
			}
		});
		textDialog = builder.create();
	}

	private AlertDialog securityDialog;

	private void initSecurityDialog() {
		// 因为直接把Mac地址转换成byte[]之后的长度是 17 会超出长度，所以要去掉“ ：”符号，他的长度变成
		// 12,发送的时候要发的长度是16。
		final byte[] bluAddr = BluetoothAdapter.getDefaultAdapter()
				.getAddress().replace(":", "").getBytes();

		AlertDialog.Builder builder = new AlertDialog.Builder(this);
		builder.setTitle("安全相关命令");
		final String[] commants = { "手机请求删除绑定(默认)", "超级登录(超级登录)", "用户登录请求(默认)",
				"手机请求蓝牙设备MAC地址", "手机请求蓝牙设备E号", "手机请求绑定(默认)", "请求获得设备特性", "请求断开","手机请求绑定(自定义)","用户登录请求(自定义)","手机请求删除绑定(自定义)" };
		builder.setItems(commants, new DialogInterface.OnClickListener() {
			@Override
			public void onClick(DialogInterface dialog, int which) {
				switch (which) {
				case 0:
					updateList(dAddress, "cmd:0x22," + commants[0] + " :"
							+ Arrays.toString(Utils.byteTo16String(bluAddr)));
					write(dAddress, 16, 0x22, bluAddr);
					break;

				case 1:
					byte[] SUPER_BOUND_DATA = { 0x01, 0x23, 0x45, 0X67,
							(byte) 0x89, (byte) 0xAB, (byte) 0xCD, (byte) 0xEF,
							(byte) 0xFE, (byte) 0xDC, (byte) 0xBA, (byte) 0x98,
							0x76, 0x54, 0x32, 0x10 };
					updateList(
							dAddress,
							"cmd:0x24,"
									+ commants[1]
									+ " :"
									+ Arrays.toString(Utils
											.byteTo16String(SUPER_BOUND_DATA)));
					write(dAddress, SUPER_BOUND_DATA.length, 0x24,
							SUPER_BOUND_DATA);
					break;

				case 2:
					updateList(dAddress, "cmd:0x23," + commants[2] + " :"
							+ Arrays.toString(Utils.byteTo16String(bluAddr)));
					write(dAddress, 16, 0x23, bluAddr);
					break;

				case 3:
					byte[] d = { 0x00 };
					updateList(dAddress, "cmd:0x26," + commants[3] + " :"
							+ Arrays.toString(d));
					write(dAddress, 1, 0x26, d);
					break;

				case 4:
					byte[] e = { 0x00 };
					updateList(dAddress, "cmd:0x25," + commants[4] + " :"
							+ Arrays.toString(e));
					write(dAddress, 1, 0x25, e);
					break;
				case 5:
					updateList(dAddress, "cmd:0x21," + commants[5] + " :"
							+ Arrays.toString(Utils.byteTo16String(bluAddr)));
					write(dAddress, 16, 0x21, bluAddr);
					break;
				case 6:
					byte[] t = { 0x00 };
					updateList(dAddress, "cmd:0x28," + commants[6] + " :"
							+ Arrays.toString(t));
					write(dAddress, t.length, 0x28, t);
					break;
				case 7:
					updateList(dAddress, "cmd:0x27," + commants[7]);
					write(dAddress, 16, 0x27, bluAddr);
					break;
				case 8://"手机请求绑定(自定义)" 
					initbondDialog(0x21);
					bondDialog.show();
					break;
				case 9://"用户登录请求(自定义)".
					initbondDialog(0x23);
					bondDialog.show();
					break;
				case 10://"手机请求删除绑定(自定义)" 
					initbondDialog(0x22);
					bondDialog.show();
					break;

				}
			}
		});
		securityDialog = builder.create();
	}
	private AlertDialog bondDialog;
	private void initbondDialog(final int cmd){
		String title = "";
		if(cmd == 0x21){
			title = "手机请求自定义绑定,输入不超过16个字节";
		}else if(cmd == 0x22){
			title = "手机请求删除自定义绑定,输入自定义绑定内容";
		}else if(cmd == 0x23){
			title = "手机请求自定义登录，输入自定义绑定内容";
		}
		updateList(dAddress,"自定义绑定，删除自定义绑定，自定义登录内容要一样");
		AlertDialog.Builder builder = new AlertDialog.Builder(this);
		View view = getLayoutInflater().inflate(R.layout.ed_layout, null);
		final EditText editText = (EditText)view.findViewById(R.id.editText);
		builder.setTitle(title);
		builder.setView(view);
		builder.setPositiveButton("确认", new DialogInterface.OnClickListener(){
			public void onClick(DialogInterface dialog, int whichButton) {
				String s = editText.getText().toString();
				byte[] data = s.getBytes();
				updateList(dAddress, "cmd:" + Integer.toHexString(cmd)  + ", 输入的内容 :"+ s + " ,"
						+ Arrays.toString(data));
				write(dAddress, 16, cmd, data);
			}
		});
		builder.setNegativeButton("取消", new DialogInterface.OnClickListener() {
			public void onClick(DialogInterface dialog, int whichButton) {
			}
		});
		bondDialog = builder.create();
	}
	

	private AlertDialog sportsDialog;

	private void initSportsDialog() {
		AlertDialog.Builder builder = new AlertDialog.Builder(this);
		builder.setTitle("运动相关命令");
		final String[] commants = { "请求实时运动数据", "请求历史运动数据(这个已经包含有简单的历史睡眠时间了)",
				"请求实时气压数据", "请求挪动历史步数数据指针", "请求最近一天的总睡眠时间", "请求详细历史睡眠时间",
				"请求挪动历史睡眠数据指针", "请求当前位置动作数据", "请求历史位置动作数据  ",
				"请求挪动历史位置动作数据(*)", "关闭实时运动数据同步", "关闭实时气压数据同步" };

		builder.setItems(commants, new DialogInterface.OnClickListener() {
			@Override
			public void onClick(DialogInterface dialog, int which) {
				// System.out.println("dBleDevice:" + dBleDevice.getAddres());
				switch (which) {
				case 0:
					// 0x00 关闭数据实时同步，0x01 打开数据实时同步
					byte[] s = { 0x01 };
					updateList(dAddress, "cmd:0x31," + commants[0] + " :"
							+ Arrays.toString(s));
					write(dAddress, s.length, 0x31, s);
					break;
				case 1:
					byte[] sh = { 0x01 };
					updateList(dAddress, "cmd:0x35," + commants[1] + " :"
							+ Arrays.toString(sh) + ",请等待，历史数据在后台请求");
					write(dAddress, sh.length, 0x35, sh);
					break;
				case 2:
					byte[] qy = { 0x01 };
					updateList(dAddress, "cmd:0x37," + commants[2] + " :"
							+ Arrays.toString(qy));
					write(dAddress, qy.length, 0x37, qy);
					break;
				case 3: // 请求挪动历史步数数据指针

					// 为了避免每次同步时间过长，增加请求挪动历史运动数据指针的命令，APP 传送一个时间点过来
					// 如果发送了一个全 0 的四个数据过来，则代表将指针重置到起始位置。
					byte[] aa = Utils.record_date(2016, 12, 17, 0); // 年，月，日，时
					updateList(dAddress, "cmd:0x32," + commants[3] + " :"
							+ Arrays.toString(Utils.byteTo16String(aa))
							+ "，挪动时间：" + "2016-12-17 00:00");
					write(dAddress, aa.length, 0x32, aa);
					break;
				case 4:
					byte[] sleep = { 0x01 };
					updateList(dAddress, "cmd:0x33," + commants[4] + " :"
							+ Arrays.toString(Utils.byteTo16String(sleep)));
					write(dAddress, sleep.length, 0x33, sleep);
					break;
				case 5:
					byte[] hisSleep = { 0x01 };
					updateList(dAddress, "cmd:0x34," + commants[5] + " :"
							+ Arrays.toString(Utils.byteTo16String(hisSleep))
							+ ",请等待，历史数据在后台请求");
					write(dAddress, hisSleep.length, 0x34, hisSleep);
					break;
				case 6:
					// 请求挪动历史睡眠数据指针
					byte[] sleepzhizhen = Utils.record_date(2016, 12, 17, 0); // 年，月，日，时
					updateList(
							dAddress,
							"cmd:0x39,"
									+ commants[6]
									+ " :"
									+ Arrays.toString(Utils
											.byteTo16String(sleepzhizhen))
									+ "，挪动时间：" + "2016-12-17 00:00");
					write(dAddress, sleepzhizhen.length, 0x39, sleepzhizhen);
					break;
				case 7:
					byte[] locaiton = { 0x01 };
					updateList(dAddress, "cmd:0x3A," + commants[7] + " :"
							+ Arrays.toString(Utils.byteTo16String(locaiton)));
					write(dAddress, locaiton.length, 0x3A, locaiton);
					break;
				case 8:
					byte[] hislocaiton = { 0x01 };
					updateList(
							dAddress,
							"cmd:0x3B,"
									+ commants[8]
									+ " :"
									+ Arrays.toString(Utils
											.byteTo16String(hislocaiton))
									+ ",请等待，历史数据在后台请求");
					write(dAddress, hislocaiton.length, 0x3B, hislocaiton);
					break;
				case 9:
					byte[] locaitonTime = Utils.record_date(2016, 12, 17, 0); // 年，月，日，时
					updateList(
							dAddress,
							"cmd:0x3C,"
									+ commants[9]
									+ " :"
									+ Arrays.toString(Utils
											.byteTo16String(locaitonTime))
									+ "，挪动时间：" + "2016-12-17 00:00");
					write(dAddress, locaitonTime.length, 0x3C, locaitonTime);
					break;
				case 10: // 关闭实时运动数据同步
					// 0x00 关闭数据实时同步，0x01 打开数据实时同步
					byte[] s0 = { 0x00 };
					updateList(dAddress, "cmd:0x31," + commants[10] + " :"
							+ Arrays.toString(s0));
					write(dAddress, s0.length, 0x31, s0);

					break;
				case 11: // 关闭实时气压数据同步

					byte[] qy0 = { 0x00 };
					updateList(dAddress, "cmd:0x37," + commants[11] + " :"
							+ Arrays.toString(qy0));
					write(dAddress, qy0.length, 0x37, qy0);
					break;

				}
			}
		});
		sportsDialog = builder.create();
	}

	private AlertDialog cheersDialog;

	private void initCheersDialog() {
		AlertDialog.Builder builder = new AlertDialog.Builder(this);
		builder.setTitle("止血带及水杯相关命令");
		final String[] commants = { "请求药品剂量数据", "请求删除药品剂量数据", "请求设置药品类型",
				"请求实时水温数据 ", "请求实时水量数据", "请求历史水温数据", "请求历史水量数据", "请求好友列表",
				"水杯参数设置(*)" };
		builder.setItems(commants, new DialogInterface.OnClickListener() {
			@Override
			public void onClick(DialogInterface dialog, int which) {
				switch (which) {
				case 0:
					byte[] zx = { 0x01 };
					updateList(dAddress, "cmd:0x59," + commants[0] + " :"
							+ Arrays.toString(Utils.byteTo16String(zx))
							+ ",请等待，历史数据在后台请求");
					write(dAddress, zx.length, 0x59, zx);
					break;
				case 1:
					// 由于蓝牙硬件的特殊性，需要断开连接才能删除，所以设备在收到 APP 指令后，会
					// 迅速返回一个成功应答，此时 APP 必须主动断开蓝牙连接（Major Command 2, Minor
					// Command 7, 0x27） ，才进行删除工作，由于药品剂量数据总共有 10 个页面，每个页面删
					// 除需要 400ms，APP 在断开连接后，请等待 4 秒以上才开始重新连接。
					byte[] del = { 0x00 };
					updateList(dAddress, "cmd:0x5A," + commants[1] + " :"
							+ Arrays.toString(Utils.byteTo16String(del)));
					write(dAddress, del.length, 0x5A, del);
					break;
				case 2:
					byte[] set = { 0x05 }; // 代表要设置的药品类型，范围是 0～254
					updateList(dAddress, "cmd:0x5B," + commants[2] + " :"
							+ Arrays.toString(set));
					write(dAddress, set.length, 0x5B, set);
					break;
				case 3:
					break;
				case 4:
					break;
				}
			}
		});
		cheersDialog = builder.create();
	}

	private AlertDialog healthDialog;

	private void initHealthDialog() {
		AlertDialog.Builder builder = new AlertDialog.Builder(this);
		builder.setTitle("健康相关命令");
		final String[] commants = { "请求实时心率数据 ", "请求历史心率数据", "请求体温数据",
				"请求历史温度数据", "请求挪动历史心率数据指针", "请求挪动历史体温数据指针", "关闭实时心率数据同步" };
		builder.setItems(commants, new DialogInterface.OnClickListener() {
			@Override
			public void onClick(DialogInterface dialog, int which) {
				System.out.println("dBleDevice:" + dBleDevice.getAddress());
				switch (which) {
				case 0:
					// 0x00 关闭数据实时同步，0x01 打开数据实时同步
					byte[] dx = { 0x01 };
					updateList(dAddress, "cmd:0x41," + commants[0] + " :"
							+ Arrays.toString(dx));
					write(dAddress, dx.length, 0x41, dx);
					break;
				case 1:
					byte[] hh = { 0x01 };
					updateList(dAddress, "cmd:0x43," + commants[1] + " :"
							+ Arrays.toString(hh) + ",请等待，历史数据在后台请求");
					write(dAddress, hh.length, 0x43, hh);
					break;
				case 2:
					byte[] t = { 0x01 };
					updateList(dAddress, "cmd:0x44," + commants[2] + " :"
							+ Arrays.toString(t));
					write(dAddress, t.length, 0x44, t);
					break;
				case 3:
					byte[] th = { 0x01 };
					updateList(dAddress, "cmd:0x46," + commants[3] + " :"
							+ Arrays.toString(th) + ",请等待，历史数据在后台请求");
					write(dAddress, th.length, 0x46, th);
					break;
				case 4:
					// 请求挪动历史心率数据指针
					byte[] ah = Utils.record_date(2016, 12, 17, 0);
					updateList(dAddress, "cmd:0x49," + commants[4] + " :"
							+ "2016-12-17 00:00");
					write(dAddress, ah.length, 0x49, ah);
					break;
				case 5:
					// 请求挪动历史体温数据指针
					byte[] at = Utils.record_date(2016, 12, 17, 0);
					updateList(dAddress, "cmd:0x4A," + commants[5] + " :"
							+ "2016-12-17 00:00");
					write(dAddress, at.length, 0x4A, at);
					break;
				case 6: // 关闭实时心率数据同步
					byte[] dx0 = { 0x00 };
					updateList(dAddress, "cmd:0x41," + commants[6] + " :"
							+ Arrays.toString(dx0));
					write(dAddress, dx0.length, 0x41, dx0);
					break;

				}
			}
		});
		healthDialog = builder.create();
	}

	private AlertDialog pushsettingDialog;

	private void initpushsettingDialog() {
		AlertDialog.Builder builder = new AlertDialog.Builder(this);
		builder.setTitle("推送相关命令");
		final String[] commants = { "推送设置", "定时温度测量设置" };

		builder.setItems(commants, new DialogInterface.OnClickListener() {
			@Override
			public void onClick(DialogInterface dialog, int which) {
				// System.out.println("dBleDevice:" + dBleDevice.getAddres());
				switch (which) {
					case 0:
//						byte[] s = { 0x01 };
//						updateList(dAddress, "cmd:0x61," + commants[0] + " :"
//								+ Arrays.toString(s));
//						write(dAddress, s.length, 0x61, s);
						break;
					case 1:
						byte[] sh = { 0x01 };
						updateList(dAddress, "cmd:0x62," + commants[1] + " :"
								+ Arrays.toString(sh) + ",请等待");
						write(dAddress, sh.length, 0x62, sh);
						break;

				}
			}
		});
		pushsettingDialog = builder.create();
	}
	/***
	 * 接收选择的结果
	 */
	@Override
	protected void onActivityResult(int requestCode, int resultCode, Intent data) {
		// TODO Auto-generated method stub
		super.onActivityResult(requestCode, resultCode, data);
		switch (requestCode) {
		case REQUEST_ENABLE_BLUETOOTH:
			if (resultCode == RESULT_OK) {
				// 刚打开蓝牙实际还不能立马就能用
			} else {
				Toast.makeText(this, "请打开蓝牙", 1000).show();
			}

			break;
		default:
			break;
		}
	}

	@Override
	protected void onResume() {
		super.onResume();
	}

	@Override
	protected void onPause() {
		super.onPause();
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		getMenuInflater().inflate(R.menu.main, menu);
		return true;
	}

	@Override
	public boolean onOptionsItemSelected(MenuItem item) {
		int id = item.getItemId();
		switch (id) {
		case R.id.action_scan:
			itemSacn = item;
			scanDialog.show();
			scanLeDevice();
			break;
		case R.id.action_setting:
			if (dBleDevice != null)
				settingDialog.show();
			break;

		case R.id.action_message:
			if (dBleDevice != null)
				messageDialog.show();
			break;

		case R.id.action_security:
			if (dBleDevice != null)
				securityDialog.show();
			break;

		case R.id.action_sports:
			if (dBleDevice != null)
				sportsDialog.show();
			break;

		case R.id.action_health:
			if (dBleDevice != null)
				healthDialog.show();
			break;

		case R.id.action_cheers:
			if (dBleDevice != null)
				cheersDialog.show();
			break;
		case R.id.action_pushmessage:
			if (dBleDevice != null)
				pushsettingDialog.show();
			break;
		case R.id.action_clear:
			clearList(dAddress);
			break;

		case R.id.action_disconn:
			updateList(dAddress, "断开连接...");
			if (dBleDevice != null)
				dBleDevice.disconnect();
			break;

		case R.id.action_connect:
			updateList(dAddress, "开始连接...");
			if (dBleDevice != null)
				dBleDevice.connect();
			break;
		case R.id.action_rssi:
			updateList(dAddress, "信号强度...");
			if (dBleDevice != null)
				dBleDevice.getRssi();
			break;
		}
		return super.onOptionsItemSelected(item);
	}

	public void setHandler(String address, Handler mHandler) {
		System.out.println("setHandler :" + address);
		if (!mHandlers.containsKey(address)) {
			mHandlers.put(address, mHandler);
		}
	}

	/**
	 * 更新列表打印信息
	 * 
	 * @param address
	 */
	public void updateList(String address, String value) {
		Handler cHandler = mHandlers.get(address);
		Message msg = new Message();
		// msg.obj = address;
		Bundle b = new Bundle();
		b.putString(address, value);
		msg.setData(b);
		msg.what = 3;
		if (cHandler != null)
			cHandler.sendMessage(msg);
		System.out.println("clearList");
	}

	/**
	 * 清除列表信息
	 * 
	 * @param address
	 */
	private void clearList(String address) {
		System.out.println("clearList :" + address);
		Handler cHandler = mHandlers.get(address);
		Message msg = new Message();
		msg.obj = address;
		Bundle b = new Bundle();
		msg.setData(b);
		msg.what = 2;
		if (cHandler != null)
			cHandler.sendMessage(msg);
		System.out.println("clearList");
	}
}