package com.megster.cordova.ble.central;

import android.app.Activity;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Environment;
import android.os.Handler;
import android.provider.Settings;
import android.telephony.SmsMessage;
import android.telephony.TelephonyManager;
import android.util.Log;
import android.view.View;

import com.bde.ancs.lib.AndroidANCSService;
import com.ble.message.Util;

import org.apache.cordova.CallbackContext;
import org.apache.cordova.CordovaArgs;
import org.apache.cordova.CordovaInterface;
import org.apache.cordova.CordovaPlugin;
import org.apache.cordova.CordovaWebView;
import org.apache.cordova.LOG;
import org.apache.cordova.PluginResult;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.File;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import java.util.UUID;

import cn.sharesdk.framework.ShareSDK;
import cn.sharesdk.onekeyshare.OnekeyShare;

public class BLECentralPlugin extends CordovaPlugin implements
		BluetoothAdapter.LeScanCallback {

	private static final String SCAN = "scan";
	private static final String START_SCAN = "startScan";
	private static final String STOP_SCAN = "stopScan";
	private static final String SETOPTION = "setOption";
	private static final String CONNECT = "connect";
	private static final String DISCONNECT = "disconnect";
	private static final String GETRSSI = "getRSSI";
	private static final String READ = "read";
	private static final String WRITE = "write";
	private static final String WRITE_WITHOUT_RESPONSE = "writeWithoutResponse";
	private static final String START_NOTIFICATION = "startNotification";
	private static final String STOP_NOTIFICATION = "stopNotification";
	private static final String IS_ENABLED = "isEnabled";
	private static final String IS_CONNECTED = "isConnected";
	private static final String SETTINGS = "showBluetoothSettings";
	private static final String ENABLE = "enable";
	private static final String BLEREFRIESH = "bleRefresh"; // 蓝牙状态
	private static final String REPROGRESS = "requestProgress"; // 进度条
	private static final String GETGN = "cmdGetGN"; // //设备特性
	// private static final String cmdNodeRecord = "cmdNodeRecord";
	// ////历史数据请求节点记录

	private static final String DATAREFRESH = "dataRefresh";
	private static final String SMS_RECE = "android.provider.Telephony.SMS_RECEIVED";

	CallbackContext discoverCallback;
	private CallbackContext enableBluetoothCallback;

	public static BLECentralPlugin BLE_PLUGIN;
	public Util util;

	private static final String TAG = "BLEPlugin";
	private static final int REQUEST_ENABLE_BLUETOOTH = 1;

	BluetoothAdapter bluetoothAdapter;
	// public static BLECentralPlugin BLE_PLUGIN;
	// key is the MAC Address
	Map<String, Peripheral> peripherals = new LinkedHashMap<String, Peripheral>();

	// 来电和手机蓝牙关闭打开 监听广播
	private BroadcastReceiver phoneReceiver;

	/**
	 * COMMAND 0: Setting
	 * */
	// 时间设置同步命令
	public int cmdTimeSetting = 0;
	// 闹钟设置
	public int silentTimeId = 0;

	public int silentYear1 = 0;
	public int silentMonth1 = 0;
	public int silentDay1 = 0;
	public int silentHour1 = 0;
	public int silentMinute1 = 0;
	public int silentWeekDay1 = 0;
	public int isAlarm1 = 0;// 关闭
	public int isAlarm2 = 0;// 关闭
	public int isAlarm3 = 0;// 关闭

	public int silentYear2 = 0;
	public int silentMonth2 = 0;
	public int silentDay2 = 0;
	public int silentHour2 = 0;
	public int silentMinute2 = 0;
	public int silentWeekDay2 = 0;

	public int silentYear3 = 0;
	public int silentMonth3 = 0;
	public int silentDay3 = 0;
	public int silentHour3 = 0;
	public int silentMinute3 = 0;
	public int silentWeekDay3 = 0;
	public int alarm_index1 = 0;
	public int alarm_index2 = 0;
	public int alarm_index3 = 0;

	// 计步目标
	public int sports = 0;
	/**
	 * 实时数据命令
	 * */
	/* 运动实时数据请求 */
	public int realtimeStep = 0;
	/* 睡眠实时数据请求（没实现） */

	/* 心率实时数据请求 */
	public int realtimeHeartrate = 0;
	/* 体温实时数据请求 */
	public int realtimeTemperature = 0;

	private int year = 0;
	private int month = 0;
	private int sex = 0;
	private int height = 0;
	private int weight = 0;

	private int set_year = 0;
	private int set_month = 0;
	private int set_hours = 0;
	private int set_day = 0;
	private int set_minute = 0;

	/**
	 * 请求历史数据命令
	 * */
	public int stepHistory = 0; // 历史步数
	public int heartrateHistory = 0; // 心率
	public int temperatureHistory = 0; // 体温

	private boolean isEable = false;
	// 停止扫描的定时器
	private Timer stopScannerTimer;

	// Peripheral peripheral2;
	public Activity activity;
	public String filePath; // 分享图片保存路径
	CallbackContext mCallbackContext;
	CallbackContext mBLECallbackContext;
	// 第一次连接蓝牙是否打开
	public boolean opendBLE = false;

	private boolean isFristLogin = true;
	private int isFristBond = 0;
	private boolean isDel_bond = false;

	private int isFallAlarm = 0;
	String mNumber,mMessage;

	public int call = 0;
	public int sms = 0;
  public int qqpush = 1;
  public int chat = 1;
	public String ble_trun = "no";
	private Map<String, Map<String, Integer>> cacheOptions = new HashMap<String, Map<String, Integer>>();

	// public BLECentralPlugin(CallbackContext callbackContext){
	// this.callbackContext = callbackContext;
	// }
	@Override
	public boolean execute(String action, CordovaArgs args,
			CallbackContext callbackContext) throws JSONException {
		if (bluetoothAdapter == null) {
			Activity activity = cordova.getActivity();
			BluetoothManager bluetoothManager = (BluetoothManager) activity
					.getSystemService(Context.BLUETOOTH_SERVICE);
			bluetoothAdapter = bluetoothManager.getAdapter();
		}

		boolean validAction = true;

		if (action.equals(SCAN)) {
			final CallbackContext callbackContext_scan = callbackContext;
			final UUID[] serviceUUIDs = parseServiceUUIDList(args
					.getJSONArray(0));
			final int scanSeconds = args.getInt(1);
			new Thread(new Runnable() {
				@Override
				public void run() {
					findLowEnergyDevices(callbackContext_scan, serviceUUIDs,
							scanSeconds);
				}
			}).start();

		} else if (action.equals(START_SCAN)) {
			enableBlue();
			UUID[] serviceUUIDs = parseServiceUUIDList(args.getJSONArray(0));
			findLowEnergyDevices(callbackContext, serviceUUIDs, -1);

		} else if (action.equals(STOP_SCAN)) {

			bluetoothAdapter.stopLeScan(this);
			callbackContext.success();

		} else if (action.equals(SETOPTION)) {

			String macAddress = args.getString(0);
			String optType = args.getString(1);
			String optValue = args.getString(2);
			// Log.i(TAG, "-----------"+ optValue);
			setOption(callbackContext, macAddress, optType, optValue);

		} else if (action.equals(CONNECT)) {

			String macAddress = args.getString(0);
			String isFrist = args.getString(1);
			LOG.i(TAG, "macAddress:  " + macAddress);
			connect(callbackContext, macAddress, isFrist);

		} else if (action.equals(DISCONNECT)) {

			String macAddress = args.getString(0);
			disconnect(callbackContext, macAddress);

		} else if (action.equals(GETRSSI)) {

			String macAddress = args.getString(0);
			getRSSI(callbackContext, macAddress);

		} else if (action.equals(READ)) {

			String macAddress = args.getString(0);
			UUID serviceUUID = uuidFromString(args.getString(1));
			UUID characteristicUUID = uuidFromString(args.getString(2));
			read(callbackContext, macAddress, serviceUUID, characteristicUUID);

		} else if (action.equals(WRITE)) {

			String macAddress = args.getString(0);
			UUID serviceUUID = uuidFromString(args.getString(1));
			UUID characteristicUUID = uuidFromString(args.getString(2));
			// // byte[] data = args.getArrayBuffer(3);
			// // byte[] data =
			// MessageManager.reponseCodeToBytes(args.getArrayBuffer(3)[0],
			// peripherals.get(macAddress));
			// int type = BluetoothGattCharacteristic.WRITE_TYPE_DEFAULT;
			// write(callbackContext, macAddress, serviceUUID,
			// characteristicUUID, data, type);

		} else if (action.equals(WRITE_WITHOUT_RESPONSE)) {

			String macAddress = args.getString(0);
			UUID serviceUUID = uuidFromString(args.getString(1));
			UUID characteristicUUID = uuidFromString(args.getString(2));
			byte[] data = args.getArrayBuffer(3);
			int type = BluetoothGattCharacteristic.WRITE_TYPE_NO_RESPONSE;
			write(callbackContext, macAddress, serviceUUID, characteristicUUID,
					data, type);

		} else if (action.equals(START_NOTIFICATION)) {

			String macAddress = args.getString(0);
			UUID serviceUUID = uuidFromString(args.getString(1));
			UUID characteristicUUID = uuidFromString(args.getString(2));
			registerNotifyCallback(callbackContext, macAddress, serviceUUID,
					characteristicUUID);

		} else if (action.equals(STOP_NOTIFICATION)) {

			String macAddress = args.getString(0);
			UUID serviceUUID = uuidFromString(args.getString(1));
			UUID characteristicUUID = uuidFromString(args.getString(2));
			removeNotifyCallback(callbackContext, macAddress, serviceUUID,
					characteristicUUID);

		} else if (action.equals(IS_ENABLED)) {

			if (bluetoothAdapter.isEnabled()) {
				callbackContext.success();
			} else {
				callbackContext.error("Bluetooth is disabled.");
			}

		} else if (action.equals(IS_CONNECTED)) {

			String macAddress = args.getString(0);

			if (macAddress.equals("")) {
				Log.i(TAG, "goto ");
				cordova.getActivity().moveTaskToBack(true);
				return true;
			}

			if (peripherals.containsKey(macAddress)
					&& peripherals.get(macAddress).isConnected()) {
				callbackContext.success();
			} else {
				callbackContext.error("Not connected.");
			}

		} else if (action.equals(SETTINGS)) {

			Intent intent = new Intent(Settings.ACTION_BLUETOOTH_SETTINGS);
			cordova.getActivity().startActivity(intent);
			callbackContext.success();

		} else if (action.equals(ENABLE)) {

			enableBluetoothCallback = callbackContext;
			Intent intent = new Intent(BluetoothAdapter.ACTION_REQUEST_ENABLE);
			cordova.startActivityForResult(this, intent,
					REQUEST_ENABLE_BLUETOOTH);

		} else if (action.equals(DATAREFRESH)) {

			String macAddress = args.getString(0);
			String optType = args.getString(1);

			// Log.i("DATAREFRESH", "----macAddress----" + macAddress +
			// "----optType----"+ optType);
			dataRefresh(callbackContext, macAddress, optType);
		} else if (action.equals(BLEREFRIESH)) {

			String macAddress = args.getString(0);
			String optType = args.getString(1);
			String optValue = args.getString(2);
			// Log.i("蓝牙开启或者关闭", "----macAddress----" + macAddress +
			// "----optType----"+ optType);
			bleRefresh(callbackContext, macAddress, optType, optValue);
		} else if (action.equals(REPROGRESS)) {
			String macAddress = args.getString(0);
			String optType = args.getString(1);
			reProgress(callbackContext, macAddress, optType);
		} else if (action.equals(GETGN)) {
			String macAddress = args.getString(0);
			String optType = args.getString(1);
			getGN(callbackContext, macAddress, optType);
		}

		else {
			validAction = false;
		}

		return validAction;
	}

	/**
	 * 判断蓝牙是否开启，否则开启蓝牙
	 */
	private boolean enableBlue() {
		Activity activity = cordova.getActivity();
		BluetoothManager manager = (BluetoothManager) activity
				.getSystemService(Context.BLUETOOTH_SERVICE);
		BluetoothAdapter adapter = manager.getAdapter();
		if (!adapter.isEnabled()) {
			Intent intent = new Intent(BluetoothAdapter.ACTION_REQUEST_ENABLE);
			if (!isEable) {
				isEable = true;
				cordova.startActivityForResult(this, intent,
						REQUEST_ENABLE_BLUETOOTH);
			}
			return false;
		}
		return true;

	}
	private AndroidANCSService mService;
	/** 初始化 */
	@Override
	public void initialize(CordovaInterface cordova, CordovaWebView webView) {
		super.initialize(cordova, webView);
		System.out.println("initialize.........................");
		activity = cordova.getActivity();
		enableBlue();
		initBroadcast();
		mService = AndroidANCSService.getInstance(activity);
	}

	@Override
	public void onStart() {
		// TODO Auto-generated method stub
		super.onStart();
		System.out.println("onStart.........................");
	}




	@Override
	public void onResume(boolean multitasking) {
		// TODO Auto-generated method stub
		super.onResume(multitasking);
		Log.i(TAG, "onResume");
		// initBroadcast();
	}

	private void showShare() {
		// activity截图
		ShareSDK.initSDK(activity);
		OnekeyShare share = new OnekeyShare();
		share.disableSSOWhenAuthorize();
		share.setText("云石智能智能手环");
		// text是分享文本，所有平台都需要这个字段
		share.setTitle("云石智能");
		// url仅在微信（包括好友和朋友圈）中使用
		share.setUrl("https://shop35240171.taobao.com/");
		share.setTitleUrl("https://");
		// share.setImageUrl(filePath);
		share.setImagePath(filePath);
		share.show(activity);
	}

	public void shareImge() {
		View view = activity.getWindow().getDecorView();
		view.setDrawingCacheEnabled(true);
		view.buildDrawingCache();
		// 获取实际显示范围
		Rect frame = new Rect();
		activity.getWindow().getDecorView()
				.getWindowVisibleDisplayFrame(frame);
		// 第二步 得到状态栏的高度
		int statusHeight = frame.top;
		// 第三步 获取屏幕图像的高度
		Point outSize = new Point();
		activity.getWindowManager().getDefaultDisplay().getSize(outSize);
		int width = outSize.x;
		int height = outSize.y;
		// 去掉标题栏
		Bitmap b = Bitmap.createBitmap(view.getDrawingCache(), 0, statusHeight,
				width, height - statusHeight);
		view.destroyDrawingCache();
		if (b != null) {
			// 获取内置SD卡路径
			String sdCardPath = Environment.getExternalStorageDirectory()
					.getPath();
			// 图片文件路径
			SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmmss");
			Date curDate = new Date(System.currentTimeMillis());// 获取当前时间
			String str = formatter.format(curDate);
			String SavePath = getSDCardPath() + "/AndyDemo/ScreenImage/";
			filePath = SavePath + str + ".png";
			System.out.println("filePath........." + filePath);

			try {
				File path = new File(SavePath);

				File file = new File(filePath);
				if (!path.exists()) {
					path.mkdirs();
				}
				if (!file.exists()) {
					file.createNewFile();
				}

				FileOutputStream os = new FileOutputStream(file);
				b.compress(Bitmap.CompressFormat.JPEG, 50, os);
				os.flush();
				os.close();
			} catch (Exception e) {
			}
		}
	}

	private String getSDCardPath() {
		File sdcardDir = null;
		// 判断SDCard是否存在
		boolean sdcardExist = Environment.getExternalStorageState().equals(
				android.os.Environment.MEDIA_MOUNTED);
		if (sdcardExist) {
			sdcardDir = Environment.getExternalStorageDirectory();
		}
		return sdcardDir.toString();
	}

	/**
	 * 注册广播，监听来电,蓝牙开关
	 */
	private void initBroadcast() {
		phoneReceiver = new BroadcastReceiver() {
			@Override
			public void onReceive(Context context, Intent intent) {
				String action = intent.getAction();
				Log.i(TAG, "广播.." + action);
				if (action.equals(BluetoothAdapter.ACTION_STATE_CHANGED)) {
					// 手机蓝牙状态
					int state = intent.getIntExtra(
							BluetoothAdapter.EXTRA_STATE,
							BluetoothAdapter.ERROR);
					switch (state) {
					case BluetoothAdapter.STATE_OFF:
						Log.d("aaa", "STATE_OFF 手机蓝牙关闭");
						ble_trun = "no";
						int opend = 0;
						opendBLE = true;
						for (Peripheral peripheral : peripherals.values()) {
							if (peripheral.isConnected()) {
								peripheral.disconnect();
								peripheral.setBle(opend);
								Log.d("aaa", "STATE_OFF 手机蓝牙关闭" + opend);
								PluginResult result = new PluginResult(
										PluginResult.Status.ERROR,
										"ble_trun_off");
								result.setKeepCallback(true);
								peripheral.m_connectCallback
										.sendPluginResult(result);
								peripheral.reConnectAlert(0);
							}
						}
						break;
					case BluetoothAdapter.STATE_TURNING_OFF:
						Log.d("aaa", "STATE_TURNING_OFF 手机蓝牙正在关闭");
						break;
					case BluetoothAdapter.STATE_ON:
						Log.d("aaa", "STATE_ON 手机蓝牙开启");
						ble_trun = "yes";
						if (opendBLE) {
							final int opend2 = 2;
							for (final Peripheral peripheral : peripherals
									.values()) {
								if (peripheral.m_connectCallback != null) {
									peripheral.setBle(opend2);
									new Handler().postDelayed(new Runnable() {
										@Override
										public void run() {
											Log.i(TAG, "手机蓝牙开启 重连");
											sendOpendBLE(mBLECallbackContext,
													ble_trun);
										}
									}, 2 * 1000);
								}
							}
						}
						break;
					case BluetoothAdapter.STATE_TURNING_ON:
						Log.d("aaa", "STATE_TURNING_ON 手机蓝牙正在开启");
						break;
					}
				} else if (action
						.equals(TelephonyManager.ACTION_PHONE_STATE_CHANGED)) {
					// 来电提醒
					String phoneNumber = intent
							.getStringExtra(TelephonyManager.EXTRA_INCOMING_NUMBER);
					TelephonyManager telephony = (TelephonyManager) context
							.getSystemService(Context.TELEPHONY_SERVICE);
					int state = telephony.getCallState();
					if (call != 0) {
						for (Peripheral peripheral : peripherals.values()) {
							if (peripheral.isConnected()) {
								peripheral.callRemind(state, phoneNumber);
							}
						}
					}
					switch (state) {
					case TelephonyManager.CALL_STATE_RINGING:
						Log.i(TAG, "[Broadcast]等待接电话=" + phoneNumber);
						break;
					case TelephonyManager.CALL_STATE_IDLE:
						Log.i(TAG, "[Broadcast]电话挂断=" + phoneNumber);
						break;
					case TelephonyManager.CALL_STATE_OFFHOOK:
						Log.i(TAG, "[Broadcast]通话中=" + phoneNumber);
						break;
					}
				} else if (action.equals(SMS_RECE)) {
					Object[] pdus = (Object[]) intent.getExtras().get("pdus");
					for (Object p : pdus) {
						byte[] pdu = (byte[]) p;
						SmsMessage message = SmsMessage.createFromPdu(pdu);
						String senderNumber = message.getOriginatingAddress();
						Log.i(TAG, "短信提醒： " + senderNumber);
						if (sms != 0) {
							for (Peripheral peripheral : peripherals.values()) {
								if (peripheral.isConnected()) {
									peripheral.callRemind(5, senderNumber);
								}
							}
						}
					}
				}
			}
		};
		activity = cordova.getActivity();
		IntentFilter filter = new IntentFilter();
		filter.addAction("android.intent.action.PHONE_STATE");
		filter.addAction("android.bluetooth.adapter.action.STATE_CHANGED");
		filter.addAction("android.provider.Telephony.SMS_RECEIVED");
		activity.registerReceiver(phoneReceiver, filter);

	}

	// 解析服务UUID列表
	private UUID[] parseServiceUUIDList(JSONArray jsonArray)
			throws JSONException {
		List<UUID> serviceUUIDs = new ArrayList<UUID>();

		for (int i = 0; i < jsonArray.length(); i++) {
			String uuidString = jsonArray.getString(i);
			serviceUUIDs.add(uuidFromString(uuidString));
		}

		return serviceUUIDs.toArray(new UUID[jsonArray.length()]);
	}

	/** 设备特性 */
	private void getGN(final CallbackContext callbackContext,
			String macAddress, String optType) {
		// TODO Auto-generated method stub
		final Peripheral peripheralGN = peripherals.get(macAddress);
		if (peripheralGN != null) {
			if ("cmdGetGN".equals(optType)) {
				Log.i(TAG, "cmdProgress --请求设备特性");
				new Thread() {
					public void run() {
						try {
							Thread.sleep(100);
							peripheralGN.setGN(callbackContext);
						} catch (InterruptedException e) {
						}
					}
				}.start();
			}
		}
	}

	/** 进度条 */
	private void reProgress(CallbackContext callbackContext, String macAddress,
			String optType) {

		Peripheral peripheralProgress = peripherals.get(macAddress);
		if (peripheralProgress != null) {
			if ("cmdProgress".equals(optType)) {
				Log.i(TAG, "cmdProgress --请求进度条");
				peripheralProgress.send_progress(1, callbackContext);
			}
		}
	}

	public JSONObject getJson(String st) {
		JSONObject json = new JSONObject();
		try {
			json.put("st", st);
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return json;
	}

	/**
	 * 蓝牙状态请求，并回馈给前台
	 */
	private void bleRefresh(CallbackContext callbackContext, String macAddress,
			String optType, String optValue) {
		Peripheral peripheral2 = peripherals.get(macAddress);
		mCallbackContext = callbackContext;
		mBLECallbackContext = callbackContext;
		isFristBond = Integer.parseInt(optValue);
		Log.i(TAG, "是否是第一次安装软件...." + isFristBond);
		if (peripheral2 != null) {
			if ("cmdBLE".equals(optType)) {
				Log.i(TAG, "bleRefresh ----> 蓝牙是否开启的回调...");
				if (!peripheral2.isConnected()) {
					sendOpendBLE(mBLECallbackContext, ble_trun);
				}
			}
		} else {
			ble_trun = "yes";
			if ("cmdBLE".equals(optType)) {
				PluginResult result = new PluginResult(PluginResult.Status.OK,
						getJson(ble_trun));
				result.setKeepCallback(true);
				callbackContext.sendPluginResult(result);
			}
		}
		if (isFristBond == 1) {
			isFristLogin = false;
			isFristBond = 0;
		}

	}

	/**
	 * 更新数据
	 * */
	private void dataRefresh(final CallbackContext callbackContext,
			String macAddress, String optType) {
		final Peripheral peripheral2 = peripherals.get(macAddress);
		mCallbackContext = callbackContext;
		// mBLECallbackContext =callbackContext;
		if (peripheral2 != null) {
			if ("cmdStep".equals(optType)) {
				Log.i("main", "----cmdStep0000----");
				peripheral2.realTimeRequest(callbackContext, optType);

			} else if ("cmdHeart".equals(optType)) {
				Log.i("main", "----cmdHeart----");
				peripheral2.realTimeRequest(callbackContext, optType);

			} else if ("cmdTemperature".equals(optType)) {
				Log.i("main", "----cmdTemperature----");
				peripheral2.realTimeRequest(callbackContext, optType);

			} else if ("cmdSleep".equals(optType)) {
				Log.i("main", "----cmdSleep----");
				peripheral2.realTimeRequest(callbackContext, optType);
			} else if("cmdAtmospheric".equals(optType)){
				Log.i("main", "----cmdAtmospheric----");
				peripheral2.realTimeRequest(callbackContext, optType);
			}
			else if ("cmdStepEd".equals(optType)) {
				Log.i("main", "----cmdStepEd----");
				peripheral2.setStepEd(mCallbackContext);
			} else if ("cmdSleepEd".equals(optType)) {
				peripheral2.setSleepEd(mCallbackContext);
			} else if ("cmdHeartEd".equals(optType)) {
				Log.i("main", "----cmdHeartEd----");
				peripheral2.setHeartEd(mCallbackContext);
			} else if ("cmdOxygen".equals(optType)) {
				Log.i("main", "----cmdOxygen----");
				peripheral2.realTimeRequest(callbackContext, optType);
			} else if ("connectStatusdyk".equals(optType)) {
        Log.i("main", "----connectStatusdyk----");
        peripheral2.realTimeRequest(callbackContext, optType);
      }else if ("cmdTemperatureEd".equals(optType)) {
        Log.i("main", "----cmdTemperatureEd----");
        peripheral2.setTemperatureEd(mCallbackContext);
      }
      else if ("cmdShare".equals(optType)) {
				final String st = "ok";
				shareImge();
				new Thread() {
					public void run() {
						try {
							Thread.sleep(200);
							showShare();
							PluginResult result = new PluginResult(
									PluginResult.Status.OK, getJson(st));
							result.setKeepCallback(true);
							callbackContext.sendPluginResult(result);
						} catch (InterruptedException e) {
						}
					}
				}.start();
			}
		} else {
			if ("cmdShare".equals(optType)) {
				final String st = "ok";
				shareImge();
				new Thread() {
					public void run() {
						try {
							Thread.sleep(300);
							showShare();
							PluginResult result = new PluginResult(
									PluginResult.Status.OK, getJson(st));
							result.setKeepCallback(true);
							callbackContext.sendPluginResult(result);
						} catch (InterruptedException e) {
						}
					}
				}.start();
			}
		}

	}

	public void sendOpendBLE(CallbackContext callbackContext, String st) {

		PluginResult result = new PluginResult(PluginResult.Status.OK,
				getJson(st));
		result.setKeepCallback(true);
		callbackContext.sendPluginResult(result);
	}

	// 设置选项
	private void setOption(CallbackContext callbackContext, String macAddress,
			String optType, String optValue) {
		Peripheral peripheral = peripherals.get(macAddress);
		Log.i("main", "----setOption:-----|");
		mCallbackContext = callbackContext;
		if (peripheral != null) {
			Log.i("main", "----setOption:-----|" + optType+ "|peripheral != null");
			// 应用警报
			if ("cmdTimeSetting".equals(optType)) {
				int value = Integer.parseInt(optValue);

				peripheral.setTime();
				Log.i(TAG, "cmdTimeSetting----" + value);
			}
			// 防丢设置
			else if ("cmdLostSetting".equals(optType)) {
				Log.i("main", "cmdLostSetting : " + optType);
				PluginResult result = new PluginResult(PluginResult.Status.OK,
						peripheral.asJSONObject());
				result.setKeepCallback(true);
				callbackContext.sendPluginResult(result);
				int lost = Integer.parseInt(optValue);
				Log.i("main", "----cmdLostSetting----" + lost);
				peripheral.setLost(lost);

			} else if ("cmdTimeSetting2".equals(optType)) {
				PluginResult result = new PluginResult(PluginResult.Status.OK,
						peripheral.asJSONObject());
				result.setKeepCallback(true);
				callbackContext.sendPluginResult(result);
				Log.i(TAG, "cmdTimeSetting2----" + optValue.toString());

				JSONObject jsonObject;
				try {
					jsonObject = new JSONObject(optValue);
					set_year = Integer.parseInt(jsonObject.getString("year"));
					set_month = Integer.parseInt(jsonObject.getString("month"));
					set_day = Integer.parseInt(jsonObject.getString("day"));
					set_hours = Integer.parseInt(jsonObject.getString("hours"));
					set_minute = Integer.parseInt(jsonObject
							.getString("minute"));
					System.out.println("set_year " + set_year + "set_month "
							+ set_month + '/' + set_day + '/' + set_hours + '/'
							+ set_minute);

				} catch (JSONException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				Util.setTime(getSetTime());
				peripheral.setTime();

			} else if ("cmdbirthYear".equals(optType)) { // 个人信息

				PluginResult result = new PluginResult(PluginResult.Status.OK,
						peripheral.asJSONObject());
				result.setKeepCallback(true);
				callbackContext.sendPluginResult(result);
				Log.i(TAG, "个人信息---- " + optValue.toString());

				JSONObject jsonObject;
				try {
					jsonObject = new JSONObject(optValue);
					year = Integer.parseInt(jsonObject.getString("birthYear"));

					month = Integer.parseInt(jsonObject.getString("birthMoth"));
					sex = Integer.parseInt(jsonObject.getString("sex"));
					height = Integer.parseInt(jsonObject.getString("height"));
					weight = (int) Float.parseFloat(jsonObject
							.getString("weight"));
					System.out.println("birthYear " + year + "birthMoth "
							+ month + '/' + sex + '/' + height + '/' + weight
							+ "getUserData().."
							+ Arrays.toString(getUserData()));

				} catch (JSONException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				Util.users(getUserData());
				peripheral.setUserDate();
			}

			else if ("cmdSports".equals(optType)) {
				PluginResult result = new PluginResult(PluginResult.Status.OK,
						peripheral.asJSONObject());
				result.setKeepCallback(true);
				callbackContext.sendPluginResult(result);
				sports = Integer.parseInt(optValue);
				setSport(sports);
				peripheral.setWalk();
				Log.i("main", "----sports----" + sports);
			}
			// 短信提醒
			else if ("cmdSms".equals(optType)) {
				PluginResult result = new PluginResult(PluginResult.Status.OK,
						peripheral.asJSONObject());
				result.setKeepCallback(true);
				callbackContext.sendPluginResult(result);
				sms = Integer.parseInt(optValue);
				Log.i(TAG, "----短信提醒设置----" + sms);

			} else if ("cmdCall".equals(optType)) { // 来电提醒

				PluginResult result = new PluginResult(PluginResult.Status.OK,
						peripheral.asJSONObject());
				result.setKeepCallback(true);
				callbackContext.sendPluginResult(result);
				call = Integer.parseInt(optValue);
				Log.i(TAG, "----来电提醒设置----" + call);

			}else if ("cmdSilentWeekDay1".equals(optType)) {
				PluginResult result = new PluginResult(PluginResult.Status.OK,
						peripheral.asJSONObject());
				result.setKeepCallback(true);
				callbackContext.sendPluginResult(result);
				// silentWeekDay1 = Integer.parseInt(optValue);
				Log.i(TAG, "闹钟 1 ----》 " + optValue.toString());
				JSONObject jsonObject;
				try {
					jsonObject = new JSONObject(optValue);
					silentYear1 = Integer.parseInt(jsonObject
							.getString("year1"));
					silentMonth1 = Integer.parseInt(jsonObject
							.getString("month1"));
					silentDay1 = Integer.parseInt(jsonObject.getString("day1"));
					silentHour1 = Integer.parseInt(jsonObject
							.getString("hour1"));
					silentMinute1 = Integer.parseInt(jsonObject
							.getString("minute1"));
					silentWeekDay1 = Integer.parseInt(jsonObject
							.getString("weekday1"));
					isAlarm1 = Integer.parseInt(jsonObject
							.getString("isAlarm1"));
				} catch (JSONException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				alarm_index1 = 1;
				Log.i("main", silentYear1 + "/" + silentMonth1 + "/"
						+ silentDay1 + "--cmdHour1--" + silentHour1
						+ "--Minute1--" + silentMinute1 + "--WeekDay1--"
						+ silentWeekDay1 + "isAlarm1" + isAlarm1);
				alarm1();
				peripheral.setAlarm();
			} else if ("cmdSilentWeekDay2".equals(optType)) {
				PluginResult result = new PluginResult(PluginResult.Status.OK,
						peripheral.asJSONObject());
				result.setKeepCallback(true);
				callbackContext.sendPluginResult(result);
				// silentWeekDay2 = Integer.parseInt(optValue);
				Log.i(TAG, "闹钟 2 ----》 " + optValue.toString());
				JSONObject jsonObject;
				try {
					jsonObject = new JSONObject(optValue);
					silentYear2 = Integer.parseInt(jsonObject
							.getString("year2"));
					silentMonth2 = Integer.parseInt(jsonObject
							.getString("month2"));
					silentDay2 = Integer.parseInt(jsonObject.getString("day2"));
					silentHour2 = Integer.parseInt(jsonObject
							.getString("hour2"));
					silentMinute2 = Integer.parseInt(jsonObject
							.getString("minute2"));
					silentWeekDay2 = Integer.parseInt(jsonObject
							.getString("weekday2"));
					isAlarm2 = Integer.parseInt(jsonObject
							.getString("isAlarm2"));

				} catch (JSONException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				alarm_index2 = 2;

				Log.i("main", silentYear2 + "/" + silentMonth2 + "/"
						+ silentDay2 + "--cmdHour2--" + silentHour2
						+ "--Minute2--" + silentMinute2 + "--WeekDay2--"
						+ silentWeekDay2 + "isAlarm2" + isAlarm2);
				alarm1();
				peripheral.setAlarm();
				// Log.i("main", "----cmdSilentWeekDay2----" + silentWeekDay2);
			} else if ("cmdSilentWeekDay3".equals(optType)) {
				PluginResult result = new PluginResult(PluginResult.Status.OK,
						peripheral.asJSONObject());
				result.setKeepCallback(true);
				callbackContext.sendPluginResult(result);
				// silentWeekDay3 = Integer.parseInt(optValue);

				Log.i(TAG, "闹钟 3 ----》 " + optValue.toString());
				JSONObject jsonObject;
				try {
					jsonObject = new JSONObject(optValue);
					silentYear3 = Integer.parseInt(jsonObject
							.getString("year3"));
					silentMonth3 = Integer.parseInt(jsonObject
							.getString("month3"));
					silentDay3 = Integer.parseInt(jsonObject.getString("day3"));
					silentHour3 = Integer.parseInt(jsonObject
							.getString("hour3"));
					silentMinute3 = Integer.parseInt(jsonObject
							.getString("minute3"));
					silentWeekDay3 = Integer.parseInt(jsonObject
							.getString("weekday3"));
					isAlarm3 = Integer.parseInt(jsonObject
							.getString("isAlarm3"));
				} catch (JSONException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				alarm_index3 = 3;
				Log.i("main", silentYear3 + "/" + silentMonth3 + "/"
						+ silentDay3 + "--cmdHour3--" + silentHour3
						+ "--Minute3--" + silentMinute3 + "--WeekDay3--"
						+ silentWeekDay3 + "isAlarm3" + isAlarm3);

				alarm1();
				peripheral.setAlarm();
				// Log.i("main", "----silentWeekDay3----" + silentWeekDay3);

			} else if ("cmdSedentarySetting".equals(optType)) {// 久坐提醒
				PluginResult result = new PluginResult(PluginResult.Status.OK,
						peripheral.asJSONObject());
				result.setKeepCallback(true);
				callbackContext.sendPluginResult(result);
				int time = 0; //提醒时间
				int interval = 0; //间隔
				int sedentary = 0; //开关
				Log.i(TAG, "cmdSedentarySetting ----》 " + optValue.toString());

				JSONObject jsonObject;
				try {
					jsonObject = new JSONObject(optValue);
					time = Integer.parseInt(jsonObject.getString("time"));
					interval = Integer.parseInt(jsonObject.getString("interval"));
					sedentary = Integer.parseInt(jsonObject.getString("sedentary"));
				} catch (JSONException e) {
					e.printStackTrace();
				}
				byte [] a = new byte[4];
				a[0] = (byte) ((sedentary  <<7)|(time & 0xff));
				a[1] = (byte) ((interval & 0xff)<<3);
				a[2] = 0;
				a[3] = 0;
				peripheral.writeCmd(a.length, 0x07,a);

			} else if ("cmdNodeRecord".equals(optType)) {// 请求历史数据节点记录设置
				final int[] date = new int[5];
				Log.i(TAG, "历史数据节点记录： ----》 " + optValue.toString());

				PluginResult result = new PluginResult(PluginResult.Status.OK,
						peripheral.asJSONObject());
				result.setKeepCallback(true);
				callbackContext.sendPluginResult(result);
				JSONObject jsonObject;
				try {
					jsonObject = new JSONObject(optValue);
					date[0] = Integer.parseInt(jsonObject.getString("year"));
					date[1] = Integer.parseInt(jsonObject.getString("month"));
					date[2] = Integer.parseInt(jsonObject.getString("day"));
					date[3] = Integer.parseInt(jsonObject.getString("hours"));
					date[4] = Integer.parseInt(jsonObject.getString("type"));
				} catch (JSONException e) {
					e.printStackTrace();
				}
				Util.setRecordDate(date);
				peripheral.setRecord(date[4]);
			}else if("cmdScreenSetting".equals(optType)){
				int screenSetting = Integer.parseInt(optValue);
				Log.i("main", "----cmdScreenSetting----" + screenSetting);
				PluginResult result = new PluginResult(PluginResult.Status.OK,
						peripheral.asJSONObject());
				result.setKeepCallback(true);
				byte [] a = {(byte) screenSetting};
				peripheral.writeCmd(1, 0x0f,a);

			}else if("cmdTimerHeart".equals(optType)){ //定时心率检测
				int timeHeart = Integer.parseInt(optValue);
				Log.i("main", "----cmdTimerHeart----" + timeHeart);
				PluginResult result = new PluginResult(PluginResult.Status.OK,
						peripheral.asJSONObject());
				result.setKeepCallback(true);
				byte [] a = {(byte) timeHeart};
				peripheral.writeCmd(a.length, 0x0f,a);
			}else if("cmdFallAlarm".equals(optType)){
				int fall = 0;
				String number = null;
				String message = null;
				Log.i(TAG, "cmdFallAlarm1 ----》 " + optValue.toString());

				JSONObject jsonObject;
					try {
						jsonObject = new JSONObject(optValue);
						fall = Integer.parseInt(jsonObject.getString("fall"));
						number = jsonObject.getString("number");
						message = jsonObject.getString("message");
					} catch (JSONException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}

				isFallAlarm = fall;
				mNumber = number;
				mMessage = message;
				peripheral.isFallAlarm = isFallAlarm;
				peripheral.number = mNumber;
				peripheral.message = mMessage;
			}

		} else {
			if ("cmdSms".equals(optType)) {
				PluginResult result = new PluginResult(PluginResult.Status.OK);
				result.setKeepCallback(true);
				sms = Integer.parseInt(optValue);
				Log.i(TAG, "----短信提醒设置----" + sms);

			} else if ("cmdCall".equals(optType)) { // 来电提醒
				PluginResult result = new PluginResult(PluginResult.Status.OK);
				result.setKeepCallback(true);
				call = Integer.parseInt(optValue);
				Log.i(TAG, "----来电提醒设置----" + call);

			} else if ("cmdChat".equals(optType)) { // 微信提醒
        PluginResult result = new PluginResult(PluginResult.Status.OK);
        result.setKeepCallback(true);
        chat = Integer.parseInt(optValue);
        Log.i(TAG, "----微信提醒设置----" + chat);
        mService.setchat(chat);
      }else if ("cmdQQ".equals(optType)) { // QQ提醒
        PluginResult result = new PluginResult(PluginResult.Status.OK);
        result.setKeepCallback(true);
        qqpush = Integer.parseInt(optValue);
        Log.i(TAG, "----QQ提醒设置----" + qqpush);
        mService.setqqpush(qqpush);
      } else if("cmdFallAlarm".equals(optType)){

				Log.i(TAG, "cmdFallAlarm2 ----》 " + optValue.toString());

				int fall = 0 ;
				String number = null;
				String message = null;
				JSONObject jsonObject;
					try {
						jsonObject = new JSONObject(optValue);
						fall = Integer.parseInt(jsonObject.getString("fall"));
						number = jsonObject.getString("number");
						message = jsonObject.getString("message");
					} catch (JSONException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}

				isFallAlarm = fall;
				mNumber = number;
				mMessage = message;
			}
		}
	}

	private void setSport(int sp) {
		util = new Util();
		util.setSports(sp);
	}

	private void alarm1() {
		// util = new Util();
		Util.alarm1(silentYear1, silentMonth1, silentDay1, silentHour1,
				silentMinute1, silentWeekDay1, isAlarm1, alarm_index1);
		Util.alarm2(silentYear2, silentMonth2, silentDay2, silentHour2,
				silentMinute2, silentWeekDay2, isAlarm2, alarm_index2);
		Util.alarm3(silentYear3, silentMonth3, silentDay3, silentHour3,
				silentMinute3, silentWeekDay3, isAlarm3, alarm_index3);
	}

	/** 闹钟1 */

	/**
	 * 用户个人信息
	 * */

	public int[] getUserData() {
		int[] user = new int[5];
		user[0] = year;
		user[1] = month;
		user[2] = sex;
		user[3] = height;
		user[4] = weight;
		return user;
	}

	public int[] getSetTime() {
		int[] time = new int[7];
		time[0] = set_year;
		time[1] = set_month;
		time[2] = set_day;
		time[3] = set_hours;
		time[4] = set_minute;
		time[5] = 0;
		time[6] = 1;
		return time;
	}

	private void connect(CallbackContext callbackContext, String macAddress,
			String isFrist) {
		Log.i("BLECentra", "connect macAddress...." + macAddress);
		int is_frist = Integer.parseInt(isFrist);
		bluetoothAdapter.stopLeScan(BLECentralPlugin.this);
		if (stopScannerTimer != null)
			stopScannerTimer.cancel();
		opendBLE = false;
		Peripheral peripheral = peripherals.get(macAddress);
		if (is_frist == 1) {
			isFristLogin = true;
		} else {
			isFristLogin = false;
		}
		Log.i(TAG, "是否需要绑定。。。" + is_frist + " /" + isFristLogin);
		if (isFristLogin) {
			if (peripheral != null) {
				peripheral.connect(callbackContext, cordova.getActivity());
				peripheral.isFallAlarm = isFallAlarm;
				peripheral.number = mNumber;
				peripheral.message = mMessage;
			}else{
				BluetoothDevice device = bluetoothAdapter
						.getRemoteDevice(macAddress);
				Peripheral boundPeripheral = new Peripheral(device, 0,
						new byte[] {});
				boundPeripheral.isFirstConnect = false;
				peripherals.put(macAddress, boundPeripheral);
				if (enableBlue())
					boundPeripheral.connect(callbackContext, cordova.getActivity());
				else
					boundPeripheral.m_connectCallback = callbackContext;

				boundPeripheral.isFallAlarm = isFallAlarm;
				boundPeripheral.number = mNumber;
				boundPeripheral.message = mMessage;
			}
		} else {
			BluetoothDevice device = bluetoothAdapter
					.getRemoteDevice(macAddress);
			Peripheral boundPeripheral = new Peripheral(device, 0,
					new byte[] {});
			boundPeripheral.isFirstConnect = false;
			peripherals.put(macAddress, boundPeripheral);
			if (enableBlue())
				boundPeripheral.connect(callbackContext, cordova.getActivity());
			else
				boundPeripheral.m_connectCallback = callbackContext;

			boundPeripheral.isFallAlarm = isFallAlarm;
			boundPeripheral.number = mNumber;
			boundPeripheral.message = mMessage;
		}

	}

	private void disconnect(CallbackContext callbackContext, String macAddress) {
		Peripheral peripheral = peripherals.get(macAddress);
		peripheral.isFirstConnect = true;

		if (peripheral != null && peripheral.isConnected()) {
			LOG.i("BLECentra", "no null..." + macAddress);
			peripheral.disconnectBound(callbackContext);
		} else {
			LOG.i("BLECentra", "null..." + macAddress);
			peripheral.disconnect();
			callbackContext.error("device_not_connect");
		}
	}

	public void getRSSI(CallbackContext callbackContext, String macAddress) {
		Peripheral peripheral = peripherals.get(macAddress);
		if (peripheral != null) {
			peripheral.getRSSI(callbackContext);
		} else {
			callbackContext.error("Peripheral " + macAddress + " not found.");
		}
	}

	private void read(CallbackContext callbackContext, String macAddress,
			UUID serviceUUID, UUID characteristicUUID) {

		Peripheral peripheral = peripherals.get(macAddress);

		if (peripheral == null) {
			callbackContext.error("Peripheral " + macAddress + " not found.");
			return;
		}

		if (!peripheral.isConnected()) {
			callbackContext.error("Peripheral " + macAddress
					+ " is not connected.");
			return;
		}

		// peripheral.readCharacteristic(callbackContext, serviceUUID,
		// characteristicUUID);
		peripheral.queueRead(callbackContext, serviceUUID, characteristicUUID);

	}

	private void write(CallbackContext callbackContext, String macAddress,
			UUID serviceUUID, UUID characteristicUUID, byte[] data,
			int writeType) {

		Peripheral peripheral = peripherals.get(macAddress);

		if (peripheral == null) {
			callbackContext.error("Peripheral " + macAddress + " not found.");
			return;
		}

		if (!peripheral.isConnected()) {
			callbackContext.error("Peripheral " + macAddress
					+ " is not connected.");
			return;
		}

	}

	// 寄存器通知回调
	private void registerNotifyCallback(CallbackContext callbackContext,
			String macAddress, UUID serviceUUID, UUID characteristicUUID) {

		Peripheral peripheral = peripherals.get(macAddress);
		if (peripheral != null) {

			// peripheral.setOnDataCallback(serviceUUID, characteristicUUID,
			// callbackContext);
			// peripheral.queueRegisterNotifyCallback(callbackContext,
			// serviceUUID, characteristicUUID);

		} else {

			callbackContext.error("Peripheral " + macAddress + " not found");

		}

	}

	// 删除通知回调
	private void removeNotifyCallback(CallbackContext callbackContext,
			String macAddress, UUID serviceUUID, UUID characteristicUUID) {

		Peripheral peripheral = peripherals.get(macAddress);
		if (peripheral != null) {

			peripheral.queueRemoveNotifyCallback(callbackContext, serviceUUID,
					characteristicUUID);

		} else {

			callbackContext.error("Peripheral " + macAddress + " not found");

		}

	}

	// 查找低功耗设备
	private void findLowEnergyDevices(CallbackContext callbackContext,
			UUID[] serviceUUIDs, int scanSeconds) {

		for (Iterator<Map.Entry<String, Peripheral>> iterator = peripherals
				.entrySet().iterator(); iterator.hasNext();) {
			Map.Entry<String, Peripheral> entry = iterator.next();
			if (entry.getValue().isFirstConnect) {
				iterator.remove();
			}
		}
		discoverCallback = callbackContext;

		if (stopScannerTimer != null)
			stopScannerTimer.cancel();

		if (serviceUUIDs.length > 0) {
			bluetoothAdapter.startLeScan(serviceUUIDs, this);
		} else {
			bluetoothAdapter.startLeScan(this);
		}

		if (scanSeconds > 0) {
			stopScannerTimer = new Timer();
			stopScannerTimer.schedule(new TimerTask() {
				@Override
				public void run() {
					BLECentralPlugin.this.bluetoothAdapter
							.stopLeScan(BLECentralPlugin.this);
				}
			}, scanSeconds * 1000);
		}

		PluginResult result = new PluginResult(PluginResult.Status.NO_RESULT);
		result.setKeepCallback(true);
		callbackContext.sendPluginResult(result);
	}

	@Override
	public void onLeScan(BluetoothDevice device, int rssi, byte[] scanRecord) {

		String address = device.getAddress();
		Log.i(TAG, "address-->" + address);
		// if (!peripherals.containsKey(address)) {

		Peripheral peripheral = new Peripheral(device, rssi, scanRecord);
//		if (!peripherals.containsKey(address)) {
			peripherals.put(device.getAddress(), peripheral);
			if (discoverCallback != null) {
				PluginResult result = new PluginResult(PluginResult.Status.OK,
						peripheral.asJSONObject());
				result.setKeepCallback(true);
				discoverCallback.sendPluginResult(result);
			}
//		} else {
//			// // this isn't necessary
//			Peripheral peripheral2 = peripherals.get(address);
//			peripheral.updateRssi(rssi);
//		}

	}

	@Override
	public void onActivityResult(int requestCode, int resultCode, Intent data) {

		if (requestCode == REQUEST_ENABLE_BLUETOOTH) {

			if (resultCode == Activity.RESULT_OK) {
				LOG.d(TAG, "User enabled Bluetooth");
				ble_trun = "yes";
				if (enableBluetoothCallback != null) {
					enableBluetoothCallback.success();
				}
			} else {
				LOG.d(TAG, "User did *NOT* enable Bluetooth");
				ble_trun = "no";
				if (enableBluetoothCallback != null) {
					enableBluetoothCallback
							.error("User did not enable Bluetooth");
				}
			}

			enableBluetoothCallback = null;
		}
	}

	private UUID uuidFromString(String uuid) {
		return UUIDHelper.uuidFromString(uuid);
	}

}
