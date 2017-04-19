package com.megster.cordova.ble.central;

import com.ionicframework.ufind1210015.MainActivity;
import com.ionicframework.ufind1210015.R;

import android.app.Activity;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;

import android.bluetooth.*;
import android.content.Context;
import android.content.Intent;
import android.content.res.AssetFileDescriptor;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.util.Base64;
import android.util.Log;

import org.apache.cordova.CallbackContext;
import org.apache.cordova.LOG;
import org.apache.cordova.PluginResult;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.IOException;
import java.util.*;
import java.util.concurrent.ConcurrentLinkedQueue;

/**
 * Peripheral wraps the BluetoothDevice and provides methods to convert to JSON.
 */
public class Peripheral extends BluetoothGattCallback {

	// 0x2902
	// org.bluetooth.descriptor.gatt.client_characteristic_configuration.xml
	// public final static UUID CLIENT_CHARACTERISTIC_CONFIGURATION_UUID =
	// UUID.fromString("00002902-0000-1000-8000-00805F9B34FB");
	public final static UUID CLIENT_CHARACTERISTIC_CONFIGURATION_UUID = UUIDHelper.uuidFromString("2902");
	private static final String TAG = "Peripheral";

	public int m_cmdAppAlert = 0;
	public int m_cmdAlertTime = 0;
	public int m_cmdReconnectAlert = 0;
	public int m_cmdItemAlert = 0;
	public int m_playcount = 0;

	private BluetoothDevice device;
	private byte[] advertisingData;
	private int advertisingRSSI;
	private boolean connected = false;
	private ConcurrentLinkedQueue<BLECommand> commandQueue = new ConcurrentLinkedQueue<BLECommand>();
	private boolean bleProcessing;

	BluetoothGatt m_gatt;
	Activity m_activity;

	private CallbackContext m_connectCallback;
	private CallbackContext m_readCallback;
	private CallbackContext m_writeCallback;
	private CallbackContext m_readRSSICallback;
	private Map<String, CallbackContext> m_notificationCallbacks = new HashMap<String, CallbackContext>();

	public Peripheral(BluetoothDevice device, int advertisingRSSI, byte[] scanRecord) {

		this.device = device;
		this.advertisingRSSI = advertisingRSSI;
		this.advertisingData = scanRecord;

	}

	public void connect(CallbackContext callbackContext, Activity activity) {
		BluetoothDevice device = getDevice();
		m_connectCallback = callbackContext;
		m_activity = activity;
		m_gatt = device.connectGatt(activity, false, this);

		PluginResult result = new PluginResult(PluginResult.Status.NO_RESULT);
		result.setKeepCallback(true);
		callbackContext.sendPluginResult(result);
		Log.i("main", "-------connect");
	}

	public void getRSSI(CallbackContext callbackContext) {
		if (m_gatt != null) {
			m_readRSSICallback = callbackContext;
			m_gatt.readRemoteRssi();
		} else {
			LOG.e(TAG, "getRSSI failed: gatt is not exist");
			callbackContext.error("getRSSI failed: gatt is not exist");
		}

	}

	public void disconnect() {
		m_connectCallback = null;
		connected = false;
		if (m_gatt != null) {
			m_gatt.close();
			m_gatt = null;
		}
		Log.i("main", "-----disconnect");
	}

	public JSONObject asJSONObject() {

		JSONObject json = new JSONObject();

		try {
			json.put("name", device.getName());
			json.put("id", device.getAddress()); // mac address
			json.put("advertising", byteArrayToJSON(advertisingData));
			// TODO real RSSI if we have it, else
			json.put("rssi", advertisingRSSI);
		} catch (JSONException e) { // this shouldn't happen
			e.printStackTrace();
		}

		return json;
	}

	public JSONObject asJSONObject(BluetoothGatt gatt) {

		JSONObject json = asJSONObject();

		try {
			JSONArray servicesArray = new JSONArray();
			JSONArray characteristicsArray = new JSONArray();
			json.put("services", servicesArray);
			json.put("characteristics", characteristicsArray);

			if (connected && gatt != null) {
				for (BluetoothGattService service : gatt.getServices()) {
					servicesArray.put(UUIDHelper.uuidToString(service.getUuid()));

					for (BluetoothGattCharacteristic characteristic : service.getCharacteristics()) {
						JSONObject characteristicsJSON = new JSONObject();
						characteristicsArray.put(characteristicsJSON);

						characteristicsJSON.put("service", UUIDHelper.uuidToString(service.getUuid()));
						characteristicsJSON.put("characteristic", UUIDHelper.uuidToString(characteristic.getUuid()));
						// characteristicsJSON.put("instanceId",
						// characteristic.getInstanceId());

						characteristicsJSON.put("properties", Helper.decodeProperties(characteristic));
						// characteristicsJSON.put("propertiesValue",
						// characteristic.getProperties());

						if (characteristic.getPermissions() > 0) {
							characteristicsJSON.put("permissions", Helper.decodePermissions(characteristic));
							// characteristicsJSON.put("permissionsValue",
							// characteristic.getPermissions());
						}

						JSONArray descriptorsArray = new JSONArray();

						for (BluetoothGattDescriptor descriptor : characteristic.getDescriptors()) {
							JSONObject descriptorJSON = new JSONObject();
							descriptorJSON.put("uuid", UUIDHelper.uuidToString(descriptor.getUuid()));
							descriptorJSON.put("value", descriptor.getValue()); // always
																				// blank

							if (descriptor.getPermissions() > 0) {
								descriptorJSON.put("permissions", Helper.decodePermissions(descriptor));
								// descriptorJSON.put("permissionsValue",
								// descriptor.getPermissions());
							}
							descriptorsArray.put(descriptorJSON);
						}
						if (descriptorsArray.length() > 0) {
							characteristicsJSON.put("descriptors", descriptorsArray);
						}
					}
				}
			}
		} catch (JSONException e) { // TODO better error handling
			e.printStackTrace();
		}

		return json;
	}

	static JSONObject byteArrayToJSON(byte[] bytes) throws JSONException {
		JSONObject object = new JSONObject();
		object.put("CDVType", "ArrayBuffer");
		object.put("data", Base64.encodeToString(bytes, Base64.NO_WRAP));
		return object;
	}

	public boolean isConnected() {
		return connected;
	}

	public BluetoothDevice getDevice() {
		return device;
	}

	public void localAlert() {
		Context context = m_activity.getApplicationContext();

		MediaPlayer mediaPlayer = new MediaPlayer();
		mediaPlayer.setAudioStreamType(AudioManager.STREAM_MUSIC);
		mediaPlayer.setOnCompletionListener(new MediaPlayer.OnCompletionListener() {
			@Override
			public void onCompletion(MediaPlayer player) {
				if (m_playcount < m_cmdAlertTime) {
					player.seekTo(0);
					player.start();
					m_playcount += 2;
				} else {
					m_playcount = 0;
				}
			}
		});

		AssetFileDescriptor file = context.getResources().openRawResourceFd(R.raw.alert);
		try {
			mediaPlayer.setDataSource(file.getFileDescriptor(), file.getStartOffset(), file.getLength());
			file.close();
			mediaPlayer.prepare();
		} catch (IOException ioe) {
			LOG.w(TAG, "setDataSource failed");
			mediaPlayer = null;
		}

		mediaPlayer.start();
	}

	@SuppressWarnings("deprecation")
	public void localNotification() {

		String ns = Context.NOTIFICATION_SERVICE;
		NotificationManager mNotificationManager = (NotificationManager) m_activity.getSystemService(ns);

		int icon = R.drawable.icon;
		CharSequence tickerText = "小U防丢器断开了";
		long when = System.currentTimeMillis();

		Notification notification = new Notification(icon, tickerText, when);
		notification.flags |= Notification.FLAG_ONGOING_EVENT;
		// notification.sound =
		// Uri.parse("android.resource://com.ionicframework.ufind1210015/" +
		// R.raw.alert);
		notification.defaults |= Notification.DEFAULT_VIBRATE;
		notification.flags |= Notification.FLAG_AUTO_CANCEL;

		Context context = m_activity.getApplicationContext();
		CharSequence contentTitle = "小U防丢器";
		CharSequence contentText = "断开了!";
		Intent notificationIntent = new Intent(context, MainActivity.class);
		PendingIntent contentIntent = PendingIntent.getActivity(context, 0, notificationIntent, 0);
		notification.setLatestEventInfo(context, contentTitle, contentText, contentIntent);
		mNotificationManager.notify(0, notification);
	}

	@Override
	public void onReadRemoteRssi(BluetoothGatt gatt, int rssi, int status) {
		if (status == BluetoothGatt.GATT_SUCCESS) {
			LOG.d(TAG, String.format("BluetoothGatt ReadRssi[%d]", rssi));
			PluginResult result = new PluginResult(PluginResult.Status.OK, rssi);
			result.setKeepCallback(true);
			m_readRSSICallback.sendPluginResult(result);
		} else {
			LOG.e(TAG, "BluetoothGatt ReadRssi failed. status = " + status);
			m_readRSSICallback.error("Error Reading RSSI, status is: " + status);
		}
	}

	@Override
	public void onServicesDiscovered(BluetoothGatt gatt, int status) {
		Log.i("main", "-------onServicesDiscovered");
		super.onServicesDiscovered(gatt, status);

		if (status == BluetoothGatt.GATT_SUCCESS) {
			PluginResult result = new PluginResult(PluginResult.Status.OK, this.asJSONObject(gatt));
			result.setKeepCallback(true);
			m_connectCallback.sendPluginResult(result);
		} else {
			m_connectCallback.error(this.asJSONObject());
			disconnect();

		}
		alertManage();
	}

	@Override
	public void onConnectionStateChange(BluetoothGatt gatt, int status, int newState) {
		Log.i("main", "----status: " + status + "-----newState: " + newState);
		this.m_gatt = gatt;
		if (newState == BluetoothGatt.STATE_CONNECTED) {
			connected = true;
			gatt.discoverServices();
			Log.i("main", "onConnectionStateChange----->success");

		} else {
			// if is disconnect,release resource！
			m_gatt.disconnect();
			m_gatt.close();
			Log.i("main", "onConnectionStateChange----->else");
			if (m_connectCallback != null) {
				PluginResult result = new PluginResult(PluginResult.Status.ERROR, this.asJSONObject());
				result.setKeepCallback(true);
				m_connectCallback.sendPluginResult(result);
			}
			localNotification();
			alertManage();
			m_gatt = device.connectGatt(m_activity, true, this);

		}
	}

	public void alertManage() {

		Log.i("main", "-----m_cmdAppAlert:" + m_cmdAppAlert + "-----m_cmdReconnectAlert:" + m_cmdReconnectAlert);
		Log.i("main", "-----timeNotDisturb:" + BLECentralPlugin.timeNotDisturb + "----areaNotDisturb:"
				+ BLECentralPlugin.areaNotDisturb);
		if (m_cmdAppAlert == 1 && m_cmdReconnectAlert == 1 && BLECentralPlugin.timeNotDisturb == 1
				&& BLECentralPlugin.areaNotDisturb == 1) {
			localAlert();
		}
	}

	@Override
	public void onCharacteristicChanged(BluetoothGatt gatt, BluetoothGattCharacteristic characteristic) {
		super.onCharacteristicChanged(gatt, characteristic);
		LOG.d(TAG, "onCharacteristicChanged " + characteristic);

		CallbackContext callback = m_notificationCallbacks.get(generateHashKey(characteristic));

		if (callback != null) {
			PluginResult result = new PluginResult(PluginResult.Status.OK, characteristic.getValue());
			result.setKeepCallback(true);
			callback.sendPluginResult(result);
		}
	}

	@Override
	public void onCharacteristicRead(BluetoothGatt gatt, BluetoothGattCharacteristic characteristic, int status) {
		super.onCharacteristicRead(gatt, characteristic, status);
		LOG.d(TAG, "onCharacteristicRead " + characteristic);

		if (m_readCallback != null) {

			if (status == BluetoothGatt.GATT_SUCCESS) {
				m_readCallback.success(characteristic.getValue());
			} else {
				m_readCallback.error("Error reading " + characteristic.getUuid() + " status=" + status);
			}

			m_readCallback = null;

		}

		commandCompleted();
	}

	@Override
	public void onCharacteristicWrite(BluetoothGatt gatt, BluetoothGattCharacteristic characteristic, int status) {
		super.onCharacteristicWrite(gatt, characteristic, status);
		LOG.d(TAG, "onCharacteristicWrite " + characteristic);

		if (m_writeCallback != null) {

			if (status == BluetoothGatt.GATT_SUCCESS) {
				m_writeCallback.success();
			} else {
				m_writeCallback.error(status);
			}

			m_writeCallback = null;
		}

		commandCompleted();
	}

	@Override
	public void onDescriptorWrite(BluetoothGatt gatt, BluetoothGattDescriptor descriptor, int status) {
		super.onDescriptorWrite(gatt, descriptor, status);
		LOG.d(TAG, "onDescriptorWrite " + descriptor);
		commandCompleted();
	}

	public void updateRssi(int rssi) {
		advertisingRSSI = rssi;
	}

	// This seems way too complicated
	private void registerNotifyCallback(CallbackContext callbackContext, UUID serviceUUID, UUID characteristicUUID) {

		boolean success = false;

		if (m_gatt == null) {
			callbackContext.error("BluetoothGatt is null");
			return;
		}

		BluetoothGattService service = m_gatt.getService(serviceUUID);
		BluetoothGattCharacteristic characteristic = findNotifyCharacteristic(service, characteristicUUID);
		String key = generateHashKey(serviceUUID, characteristic);

		if (characteristic != null) {

			m_notificationCallbacks.put(key, callbackContext);

			if (m_gatt.setCharacteristicNotification(characteristic, true)) {

				// Why doesn't setCharacteristicNotification write the
				// descriptor?
				BluetoothGattDescriptor descriptor = characteristic
						.getDescriptor(CLIENT_CHARACTERISTIC_CONFIGURATION_UUID);
				if (descriptor != null) {

					// prefer notify over indicate
					if ((characteristic.getProperties() & BluetoothGattCharacteristic.PROPERTY_NOTIFY) != 0) {
						descriptor.setValue(BluetoothGattDescriptor.ENABLE_NOTIFICATION_VALUE);
					} else if ((characteristic.getProperties() & BluetoothGattCharacteristic.PROPERTY_INDICATE) != 0) {
						descriptor.setValue(BluetoothGattDescriptor.ENABLE_INDICATION_VALUE);
					} else {
						LOG.w(TAG, "Characteristic " + characteristicUUID
								+ " does not have NOTIFY or INDICATE property set");
					}

					if (m_gatt.writeDescriptor(descriptor)) {
						success = true;
					} else {
						callbackContext
								.error("Failed to set client characteristic notification for " + characteristicUUID);
					}

				} else {
					callbackContext.error("Set notification failed for " + characteristicUUID);
				}

			} else {
				callbackContext.error("Failed to register notification for " + characteristicUUID);
			}

		} else {
			callbackContext.error("Characteristic " + characteristicUUID + " not found");
		}

		if (!success) {
			commandCompleted();
		}
	}

	private void removeNotifyCallback(CallbackContext callbackContext, UUID serviceUUID, UUID characteristicUUID) {

		if (m_gatt == null) {
			callbackContext.error("BluetoothGatt is null");
			return;
		}

		BluetoothGattService service = m_gatt.getService(serviceUUID);
		BluetoothGattCharacteristic characteristic = findNotifyCharacteristic(service, characteristicUUID);
		String key = generateHashKey(serviceUUID, characteristic);

		if (characteristic != null) {

			m_notificationCallbacks.remove(key);

			if (m_gatt.setCharacteristicNotification(characteristic, false)) {
				callbackContext.success();
			} else {
				// TODO we can probably ignore and return success anyway since
				// we removed the notification callback
				callbackContext.error("Failed to stop notification for " + characteristicUUID);
			}

		} else {
			callbackContext.error("Characteristic " + characteristicUUID + " not found");
		}

		commandCompleted();

	}

	// Some devices reuse UUIDs across characteristics, so we can't use
	// service.getCharacteristic(characteristicUUID)
	// instead check the UUID and properties for each characteristic in the
	// service until we find the best match
	// This function prefers Notify over Indicate
	private BluetoothGattCharacteristic findNotifyCharacteristic(BluetoothGattService service,
			UUID characteristicUUID) {
		BluetoothGattCharacteristic characteristic = null;

		// Check for Notify first
		List<BluetoothGattCharacteristic> characteristics = service.getCharacteristics();
		for (BluetoothGattCharacteristic c : characteristics) {
			if ((c.getProperties() & BluetoothGattCharacteristic.PROPERTY_NOTIFY) != 0
					&& characteristicUUID.equals(c.getUuid())) {
				characteristic = c;
				break;
			}
		}

		if (characteristic != null)
			return characteristic;

		// If there wasn't Notify Characteristic, check for Indicate
		for (BluetoothGattCharacteristic c : characteristics) {
			if ((c.getProperties() & BluetoothGattCharacteristic.PROPERTY_INDICATE) != 0
					&& characteristicUUID.equals(c.getUuid())) {
				characteristic = c;
				break;
			}
		}

		// As a last resort, try and find ANY characteristic with this UUID,
		// even if it doesn't have the correct properties
		if (characteristic == null) {
			characteristic = service.getCharacteristic(characteristicUUID);
		}

		return characteristic;
	}

	private void readCharacteristic(CallbackContext callbackContext, UUID serviceUUID, UUID characteristicUUID) {

		boolean success = false;

		if (m_gatt == null) {
			callbackContext.error("BluetoothGatt is null");
			return;
		}

		BluetoothGattService service = m_gatt.getService(serviceUUID);
		BluetoothGattCharacteristic characteristic = findReadableCharacteristic(service, characteristicUUID);

		if (characteristic == null) {
			callbackContext.error("Characteristic " + characteristicUUID + " not found.");
		} else {
			m_readCallback = callbackContext;
			if (m_gatt.readCharacteristic(characteristic)) {
				success = true;
			} else {
				m_readCallback = null;
				callbackContext.error("Read failed");
			}
		}

		if (!success) {
			commandCompleted();
		}

	}

	// Some peripherals re-use UUIDs for multiple characteristics so we need to
	// check the properties
	// and UUID of all characteristics instead of using
	// service.getCharacteristic(characteristicUUID)
	private BluetoothGattCharacteristic findReadableCharacteristic(BluetoothGattService service,
			UUID characteristicUUID) {
		BluetoothGattCharacteristic characteristic = null;

		int read = BluetoothGattCharacteristic.PROPERTY_READ;

		List<BluetoothGattCharacteristic> characteristics = service.getCharacteristics();
		for (BluetoothGattCharacteristic c : characteristics) {
			if ((c.getProperties() & read) != 0 && characteristicUUID.equals(c.getUuid())) {
				characteristic = c;
				break;
			}
		}

		// As a last resort, try and find ANY characteristic with this UUID,
		// even if it doesn't have the correct properties
		if (characteristic == null) {
			characteristic = service.getCharacteristic(characteristicUUID);
		}

		return characteristic;
	}

	private void writeCharacteristic(CallbackContext callbackContext, UUID serviceUUID, UUID characteristicUUID,
			byte[] data, int writeType) {

		boolean success = false;

		if (m_gatt == null) {
			callbackContext.error("BluetoothGatt is null");
			return;
		}

		BluetoothGattService service = m_gatt.getService(serviceUUID);
		BluetoothGattCharacteristic characteristic = findWritableCharacteristic(service, characteristicUUID, writeType);

		if (characteristic == null) {
			callbackContext.error("Characteristic " + characteristicUUID + " not found.");
		} else {
			characteristic.setValue(data);
			characteristic.setWriteType(writeType);
			m_writeCallback = callbackContext;

			if (m_gatt.writeCharacteristic(characteristic)) {
				success = true;
			} else {
				m_writeCallback = null;
				callbackContext.error("Write failed");
			}
		}

		if (!success) {
			commandCompleted();
		}

	}

	// Some peripherals re-use UUIDs for multiple characteristics so we need to
	// check the properties
	// and UUID of all characteristics instead of using
	// service.getCharacteristic(characteristicUUID)
	private BluetoothGattCharacteristic findWritableCharacteristic(BluetoothGattService service,
			UUID characteristicUUID, int writeType) {
		BluetoothGattCharacteristic characteristic = null;

		// get write property
		int writeProperty = BluetoothGattCharacteristic.PROPERTY_WRITE;
		if (writeType == BluetoothGattCharacteristic.WRITE_TYPE_NO_RESPONSE) {
			writeProperty = BluetoothGattCharacteristic.PROPERTY_WRITE_NO_RESPONSE;
		}

		List<BluetoothGattCharacteristic> characteristics = service.getCharacteristics();
		for (BluetoothGattCharacteristic c : characteristics) {
			if ((c.getProperties() & writeProperty) != 0 && characteristicUUID.equals(c.getUuid())) {
				characteristic = c;
				break;
			}
		}

		// As a last resort, try and find ANY characteristic with this UUID,
		// even if it doesn't have the correct properties
		if (characteristic == null) {
			characteristic = service.getCharacteristic(characteristicUUID);
		}

		return characteristic;
	}

	public void queueRead(CallbackContext callbackContext, UUID serviceUUID, UUID characteristicUUID) {
		BLECommand command = new BLECommand(callbackContext, serviceUUID, characteristicUUID, BLECommand.READ);
		queueCommand(command);
	}

	public void queueWrite(CallbackContext callbackContext, UUID serviceUUID, UUID characteristicUUID, byte[] data,
			int writeType) {
		BLECommand command = new BLECommand(callbackContext, serviceUUID, characteristicUUID, data, writeType);
		queueCommand(command);
	}

	public void queueRegisterNotifyCallback(CallbackContext callbackContext, UUID serviceUUID,
			UUID characteristicUUID) {
		BLECommand command = new BLECommand(callbackContext, serviceUUID, characteristicUUID,
				BLECommand.REGISTER_NOTIFY);
		queueCommand(command);
	}

	public void queueRemoveNotifyCallback(CallbackContext callbackContext, UUID serviceUUID, UUID characteristicUUID) {
		BLECommand command = new BLECommand(callbackContext, serviceUUID, characteristicUUID, BLECommand.REMOVE_NOTIFY);
		queueCommand(command);
	}

	// add a new command to the queue
	private void queueCommand(BLECommand command) {
		LOG.d(TAG, "Queuing Command " + command);
		commandQueue.add(command);

		PluginResult result = new PluginResult(PluginResult.Status.NO_RESULT);
		result.setKeepCallback(true);
		command.getCallbackContext().sendPluginResult(result);

		if (!bleProcessing) {
			processCommands();
		}
	}

	// command finished, queue the next command
	private void commandCompleted() {
		LOG.d(TAG, "Processing Complete");
		bleProcessing = false;
		processCommands();
	}

	// process the queue
	private void processCommands() {
		LOG.d(TAG, "Processing Commands");

		if (bleProcessing) {
			return;
		}

		BLECommand command = commandQueue.poll();
		if (command != null) {
			if (command.getType() == BLECommand.READ) {
				LOG.d(TAG, "Read " + command.getCharacteristicUUID());
				bleProcessing = true;
				readCharacteristic(command.getCallbackContext(), command.getServiceUUID(),
						command.getCharacteristicUUID());
			} else if (command.getType() == BluetoothGattCharacteristic.WRITE_TYPE_DEFAULT) {
				LOG.d(TAG, "Write " + command.getCharacteristicUUID());
				bleProcessing = true;
				writeCharacteristic(command.getCallbackContext(), command.getServiceUUID(),
						command.getCharacteristicUUID(), command.getData(), command.getType());
			} else if (command.getType() == BluetoothGattCharacteristic.WRITE_TYPE_NO_RESPONSE) {
				LOG.d(TAG, "Write No Response " + command.getCharacteristicUUID());
				bleProcessing = true;
				writeCharacteristic(command.getCallbackContext(), command.getServiceUUID(),
						command.getCharacteristicUUID(), command.getData(), command.getType());
			} else if (command.getType() == BLECommand.REGISTER_NOTIFY) {
				LOG.d(TAG, "Register Notify " + command.getCharacteristicUUID());
				bleProcessing = true;
				registerNotifyCallback(command.getCallbackContext(), command.getServiceUUID(),
						command.getCharacteristicUUID());
			} else if (command.getType() == BLECommand.REMOVE_NOTIFY) {
				LOG.d(TAG, "Remove Notify " + command.getCharacteristicUUID());
				bleProcessing = true;
				removeNotifyCallback(command.getCallbackContext(), command.getServiceUUID(),
						command.getCharacteristicUUID());
			} else {
				// this shouldn't happen
				throw new RuntimeException("Unexpected BLE Command type " + command.getType());
			}
		} else {
			LOG.d(TAG, "Command Queue is empty.");
		}

	}

	private String generateHashKey(BluetoothGattCharacteristic characteristic) {
		return generateHashKey(characteristic.getService().getUuid(), characteristic);
	}

	private String generateHashKey(UUID serviceUUID, BluetoothGattCharacteristic characteristic) {
		return String.valueOf(serviceUUID) + "|" + characteristic.getUuid() + "|" + characteristic.getInstanceId();
	}

}
