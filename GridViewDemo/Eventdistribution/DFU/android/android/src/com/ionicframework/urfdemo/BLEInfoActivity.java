package com.ionicframework.urfdemo;

import java.io.File;
import java.lang.reflect.Field;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import no.nordicsemi.android.dfu.DfuProgressListener;
import no.nordicsemi.android.dfu.DfuServiceInitiator;
import no.nordicsemi.android.dfu.DfuServiceListenerHelper;

import com.ble.adapter.PerAdapter;
import com.ble.fragment.DeviceFragment;
import com.ble.message.CheersMessageHandler;
import com.ble.message.HealthMessageHandler;
import com.ble.message.PhoneMessageHandler;
import com.ble.message.SecurityMessageHandler;
import com.ble.message.SettingMessage;
import com.ble.message.SportsMessageHandler;
import com.ble.re.data.SetData;
import com.ble.view.CustomViewPager;
import com.megster.cordova.ble.central.LogUpdate;
import com.megster.cordova.ble.central.Peripheral;

import android.annotation.SuppressLint;
import android.app.AlertDialog;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentTabHost;
import android.support.v4.view.PagerTabStrip;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
/**
 * 列表listview的数据是通过 handler传递的；
 * 实时数据是通过接口回调函数传递的，
 * 图表还有点小bug，不影响使用。
 */
public class BLEInfoActivity extends FragmentActivity  {
	private BluetoothManager myBluetoothManager;
	private BluetoothAdapter myBluetoothAdapter;
	
	private PerAdapter perAdater ;
	private PagerTabStrip pagerTabStrip;
	private ArrayList<BluetoothDevice> mBLEList;
	private Button bt_cancel, bt_select_file, bt_upload_file;
	private TextView tv_file_name, tv_file_type, tv_file_size, tv_file_stauts;

	private static final int SELECT_FILE_REQ = 1;
	private String mFilePath;
	private int mFileType;
	private Uri mFileStreamUri;
	private String mAddress, mDeviceName;
	private ListView lv;
	private TextView  tv_hint;
	private ProgressBar pbar;
	private static final int REQUEST_ENABLE_BLUETOOTH = 1001;
	private Handler myHandler;
	private ShowBLEAdapter mViewAdapter;
	MenuItem itemSacn;
	private List<String> addressView ;// 每个设备Key
	private String address; //操作当前的设备
	private CustomViewPager per_viewPager;
	
	
	  Peripheral dPeripheral; 
	/**
	 * 	key is the MAC Address
	 *  多设备
	 *  每一个peripheral实例代表一个设备
	 *  把所有的设备即peripheral实例放到一个集合里面，通过address 来获得对应的设备，做相应的操作
	 *  
	 * */
	Map<String, Peripheral> peripherals = new LinkedHashMap<String, Peripheral>();
	
	/**
	 * 每个设备listview数据传递的handler集合
	 */
	Map<String, Handler> mHandlerLists = new LinkedHashMap<String, Handler>();
	/** Fragment集合   **/
	private List<DeviceFragment> mFragments = new ArrayList<DeviceFragment>();
	@SuppressLint("NewApi") @Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.peripheral_viewpager);
		LogUpdate.infoActivity = this;
		myBluetoothManager = (BluetoothManager) getSystemService(Context.BLUETOOTH_SERVICE);
		myBluetoothAdapter = myBluetoothManager.getAdapter();
		addressView = new ArrayList<String>();
		addressView.clear();
        intiView(); 
        mTabHost = new FragmentTabHost(this);
	}
	private FragmentTabHost mTabHost;
	
	@SuppressWarnings("deprecation")
	private void intiView(){
    	pagerTabStrip = (PagerTabStrip) findViewById(R.id.per_pagertab);
		pagerTabStrip.setTabIndicatorColorResource(android.R.color.holo_blue_light);
    	per_viewPager = (CustomViewPager) findViewById(R.id.per_viewPager);
    	per_viewPager.setOffscreenPageLimit(4);
    	perAdater = new PerAdapter(getSupportFragmentManager(),mFragments);
    	
    	per_viewPager.setAdapter(perAdater);
    	per_viewPager.setOnPageChangeListener(new OnPageChangeListener() {
			@Override
			public void onPageSelected(int arg0) {
				address = addressView.get(arg0);
				System.out.println("onPageSelected:"+arg0 +"/"+address);
				dPeripheral = peripherals.get(address); 
			}
			@Override
			public void onPageScrolled(int arg0, float arg1, int arg2) {
			}
			@Override
			public void onPageScrollStateChanged(int arg0) {
			}
		});
	}
    private void addDeviceFragment(String st,Peripheral per) {
    	DeviceFragment mFragment = new DeviceFragment(per);
    	mFragments.add(mFragment);
    	perAdater.setListViews(mFragments,st);
		perAdater.notifyDataSetChanged();
	}
	@Override
    protected void onStart() {
    	super.onStart();
		myHandler = new Handler();
		/*
		 * 判断蓝牙是否开启
		 */
		if (myBluetoothAdapter.isEnabled()) {
			System.out.println("蓝牙已开启...");
		} else {
			Intent enableIntent = new Intent(
					BluetoothAdapter.ACTION_REQUEST_ENABLE);
			startActivity(enableIntent);
		}
		initScanDialog();
    }
	//开启蓝牙
	public void enableBle() {
		if (!myBluetoothAdapter.enable()) {
			Intent intent = new Intent(BluetoothAdapter.ACTION_REQUEST_ENABLE);
			startActivityForResult(intent, REQUEST_ENABLE_BLUETOOTH);
		}
	}

	SimpleDateFormat format = new SimpleDateFormat("mm-ss");
//    public Handler mHandler ;
	public void setHandler(String key,Handler handler) {
		if(!mHandlerLists.containsKey(key)){
			mHandlerLists.put(key, handler);
		}
	}
	private void clearList(String key){
		Message msg = new Message();
		SetData st= new SetData(); 
		st.setKey(key);
		st.setString("clear list");
		msg.obj = st;
		msg.what = 5;
		Handler cHandler =  mHandlerLists.get(key);
		if(cHandler != null)
			cHandler.sendMessage(msg);
	}
	public void updateList(String key,String value){
		SetData st= new SetData(); 
		st.setKey(key);
		st.setString(value);
		Message msg = new Message();
		msg.obj = st;
		msg.what = 1;
		Handler cHandler =  mHandlerLists.get(key);
		if(cHandler != null)
			cHandler.sendMessage(msg);
	}
	public void updateInfo(final String key, String content,final int value ,final int type) {
		Date date = new Date();
		final String dateStr = format.format(date)+"||"+key+"||"+content;
		runOnUiThread(new Runnable(){
		    @Override
			public void run() {
	            switch (type) {
				case 1:
					updateList(key,dateStr);
					break;
				default:
					break;
				}				
			}
		});
	}
	

	/**
	 * 扫描设备
	 * */
	@SuppressLint("NewApi")
	public void scanLeDevice() {
		itemSacn.setTitle("stop scan");
		if (mBLEList != null) {
			mBLEList.clear();
		}
		if (myBluetoothAdapter != null) {
			myBluetoothAdapter.stopLeScan(myReLeScanCallback); //停止扫描
			myBluetoothAdapter.startLeScan(myReLeScanCallback); //开始扫描，因为扫描会很费电的，所以不要一直开着扫描。
			myHandler.postDelayed(new Runnable() {
				@Override
				public void run() {
					// TODO Auto-generated method stub
					System.out.println("查找5秒后结束……");
//					setView();
					stopScan();
//					Toast.makeText(BLEInfoActivity.this, "查找结束", 500).show();
					itemSacn.setTitle("scan");
					if(mBLEList.size()<=0){
						tv_hint.setText("找不到设备");
						tv_hint.setVisibility(View.VISIBLE);
					}else{
						tv_hint.setVisibility(View.GONE);
					}
					pbar.setVisibility(View.GONE);
				}
			}, 5000);
		}
	}
	/**
	 * 停止扫描
	 * */
	@SuppressLint("NewApi") public void stopScan(){
//		
		if (myBluetoothAdapter != null) {
			myBluetoothAdapter.stopLeScan(myReLeScanCallback); 
		}
	}
   
	/**
	 * 扫描传入的回调
	 * 此次尽量少做复杂的操作，以便尽快的回收资源
	 * */
	@SuppressLint("NewApi") private BluetoothAdapter.LeScanCallback myReLeScanCallback = new BluetoothAdapter.LeScanCallback() {

		@SuppressLint("NewApi") @Override
		public void onLeScan(final BluetoothDevice device, final int rssi, final byte[] scanRecord) {
			// TODO Auto-generated method stub
		   runOnUiThread(new Runnable() {
			public void run() {
				System.out.println("找到了device:"  +device.getName() +" Rssi : " + rssi + ""
						+ "Address : " + device.getAddress());
				String address = device.getAddress();
				if(	!mBLEList.contains(device)){
					mBLEList.add(device);
				}
				lv.setVisibility(View.VISIBLE);
				mViewAdapter.notifyDataSetChanged();
//				pbar.setVisibility(View.GONE);
			}
		   });
		}
	};

	private void initDialog() {
		initSettingDialog();
		initMessageDialog();
		initSecurityDialog();
		initSportsDialog();
		initHealthDialog();
		initCheersDialog();
		initDfuDialog();

	}
	/***
	 * 添加设备
	 */
	String xx;
	private void addDevice(final BluetoothDevice device){
		final String address = device.getAddress();
		System.out.println("device: " +address  +  "/"+ addressView.size());
		byte[] scanRecord = null; //扫描获取的
		int rssi = 0; //扫秒是获取的 信号
		if (!peripherals.containsKey(address)) {
			Peripheral peripheral = new Peripheral(device, rssi, scanRecord);
			peripherals.put(device.getAddress(), peripheral);
			addressView.add(device.getAddress());
			addDeviceFragment(device.getAddress(),peripheral);
			if(addressView.size() == 1){
//				address = addressView.get(0);  //默认操作第一个
				dPeripheral = peripherals.get(address); 
			}
			initDialog();
		}
		new Thread(new Runnable() {
			
			@Override
			public void run() {
				connect(address);
			}
		}).start();
		per_viewPager.setCurrentItem(addressView.size()-1);
	}
	/**
     * 连接设备
     * */
	protected void connect(String address) {
		// TODO Auto-generated method stub
		Peripheral peripheral = peripherals.get(address);
		if(peripheral.isConnected()){
			return;
		}
		peripheral.connect(this);
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
						  try {//下面三句控制弹框的关闭
							  stopScan();
                              Field field = dialog.getClass().getSuperclass().getDeclaredField("mShowing");

                              field.setAccessible(true);

                              field.set(dialog,false);//true表示要关闭

                           } catch (Exception e) {

                              e.printStackTrace();

                           }
						// reScanLeDevice(true);
						// actionAlertDialog();
						// lv.setVisibility(View.GONE);
						 tv_hint.setVisibility(View.GONE);
						 scanLeDevice();
//						 scanDialog.show();
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
						  try {//下面三句控制弹框的关闭

                              Field field = dialog.getClass().getSuperclass().getDeclaredField("mShowing");

                              field.setAccessible(true);

                              field.set(dialog,true);//true表示要关闭

                           } catch (Exception e) {

                              e.printStackTrace();

                           }
						scanDialog.cancel();
//						scanDialog.dismiss();
					}
				});

		scanDialog = scanBuilder.create();
		lv.setOnItemClickListener(new AdapterView.OnItemClickListener() {
			@Override
			public void onItemClick(AdapterView<?> parent, View view,
					int position, long id) {
				stopScan();
				try {//下面三句控制弹框的关闭
		          Field field = scanDialog.getClass().getSuperclass().getDeclaredField("mShowing");
		          field.setAccessible(true);
		          field.set(scanDialog,true);//true表示要关闭
		       } catch (Exception e) {
		          e.printStackTrace();
		       }
				BluetoothDevice device = mBLEList.get(position);
				String address = device.getAddress();
				scanDialog.dismiss();
				scanDialog.cancel();
				addDevice(device);
			
			}
		});
	}
	
	private AlertDialog settingDialog;

	private void initSettingDialog() {
		AlertDialog.Builder builder = new AlertDialog.Builder(this);
		builder.setTitle("设置相关命令");
		String[] commants = { "时间设置", "闹钟设置", "获取设备闹钟列表请求", "计步目标设定",
				"用户信息设置命令", "防丢设置", "久坐提醒设置", "出厂设置" };
		builder.setItems(commants, new DialogInterface.OnClickListener() {
			@Override
			public void onClick(DialogInterface dialog, int which) {
				System.out.println("dPeripheral:"+dPeripheral.getAddres());
				if(dPeripheral ==null ){
			        }
				switch (which) {
				case 0:
					dPeripheral.write(SettingMessage.TYPE,
							SettingMessage.STATE_DEVICE_SET_TIME);
					break;

				case 1:
					dPeripheral.write(SettingMessage.TYPE,
							SettingMessage.STATE_DEVICE_SET_ALARM);
					break;

				case 2:
					dPeripheral.write(SettingMessage.TYPE,
							SettingMessage.STATE_DEVICE_GET_ALARM);
					break;

				case 3:
					dPeripheral.write(SettingMessage.TYPE,
							SettingMessage.STATE_DEVICE_WALK);
					break;

				case 4:
					dPeripheral.write(SettingMessage.TYPE,
							SettingMessage.USER_SET);
					break;
				case 5:
					dPeripheral.write(SettingMessage.TYPE,
							SettingMessage.STATE_DEVICE_LOST);
					break;

				case 6:
					dPeripheral.write(SettingMessage.TYPE,
							SettingMessage.LONG_SIT);
					break;
				case 7:
					dPeripheral.write(SettingMessage.TYPE,
							SettingMessage.FactorySettings);
					break;

				// case 7:
				// mPeripheral.write(SettingMessage.TYPE,
				// SettingMessage.CALL_NOTIFICATION);
				// break;
				//
				//

				}
			}
		});

		settingDialog = builder.create();
	}

	private AlertDialog messageDialog;

	private void initMessageDialog() {
		AlertDialog.Builder builder = new AlertDialog.Builder(this);
		builder.setTitle("消息相关命令");
		String[] commants = { "手机请求设备报警", "来电提醒", "来电已接听", "来电已拒接", };
		
		builder.setItems(commants, new DialogInterface.OnClickListener() {
			@Override
			public void onClick(DialogInterface dialog, int which) {
				switch (which) {
				case 0:
					dPeripheral.write(PhoneMessageHandler.TYPE,
							PhoneMessageHandler.STATE_PHONE_ALERT);
					break;

				case 1:
					dPeripheral.write(PhoneMessageHandler.TYPE,
							PhoneMessageHandler.STATE_DEVICE_CALL_REMIND);
					break;

				case 2:
					dPeripheral.write(PhoneMessageHandler.TYPE,
							PhoneMessageHandler.STATE_DEVICE_CALL_ANSWER);
					break;

				case 3:
					dPeripheral.write(PhoneMessageHandler.TYPE,
							PhoneMessageHandler.STATE_DEVICE_CALL_REJECT);
					break;
				}
			}
		});
		messageDialog = builder.create();
	}

	private AlertDialog securityDialog;

	private void initSecurityDialog() {
		AlertDialog.Builder builder = new AlertDialog.Builder(this);
		builder.setTitle("安全相关命令");
		String[] commants = { "手机请求删除绑定", "超级绑定", "用户登录请求", "手机请求蓝牙设备MAC地址",
				"手机请求蓝牙设备E号" ,"手机请求绑定","请求获得设备特性"};
		builder.setItems(commants, new DialogInterface.OnClickListener() {
			@Override
			public void onClick(DialogInterface dialog, int which) {
				switch (which) {
				case 0:
					dPeripheral.write(SecurityMessageHandler.TYPE,
							SecurityMessageHandler.STATE_PHONE_DEL_BOUND);
					break;

				case 1:
					dPeripheral.write(SecurityMessageHandler.TYPE,
							SecurityMessageHandler.STATE_PHONE_UPSER_BOUND);
					break;

				case 2:
					dPeripheral.write(SecurityMessageHandler.TYPE,
							SecurityMessageHandler.STATE_PHONE_USER_LOGIN);
					break;

				case 3:
					dPeripheral.write(SecurityMessageHandler.TYPE,
							SecurityMessageHandler.STATE_PHONE_SELECT_MAC);
					break;

				case 4:
					dPeripheral.write(SecurityMessageHandler.TYPE,
							SecurityMessageHandler.STATE_PHONE_SELECT_ENUMBER);
					break;
				case 5:
					dPeripheral.write(SecurityMessageHandler.TYPE,
							SecurityMessageHandler.STATE_PHONE_BOUND);
					break;
				case 6:
					dPeripheral.write(SecurityMessageHandler.TYPE,
							SecurityMessageHandler.STATE_DEVICE_FUNCTION);
					break;

				}
			}
		});
		securityDialog = builder.create();
	}

	private AlertDialog sportsDialog;

	private void initSportsDialog() {
		AlertDialog.Builder builder = new AlertDialog.Builder(this);
		builder.setTitle("运动相关命令");
		String[] commants = { "请求实时运动数据", "请求历史运动数据","请求实时气压数据" };
	
		builder.setItems(commants, new DialogInterface.OnClickListener() {
			@Override
			public void onClick(DialogInterface dialog, int which) {
				System.out.println("dPeripheral:"+dPeripheral.getAddres());
				switch (which) {
				case 0:
					dPeripheral.write(SportsMessageHandler.TYPE,
							SportsMessageHandler.STATE_PHONE_RUN_DATE);
					break;

				case 1:
					dPeripheral.write(SportsMessageHandler.TYPE,
							SportsMessageHandler.STATE_PHONE_SYNC);
					break;
				case 2:
					dPeripheral.write(SportsMessageHandler.TYPE,
							SportsMessageHandler.REQUEST_PRESSURE);
					break;

				}
			}
		});
		sportsDialog = builder.create();
	}

	private AlertDialog cheersDialog;

	private void initCheersDialog() {
		AlertDialog.Builder builder = new AlertDialog.Builder(this);
		builder.setTitle("水杯相关命令");
		String[] commants = { "请求实时水温数据 ", "请求实时水量数据", "请求历史水温数据", "请求历史水量数据",
				"请求好友列表" };
		builder.setItems(commants, new DialogInterface.OnClickListener() {
			@Override
			public void onClick(DialogInterface dialog, int which) {
				switch (which) {
				case 0:
					dPeripheral
							.write(CheersMessageHandler.TYPE,
									CheersMessageHandler.STATE_PHONE_ACTUAL_WATER_TEMPERATURE);
					break;

				case 1:
					dPeripheral
							.write(CheersMessageHandler.TYPE,
									CheersMessageHandler.STATE_PHONE_ACTUAL_WATER_VOLUME);
					break;
				case 2:
					dPeripheral
							.write(CheersMessageHandler.TYPE,
									CheersMessageHandler.STATE_PHONE_HISTORY_WATER_TEMPERATURE);
					break;
				case 3:
					dPeripheral
							.write(CheersMessageHandler.TYPE,
									CheersMessageHandler.STATE_PHONE_HISTORY_WATER_VOLUME);
					break;
				case 4:
					dPeripheral.write(CheersMessageHandler.TYPE,
							CheersMessageHandler.STATE_PHONE_FRIENDLIST);
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
		String[] commants = { "请求实时心率数据 ", "请求历史心率数据", "请求体温数据", "请求历史温度数据" };
		builder.setItems(commants, new DialogInterface.OnClickListener() {
			@Override
			public void onClick(DialogInterface dialog, int which) {
				System.out.println("dPeripheral:"+dPeripheral.getAddres());
				switch (which) {
				case 0:
					dPeripheral.write(HealthMessageHandler.TYPE,
							HealthMessageHandler.STATE_PHONE_RATE);
					break;

				case 1:
					dPeripheral.write(HealthMessageHandler.TYPE,
							HealthMessageHandler.STATE_PHONE_SYNC);
					break;

				case 2:
					dPeripheral.write(HealthMessageHandler.TYPE,
							HealthMessageHandler.STATE_PHONE_TEMP);
					break;
				case 3:
					dPeripheral.write(HealthMessageHandler.TYPE,
							HealthMessageHandler.STATE_DEVICE_TEMP_SYNC);
					break;

				}
			}
		});
		healthDialog = builder.create();
	}

	private AlertDialog dfuDialog;

	private void initDfuDialog() {
//		 final Peripheral mPeripheral = peripherals.get(address); 
		AlertDialog.Builder dfuBuilder = new AlertDialog.Builder(this);
		dfuBuilder.setTitle("Android-nRF-Toolbox");
		LayoutInflater inflater = LayoutInflater.from(this);
		View view = inflater.inflate(R.layout.item_dfu_file, null);

		tv_file_name = (TextView) view.findViewById(R.id.fileName);
		tv_file_type = (TextView) view.findViewById(R.id.fileType);
		tv_file_size = (TextView) view.findViewById(R.id.fileSize);
		tv_file_stauts = (TextView) view.findViewById(R.id.fileStatus);

		bt_cancel = (Button) view.findViewById(R.id.bt_cancel);
		bt_select_file = (Button) view.findViewById(R.id.bt_select_file);
		bt_upload_file = (Button) view.findViewById(R.id.bt_upload_file);

		bt_cancel.setOnClickListener(new android.view.View.OnClickListener() {
			@Override
			public void onClick(View v) {
				dfuDialog.dismiss();
			}
		});
		bt_select_file
				.setOnClickListener(new android.view.View.OnClickListener() {
					@Override
					public void onClick(View v) {
						openFileChooser();
						// dfuDialog.dismiss();
					}
				});
		bt_upload_file
				.setOnClickListener(new android.view.View.OnClickListener() {
					@Override
					public void onClick(View v) {
						DfuServiceInitiator starter = new DfuServiceInitiator(
								dPeripheral.device.getAddress()).setDeviceName(
										dPeripheral.device.getName())
								.setKeepBond(false);
						// if (mFileType == DfuService.TYPE_AUTO)
						starter.setZip(mFileStreamUri, mFilePath);
						// else {
						// starter.setBinOrHex(mFileType, mFileStreamUri,
						// mFilePath).setInitFile(mInitFileStreamUri,
						// mInitFilePath);
						// }

						starter.start(BLEInfoActivity.this, DfuService.class);
						dfuDialog.dismiss();

					}
				});

		dfuBuilder.setView(view);
		dfuDialog = dfuBuilder.create();
	}

	/***
	 * 选择上传的文件
	 * 
	 */
	private void openFileChooser() {
		Intent intent = new Intent(Intent.ACTION_GET_CONTENT);
		intent.setType("*/*");
		intent.addCategory(Intent.CATEGORY_OPENABLE);
		try {
			startActivityForResult(
					Intent.createChooser(intent, "Select a File to Upload"),
					SELECT_FILE_REQ);
		} catch (android.content.ActivityNotFoundException ex) {
			Toast.makeText(this, "Please install a File Manager.",
					Toast.LENGTH_SHORT).show();
		}
	}

	/***
	 * 接收选择的结果
	 */
	@Override
	protected void onActivityResult(int requestCode, int resultCode, Intent data) {
		// TODO Auto-generated method stub
		switch (requestCode) {
		case SELECT_FILE_REQ:
			if (resultCode == RESULT_OK) {
				// Get the Uri of the selected file
				Uri uri = data.getData();
				mFileStreamUri = uri;
				// String path = FileUtils.getPath(this, uri);
				if (uri.getScheme().equals("file")) {
					// the direct path to the file has been returned
					String path = uri.getPath();
					File file = new File(path);
					mFilePath = path;
					String tyep = getExtension(file);
					updateFileInfo(file.getName(), file.length(), mFileType,
							tyep);
				}
			}
			break;
		case REQUEST_ENABLE_BLUETOOTH:
			// scanLeDevice();
			break;
		default:
			break;
		}
		super.onActivityResult(requestCode, resultCode, data);
	}

	/***
	 * 获取文件后缀名
	 * 
	 * @param file
	 * @return
	 */
	private String getExtension(File file) {
		String suffix = "";
		String name = file.getName();
		final int idx = name.lastIndexOf(".");
		if (idx > 0) {
			suffix = name.substring(idx + 1);
		}
		return suffix;
	}

	/***
	 * 更新dialog UI
	 * 
	 * @param name
	 * @param length
	 * @param mFileType2
	 * @param fileType
	 */
	private void updateFileInfo(String name, long length, int mFileType2,
			String fileType) {
	    Peripheral mPeripheral = peripherals.get(address); 
		tv_file_name.setText(name);
		tv_file_size.setText((int) length + "bytes");
		tv_file_type.setText(fileType);
		tv_file_stauts.setText("invalid file");
		bt_upload_file.setEnabled(true);

		mAddress = mPeripheral.device.getAddress();
		mDeviceName = mPeripheral.device.getName();
		startDfuservice();
	}

	/**
	 * Dfu进度监听器
	 */
	private DfuProgressListener mDfuProgressListener = new DfuProgressListener() {
		/*
		 * 进度
		 */
		@Override
		public void onProgressChanged(String deviceAddress, int percent,
				float speed, float avgSpeed, int currentPart, int partsTotal) {

		}

		/*
		 * 在目标设备上验证新固件时调用的方法。
		 */
		@Override
		public void onFirmwareValidating(String deviceAddress) {
		}

		/*
		 * 错误信息 错误类型： DfuBaseService.ERROR_TYPE_COMMUNICATION_STATE,
		 * DfuBaseService.ERROR_TYPE_COMMUNICATION,
		 * DfuBaseService.ERROR_TYPE_DFU_REMOTE,
		 * DfuBaseService.ERROR_TYPE_OTHER.
		 */
		@Override
		public void onError(String deviceAddress, int error, int errorType,
				String message) {
		}

		@Override
		public void onEnablingDfuMode(String deviceAddress) {
		}

		@Override
		public void onDfuProcessStarting(String deviceAddress) {
		}

		@Override
		public void onDfuProcessStarted(String deviceAddress) {

		}

		@Override
		public void onDfuCompleted(String deviceAddress) {
		}

		@Override
		public void onDfuAborted(String deviceAddress) {
		}

		@Override
		public void onDeviceDisconnecting(String deviceAddress) {
		}

		@Override
		public void onDeviceDisconnected(String deviceAddress) {
		}

		@Override
		public void onDeviceConnecting(String deviceAddress) {
		}

		@Override
		public void onDeviceConnected(String deviceAddress) {
		}
	};

	/**
	 * 启动Dfuservice
	 */
	public void startDfuservice() {

		// Start DFU service with data provided in the intent
		final Intent service = new Intent(this, DfuService.class);
		service.putExtra(DfuService.EXTRA_DEVICE_ADDRESS, mAddress);
		service.putExtra(DfuService.EXTRA_DEVICE_NAME, mDeviceName);
		service.putExtra(DfuService.EXTRA_FILE_TYPE, 0);
		service.putExtra(DfuService.EXTRA_FILE_PATH, mFilePath);
		// if (intent.hasExtra(DfuService.EXTRA_INIT_FILE_PATH))
		// service.putExtra(DfuService.EXTRA_INIT_FILE_PATH, initPath);
		service.putExtra(DfuService.EXTRA_KEEP_BOND, false);
		startService(service);
	}

	@Override
	protected void onResume() {
		super.onResume();
//		Log.i(tag, "onResume.........");
		DfuServiceListenerHelper.registerProgressListener(this,
				mDfuProgressListener);
	}

	@Override
	protected void onPause() {
		super.onPause();
//		Log.i(tag, "onPause.........");
		DfuServiceListenerHelper.unregisterProgressListener(this,
				mDfuProgressListener);
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.bleinfo, menu);
		return true;
	}

	@Override
	public boolean onOptionsItemSelected(MenuItem item) {
		// Handle action bar item clicks here. The action bar will
		// automatically handle clicks on the Home/Up button, so long
		// as you specify a parent activity in AndroidManifest.xml.
		int id = item.getItemId();
		switch (id) {
		case R.id.action_scan:
			itemSacn = item;
//			Toast.makeText(this, "scan..", 1000).show();
			enableBle();
			scanLeDevice();
			scanDialog.show();
			break;
		case R.id.action_setting:
			settingDialog.show();
			break;

		case R.id.action_message:
			messageDialog.show();
			break;

		case R.id.action_security:
			securityDialog.show();
			break;

		case R.id.action_sports:
			sportsDialog.show();
			break;

		case R.id.action_health:
			healthDialog.show();
			break;

		case R.id.action_cheers:
			cheersDialog.show();
			break;

		case R.id.action_clear:
//			infoData.clear();
//			mAdapter.notifyDataSetChanged();
			clearList(address);
			break;

		case R.id.action_disconn:
//			dPeripheral = peripherals.get(address); 
			dPeripheral.disconnect();
			break;

		case R.id.action_connect:
//			dPeripheral = peripherals.get(address); 
			dPeripheral.connect(this);
			break;
		case R.id.bleOTA:
			dfuDialog.show();
			break;
		}
		return super.onOptionsItemSelected(item);
	}

}
