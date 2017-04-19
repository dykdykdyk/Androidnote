package com.megster.cordova.ble.central;

import android.app.Activity;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothManager;
import android.content.Context;
import android.content.Intent;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.provider.Settings;
import android.text.format.Time;
import android.util.Log;
import org.apache.cordova.CallbackContext;
import org.apache.cordova.CordovaArgs;
import org.apache.cordova.CordovaInterface;
import org.apache.cordova.CordovaPlugin;
import org.apache.cordova.CordovaWebView;
import org.apache.cordova.LOG;
import org.apache.cordova.PluginResult;
import org.json.JSONArray;
import org.json.JSONException;
import com.ustone.plugin.wifi.WifiNative;
import java.util.*;

public class BLECentralPlugin extends CordovaPlugin implements BluetoothAdapter.LeScanCallback {

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

	CallbackContext discoverCallback;
	private CallbackContext enableBluetoothCallback;

	private static final String TAG = "BLEPlugin";
	private static final int REQUEST_ENABLE_BLUETOOTH = 1;

	BluetoothAdapter bluetoothAdapter;

	// key is the MAC Address
	Map<String, Peripheral> peripherals = new LinkedHashMap<String, Peripheral>();
	// 勿扰时段
	public int cmdSilentTime = 0;
	public int cmdSilentStartHour1 = 0;
	public int cmdSilentStartMinute1 = 0;
	public int cmdSilentStopHour1 = 0;
	public int cmdSilentStopMinute1 = 0;
	public int cmdSilentWeekDay1 = 0;
	public int cmdSilentStartHour2 = 0;
	public int cmdSilentStartMinute2 = 0;
	public int cmdSilentStopHour2 = 0;
	public int cmdSilentStopMinute2 = 0;
	public int cmdSilentWeekDay2 = 0;
	public String binaryString1 = null;
	// 勿扰区域
	public int cmdSilentArea = 0;
	public int home = 1;
	public int company = 1;
	public int other = 1;
	public String currentWifi = "";

	WifiNative wifiNative;
	WifiManager wifiManager;

	BLECommand bleCom;
	public static int timeNotDisturb = 1;
	public static int areaNotDisturb = 1;

	@Override
	public boolean execute(String action, CordovaArgs args, CallbackContext callbackContext) throws JSONException {

		LOG.d(TAG, "action = " + action);

		if (bluetoothAdapter == null) {
			Activity activity = cordova.getActivity();
			BluetoothManager bluetoothManager = (BluetoothManager) activity.getSystemService(Context.BLUETOOTH_SERVICE);
			bluetoothAdapter = bluetoothManager.getAdapter();
		}

		boolean validAction = true;

		if (action.equals(SCAN)) {

			UUID[] serviceUUIDs = parseServiceUUIDList(args.getJSONArray(0));
			int scanSeconds = args.getInt(1);
			findLowEnergyDevices(callbackContext, serviceUUIDs, scanSeconds);

		} else if (action.equals(START_SCAN)) {

			UUID[] serviceUUIDs = parseServiceUUIDList(args.getJSONArray(0));
			findLowEnergyDevices(callbackContext, serviceUUIDs, -1);

		} else if (action.equals(STOP_SCAN)) {

			bluetoothAdapter.stopLeScan(this);
			callbackContext.success();

		} else if (action.equals(SETOPTION)) {

			String macAddress = args.getString(0);
			String optType = args.getString(1);
			String optValue = args.getString(2);
			// Log.i("main", "----execute.setOption----");
			setOption(callbackContext, macAddress, optType, optValue);

		} else if (action.equals(CONNECT)) {

			String macAddress = args.getString(0);
			connect(callbackContext, macAddress);

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
			byte[] data = args.getArrayBuffer(3);
			int type = BluetoothGattCharacteristic.WRITE_TYPE_DEFAULT;
			write(callbackContext, macAddress, serviceUUID, characteristicUUID, data, type);

		} else if (action.equals(WRITE_WITHOUT_RESPONSE)) {

			String macAddress = args.getString(0);
			UUID serviceUUID = uuidFromString(args.getString(1));
			UUID characteristicUUID = uuidFromString(args.getString(2));
			byte[] data = args.getArrayBuffer(3);
			int type = BluetoothGattCharacteristic.WRITE_TYPE_NO_RESPONSE;
			write(callbackContext, macAddress, serviceUUID, characteristicUUID, data, type);

		} else if (action.equals(START_NOTIFICATION)) {

			String macAddress = args.getString(0);
			UUID serviceUUID = uuidFromString(args.getString(1));
			UUID characteristicUUID = uuidFromString(args.getString(2));
			registerNotifyCallback(callbackContext, macAddress, serviceUUID, characteristicUUID);

		} else if (action.equals(STOP_NOTIFICATION)) {

			String macAddress = args.getString(0);
			UUID serviceUUID = uuidFromString(args.getString(1));
			UUID characteristicUUID = uuidFromString(args.getString(2));
			removeNotifyCallback(callbackContext, macAddress, serviceUUID, characteristicUUID);

		} else if (action.equals(IS_ENABLED)) {

			if (bluetoothAdapter.isEnabled()) {
				callbackContext.success();
			} else {
				callbackContext.error("Bluetooth is disabled.");
			}

		} else if (action.equals(IS_CONNECTED)) {

			String macAddress = args.getString(0);

			if (peripherals.containsKey(macAddress) && peripherals.get(macAddress).isConnected()) {
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
			cordova.startActivityForResult(this, intent, REQUEST_ENABLE_BLUETOOTH);

		} else {

			validAction = false;

		}

		return validAction;
	}

	private UUID[] parseServiceUUIDList(JSONArray jsonArray) throws JSONException {
		List<UUID> serviceUUIDs = new ArrayList<UUID>();

		for (int i = 0; i < jsonArray.length(); i++) {
			String uuidString = jsonArray.getString(i);
			serviceUUIDs.add(uuidFromString(uuidString));
		}

		return serviceUUIDs.toArray(new UUID[jsonArray.length()]);
	}

	private void setOption(CallbackContext callbackContext, String macAddress, String optType, String optValue) {
		Peripheral peripheral = peripherals.get(macAddress);
		// Log.i("main", "----peripheral:" + peripheral + "----");

		if (peripheral != null) {
			if ("cmdAppAlert".equals(optType)) {
				Log.i("main", "----AppAlert----");
				peripheral.m_cmdAppAlert = Integer.parseInt(optValue);
				Log.i("main", ">>>>>optValue:" + optValue);
				PluginResult result = new PluginResult(PluginResult.Status.OK, peripheral.asJSONObject());
				result.setKeepCallback(true);
				callbackContext.sendPluginResult(result);

			} else if ("cmdAlertTime".equals(optType)) {
				Log.i("main", "----AlertTime----");
				String optTemp = optValue.substring(0, optValue.length() - 1);
				peripheral.m_cmdAlertTime = Integer.parseInt(optTemp);
				Log.i("main", ">>>>>optTemp:" + optTemp);
				PluginResult result = new PluginResult(PluginResult.Status.OK, peripheral.asJSONObject());
				result.setKeepCallback(true);
				callbackContext.sendPluginResult(result);

			} else if ("cmdReconnectAlert".equals(optType)) {
				Log.i("main", "----ReconnectAlert----");
				peripheral.m_cmdReconnectAlert = Integer.parseInt(optValue);
				Log.i("main", ">>>>>optValue:" + optValue);
				PluginResult result = new PluginResult(PluginResult.Status.OK, peripheral.asJSONObject());
				result.setKeepCallback(true);
				callbackContext.sendPluginResult(result);
			} else if ("cmdItemAlert".equals(optType)) {
				Log.i("main", "----ItemAlert----");
				peripheral.m_cmdItemAlert = Integer.parseInt(optValue);
				Log.i("main", ">>>>>optValue:" + optValue);
				PluginResult result = new PluginResult(PluginResult.Status.OK, peripheral.asJSONObject());
				result.setKeepCallback(true);
				callbackContext.sendPluginResult(result);
			}
			/**
			 * cmdSilentTime
			 */
		} else {

			Log.i("main", "---optType:" + optType);
			if ("cmdSilentTime".equals(optType)) {
				cmdSilentTime = Integer.parseInt(optValue);
				silentTimeAlert();
				Log.i("main", "---- cmdSilentTime：" + optValue);
				Log.i("main","---solveDate1(): "+solveDate1()+"-----solveDate2(): "+solveDate2());
				
			}
			//
			else if ("cmdSilentStartHour1".equals(optType)) {
				Log.i("main", "----cmdSilentStartHour1：" + optValue);
				cmdSilentStartHour1 = Integer.parseInt(optValue);
			} else if ("cmdSilentStartMinute1".equals(optType)) {
				Log.i("main", "----cmdSilentStartMinute1：" + optValue);
				cmdSilentStartMinute1 = Integer.parseInt(optValue);
			} else if ("cmdSilentStopHour1".equals(optType)) {
				Log.i("main", "----cmdSilentStopHour1：" + optValue);
				cmdSilentStopHour1 = Integer.parseInt(optValue);
			} else if ("cmdSilentStopMinute1".equals(optType)) {
				Log.i("main", "----cmdSilentStopMinute1：" + optValue);
				cmdSilentStopMinute1 = Integer.parseInt(optValue);
			}
			//
			else if ("cmdSilentWeekDay1".equals(optType)) {
				cmdSilentWeekDay1 = Integer.parseInt(optValue);
				Log.i("main", "----cmdSilentWeekDay1：" + cmdSilentWeekDay1);
			}
			//
			else if ("cmdSilentStartHour2".equals(optType)) {
				cmdSilentStartHour2 = Integer.parseInt(optValue);
				Log.i("main", "----cmdSilentStartHour2：" + optValue);
			} else if ("cmdSilentStartMinute2".equals(optType)) {
				cmdSilentStartMinute2 = Integer.parseInt(optValue);
				Log.i("main", "----cmdSilentStartMinute2：" + optValue);
			} else if ("cmdSilentStopHour2".equals(optType)) {
				cmdSilentStopHour2 = Integer.parseInt(optValue);
				Log.i("main", "----cmdSilentStopHour2：" + optValue);
			} else if ("cmdSilentStopMinute2".equals(optType)) {
				cmdSilentStopMinute2 = Integer.parseInt(optValue);
				Log.i("main", "----cmdSilentStopMinute2：" + optValue);
			}
			//
			else if ("cmdSilentWeekDay2".equals(optType)) {
				cmdSilentWeekDay2 = Integer.parseInt(optValue);
				Log.i("main", "----cmdSilentWeekDay2：" + optValue);
			}

			/**
			 * CmdSilentArea
			 */
			else if ("cmdSilentArea".equals(optType)) {
				Log.i("main", "----cmdSilentArea：" + optValue);
				cmdSilentArea = Integer.parseInt(optValue);
				Log.i("main", "------currentWifi-----：" + currentWifi);
				Log.i("main", "----home:" + home + "-----company:" + company + "----other:" + other);
				silentAreaAlert();

			} else if ("cmdSilentWifi1".equals(optType)) {
				String optValue1 = "\"" + optValue + "\"";
				Log.i("main", "----home：" + optValue1);
				Log.i("main", "----currentWifi：" + currentWifi);
				if (optValue1.equals(currentWifi)) {
					home = 0;
					Log.i("main", "home：" + home);
				} else {
					home = 1;
					Log.i("main", "home：" + home);
				}

			} else if ("cmdSilentWifi2".equals(optType)) {
				String optValue1 = "\"" + optValue + "\"";
				Log.i("main", "----company：" + optValue1);
				Log.i("main", "----currentWifi：" + currentWifi);
				if (optValue1.equals(currentWifi)) {
					company = 0;
					Log.i("main", "company：" + company);
				} else {
					company = 1;
					Log.i("main", "company：" + company);
				}
			} else if ("cmdSilentWifi3".equals(optType)) {
				String optValue1 = "\"" + optValue + "\"";
				Log.i("main", "----other：" + optValue1);
				Log.i("main", "----currentWifi：" + currentWifi);
				if (optValue1.equals(currentWifi)) {
					other = 0;
					Log.i("main", "other：" + other);
				} else {
					other = 1;
					Log.i("main", "other：" + other);
				}
			}
		}
	}

	@Override
	public void initialize(CordovaInterface cordova, CordovaWebView webView) {
		super.initialize(cordova, webView);
		wifiManager = (WifiManager) cordova.getActivity().getSystemService(Context.WIFI_SERVICE);
		WifiInfo wifiInfo = wifiManager.getConnectionInfo();
		currentWifi = wifiInfo.getSSID();
	}

	public void silentTimeAlert() {
		if (cmdSilentTime == 0) {
			timeNotDisturb = 1;
		} else if (cmdSilentTime == 1) {
			if (solveDate1() == 1 && solveDate2() == 1) {
				timeNotDisturb = 1;
			} else {
				timeNotDisturb = 0;
			}
		}

	}

	public void silentAreaAlert() {
		if (cmdSilentArea == 0) {
			areaNotDisturb = 1;
		} else if (cmdSilentArea == 1) {
			if (home == 1 && company == 1 && other == 1) {
				areaNotDisturb = 1;
			} else {
				areaNotDisturb = 0;
			}
		}
	}

	public int solveDate1() {
		String[] weekDays = { "周日", "周一", "周二", "周三", "周四", "周五", "周六" };
		Calendar cal = Calendar.getInstance();
		int num = cal.get(Calendar.DAY_OF_WEEK) - 1;
		if (num < 0)
			num = 0;
		String todayWeek = weekDays[num];
		Log.i("main", "----todayweek:" + todayWeek);
		String binaryString1 = Integer.toBinaryString(cmdSilentWeekDay1);
		binaryString1 = new StringBuffer(binaryString1).reverse().toString();
		Log.i("main", "-----binaryString1:" + binaryString1);
		List<String> weekList = new ArrayList<String>();
		//
		for (int i = 0; i < binaryString1.length(); i++) {

			if (binaryString1.charAt(i) == '1') {
				String setWeek = weekDays[i];
				Log.i("main", "-----setweek:" + setWeek);
				weekList.add(setWeek);
			}
		}
		for (String w : weekList) {
			Log.i("main", "-----WeekList:" + w);

			if (weekList.contains(todayWeek)) {
				Log.i("main", "----Today is AlertWeek!");
				int result = solveTime1();
				Log.i("main", "---solveTime1()：" + result);
				return result;
			} else {
				Log.i("main", "----Today isn't AlertWeek!");
				return 1;
			}

		}
		return 1;

	}

	public int solveDate2() {
		String[] weekDays = { "周日", "周一", "周二", "周三", "周四", "周五", "周六" };
		Calendar cal = Calendar.getInstance();
		int num = cal.get(Calendar.DAY_OF_WEEK) - 1;
		if (num < 0)
			num = 0;
		String todayWeek = weekDays[num];
		Log.i("main", "----todayweek:" + todayWeek);
		String binaryString2 = Integer.toBinaryString(cmdSilentWeekDay2);
		binaryString2 = new StringBuffer(binaryString2).reverse().toString();
		Log.i("main", "-----binaryString2:" + binaryString2);
		List<String> weekList = new ArrayList<String>();
		//
		for (int i = 0; i < binaryString2.length(); i++) {

			if (binaryString2.charAt(i) == '1') {
				String setWeek = weekDays[i];
				Log.i("main", "-----setweek:" + setWeek);
				weekList.add(setWeek);
			}
		}
		for (String w : weekList) {
			Log.i("main", "-----WeekList:" + w);

			if (weekList.contains(todayWeek)) {
				Log.i("main", "----Today is AlertWeek!");
				int result = solveTime2();
				Log.i("main", "---solveTime2()：" + result);
				return result;
			} else {
				Log.i("main", "----Today isn't AlertWeek!");
				return 1;
			}

		}
		return 1;

	}

	public int solveTime1() {
		Time time = new Time();
		time.setToNow();
		int hour = time.hour;
		int minute = time.minute;
		Log.i("main", "---hour:" + hour + "min:" + minute);
		if (hour > cmdSilentStartHour1 && hour < cmdSilentStopHour1) {
			return 0;
		} else if (hour == cmdSilentStartHour1 && hour == cmdSilentStopHour1) {
			if (minute > cmdSilentStartMinute1 && minute < cmdSilentStopMinute1) {
				return 0;
			} else {
				return 1;
			}
		} else if (hour == cmdSilentStartHour1 && hour < cmdSilentStopHour1) {
			if (minute > cmdSilentStartMinute1) {
				return 0;
			} else {
				return 1;
			}
		} else if (hour > cmdSilentStartHour1 && hour == cmdSilentStopHour1) {
			if (minute < cmdSilentStopMinute1) {
				return 0;
			} else {
				return 1;
			}
		} else {
			return 1;
		}
	}

	public int solveTime2() {
		Time time = new Time();
		time.setToNow();
		int hour = time.hour;
		int minute = time.minute;
		Log.i("main", "---hour:" + hour + "min:" + minute);
		if (hour > cmdSilentStartHour2 && hour < cmdSilentStopHour2) {
			return 0;
		} else if (hour == cmdSilentStartHour2 && hour == cmdSilentStopHour2) {
			if (minute > cmdSilentStartMinute2 && minute < cmdSilentStopMinute2) {
				return 0;
			} else {
				return 1;
			}
		} else if (hour == cmdSilentStartHour2 && hour < cmdSilentStopHour2) {
			if (minute > cmdSilentStartMinute2) {
				return 0;
			} else {
				return 1;
			}
		} else if (hour > cmdSilentStartHour2 && hour == cmdSilentStopHour2) {
			if (minute < cmdSilentStopMinute2) {
				return 0;
			} else {
				return 1;
			}

		} else {
			return 1;
		}
	}

	private void connect(CallbackContext callbackContext, String macAddress) {

		Peripheral peripheral = peripherals.get(macAddress);
		if (peripheral != null) {
			peripheral.connect(callbackContext, cordova.getActivity());
		} else {
			callbackContext.error("Peripheral " + macAddress + " not found.");
		}

	}

	private void disconnect(CallbackContext callbackContext, String macAddress) {

		Peripheral peripheral = peripherals.get(macAddress);
		if (peripheral != null) {
			peripheral.disconnect();
		}
		callbackContext.success();

	}

	public void getRSSI(CallbackContext callbackContext, String macAddress) {
		Peripheral peripheral = peripherals.get(macAddress);
		if (peripheral != null) {
			peripheral.getRSSI(callbackContext);
		} else {
			callbackContext.error("Peripheral " + macAddress + " not found.");
		}
	}

	private void read(CallbackContext callbackContext, String macAddress, UUID serviceUUID, UUID characteristicUUID) {

		Peripheral peripheral = peripherals.get(macAddress);

		if (peripheral == null) {
			callbackContext.error("Peripheral " + macAddress + " not found.");
			return;
		}

		if (!peripheral.isConnected()) {
			callbackContext.error("Peripheral " + macAddress + " is not connected.");
			return;
		}

		// peripheral.readCharacteristic(callbackContext, serviceUUID,
		// characteristicUUID);
		peripheral.queueRead(callbackContext, serviceUUID, characteristicUUID);

	}

	private void write(CallbackContext callbackContext, String macAddress, UUID serviceUUID, UUID characteristicUUID,
			byte[] data, int writeType) {

		Peripheral peripheral = peripherals.get(macAddress);

		if (peripheral == null) {
			callbackContext.error("Peripheral " + macAddress + " not found.");
			return;
		}

		if (!peripheral.isConnected()) {
			callbackContext.error("Peripheral " + macAddress + " is not connected.");
			return;
		}

		// peripheral.writeCharacteristic(callbackContext, serviceUUID,
		// characteristicUUID, data, writeType);
		peripheral.queueWrite(callbackContext, serviceUUID, characteristicUUID, data, writeType);

	}

	private void registerNotifyCallback(CallbackContext callbackContext, String macAddress, UUID serviceUUID,
			UUID characteristicUUID) {

		Peripheral peripheral = peripherals.get(macAddress);
		if (peripheral != null) {

			// peripheral.setOnDataCallback(serviceUUID, characteristicUUID,
			// callbackContext);
			peripheral.queueRegisterNotifyCallback(callbackContext, serviceUUID, characteristicUUID);

		} else {

			callbackContext.error("Peripheral " + macAddress + " not found");

		}

	}

	private void removeNotifyCallback(CallbackContext callbackContext, String macAddress, UUID serviceUUID,
			UUID characteristicUUID) {

		Peripheral peripheral = peripherals.get(macAddress);
		if (peripheral != null) {

			peripheral.queueRemoveNotifyCallback(callbackContext, serviceUUID, characteristicUUID);

		} else {

			callbackContext.error("Peripheral " + macAddress + " not found");

		}

	}

	private void findLowEnergyDevices(CallbackContext callbackContext, UUID[] serviceUUIDs, int scanSeconds) {

		for (Iterator<Map.Entry<String, Peripheral>> iterator = peripherals.entrySet().iterator(); iterator
				.hasNext();) {
			Map.Entry<String, Peripheral> entry = iterator.next();
			if (!entry.getValue().isConnected()) {
				iterator.remove();
			}
		}

		discoverCallback = callbackContext;

		if (serviceUUIDs.length > 0) {
			bluetoothAdapter.startLeScan(serviceUUIDs, this);
		} else {
			bluetoothAdapter.startLeScan(this);
		}

		if (scanSeconds > 0) {
			Handler handler = new Handler();
			handler.postDelayed(new Runnable() {
				@Override
				public void run() {
					LOG.d(TAG, "Stopping Scan");
					BLECentralPlugin.this.bluetoothAdapter.stopLeScan(BLECentralPlugin.this);
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

		if (!peripherals.containsKey(address)) {

			Peripheral peripheral = new Peripheral(device, rssi, scanRecord);
			peripherals.put(device.getAddress(), peripheral);

			if (discoverCallback != null) {
				PluginResult result = new PluginResult(PluginResult.Status.OK, peripheral.asJSONObject());
				result.setKeepCallback(true);
				discoverCallback.sendPluginResult(result);
			}

		} else {
			// this isn't necessary
			Peripheral peripheral = peripherals.get(address);
			peripheral.updateRssi(rssi);
		}

		// TODO offer option to return duplicates

	}

	@Override
	public void onActivityResult(int requestCode, int resultCode, Intent data) {

		if (requestCode == REQUEST_ENABLE_BLUETOOTH) {

			if (resultCode == Activity.RESULT_OK) {
				LOG.d(TAG, "User enabled Bluetooth");
				if (enableBluetoothCallback != null) {
					enableBluetoothCallback.success();
				}
			} else {
				LOG.d(TAG, "User did *NOT* enable Bluetooth");
				if (enableBluetoothCallback != null) {
					enableBluetoothCallback.error("User did not enable Bluetooth");
				}
			}

			enableBluetoothCallback = null;
		}
	}

	private UUID uuidFromString(String uuid) {
		return UUIDHelper.uuidFromString(uuid);
	}

}
