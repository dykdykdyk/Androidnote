// (c) 2104 Don Coleman
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

package com.megster.cordova.ble.central;

import java.util.Arrays;
import java.util.Timer;
import java.util.TimerTask;
import java.util.UUID;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import com.ble.message.MessageManager;
import com.ble.message.SecurityMessageHandler;
import com.ble.re.data.Update;
import com.ionicframework.urfdemo.BLEInfoActivity;

import android.annotation.SuppressLint;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCallback;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;
import android.bluetooth.BluetoothGattService;
import android.os.Build;
import android.util.Base64;

/**
 * Peripheral wraps the BluetoothDevice and provides methods to convert to JSON.
 */
 @SuppressLint("NewApi") public class Peripheral extends BluetoothGattCallback  {

	// 0x2902
	// org.bluetooth.descriptor.gatt.client_characteristic_configuration.xml
	// public final static UUID CLIENT_CHARACTERISTIC_CONFIGURATION_UUID =
	// UUID.fromString("00002902-0000-1000-8000-00805F9B34FB");
	private static final String TAG = "Peripheral";

	public BluetoothDevice device;
	private byte[] advertisingData;
	private int advertisingRSSI;
	private boolean connected = false;

	BluetoothGatt mGatt;

	//TODO  调试信息暂时展示
	private BLEInfoActivity mActivity;

	/** 开启notify的SERVICE的UUID*/
	private static final UUID NOTIFY_SERVICE_UUID = UUIDHelper.uuidFromString("1803");

	/** 开启notify的CHARACTERISTIC的UUID*/
	private static final UUID NOTIFY_CHARACTERISTIC_UUID = UUIDHelper.uuidFromString("2a06");

	/** 消息管理者 */
	private MessageManager mMessageManager;

	/** 命令消息队列*/
	private BLECommandQueue mCommandQueue;
	
	private boolean isFirstConnect = true;
	
	/**绑定指令是否发送*/
	private boolean isSendBound = false;
	Update updateList;
	Update updateCharts;
	public Peripheral(BluetoothDevice device, int advertisingRSSI, byte[] scanRecord) {
		this.device = device;
		this.advertisingRSSI = advertisingRSSI;
		this.advertisingData = scanRecord;
		mMessageManager = new MessageManager(this);
	}
	public void connect(BLEInfoActivity activity) {
		disconnect();
		LogUpdate.i(TAG, getAddres(),"开始连接", 0, 1);
		sendString(getAddres(), "开始连接");
		mActivity = activity;
		BluetoothDevice device = getDevice();
		if (Build.VERSION.SDK_INT < 23) {
			mGatt = device.connectGatt(activity, false, this);
		} else {
			mGatt = device.connectGatt(activity, false, this);
		}
		mCommandQueue = new BLECommandQueue(this);
	}
	
	public void setUpdateDate(Update up){
		if(up !=null)
			updateList = up;
	}
	public void setUpdateChatrs(Update up){
		if(up !=null)
			updateCharts = up;
	}
	public void sendString(String key ,String value){
		updateList.sendString(key, value);
	}
	public void sendStep(String key,int value){
		updateCharts.sendSports(key, value);
	}
	public void sendHeart(String key,int value){
		updateCharts.sendHeart(key, value);
	}
	public void sendTemp(String key,int temp){
		updateCharts.sendTemp(key, temp);
	}
	public void sendPA(String key,float at,float al,float degree){
		updateCharts.sendPa(key, at,al,degree);
	}
	
	public String getAddres(){
		return device.getAddress();
	}
	public void write(byte type, byte state) {
		mMessageManager.queueWrite(type, state);
	}
	
	public void disconnect() {
		if (disConnectOutTimer != null)
			disConnectOutTimer.cancel();
		connected = false;
		isSendBound = false;
		if (mGatt != null) {
			mGatt.close();
			LogUpdate.i(TAG,getAddres(), "关闭连接",0,1);
			mGatt = null;
		}
	}

	public boolean isConnected() {
		return connected;
	}

	public BluetoothDevice getDevice() {
		return device;
	}

	public void enableNotify() {
		//mCommandQueue.registerNotifyCallback(NOTIFY_SERVICE_UUID, NOTIFY_CHARACTERISTIC_UUID);
		queueRegisterNotifyCallback(NOTIFY_SERVICE_UUID, NOTIFY_CHARACTERISTIC_UUID);
	}

	@Override
	public void onServicesDiscovered(BluetoothGatt gatt, int status) {
		super.onServicesDiscovered(gatt, status);
		for(BluetoothGattService service : gatt.getServices()) {
			LogUpdate.i(TAG, getAddres(),"service " + service.getUuid(), 0, 1);
			String a = "service " + service.getUuid();
			sendString(getAddres(), a);
//			for(BluetoothGattCharacteristic c : service.getCharacteristics()) {
////				Log.i(TAG, "Characteristic " + c.getUuid());
//			}
		}
		if (status == BluetoothGatt.GATT_SUCCESS) {
			LogUpdate.i(TAG, getAddres(),"发现蓝牙服务onServicesDiscovered GATT_SUCCESS", 0, 1);
			String a ="发现蓝牙服务onServicesDiscovered GATT_SUCCESS";
			sendString(getAddres(), a);
			enableNotify();
		} else {
			LogUpdate.i(TAG, getAddres(),"发现蓝牙服务onServicesDiscovered GATT_ERROR", 0, 1);
//			LOG.e(TAG, "Service discovery failed. status = " + status);
			disconnect();
		}
	}
	
	public Timer disConnectOutTimer;

	@Override
	public void onConnectionStateChange(BluetoothGatt gatt, int status, int newState) {
		if (disConnectOutTimer != null)
			disConnectOutTimer.cancel();
		this.mGatt = gatt;
		String a = "连接状态改变onConnectionStateChange status:" + status + "===> newSatet:" + newState;
		LogUpdate.i(TAG, getAddres(), a, 0, 1);
		sendString(getAddres(), a);
		if (newState == BluetoothGatt.STATE_CONNECTED) {
			connected = true;
			if (gatt.getServices().size() == 0)
				gatt.discoverServices();
			else
				enableNotify();
		} else {
			isSendBound = false;
			gatt.connect();
			disConnectOutTimer = new Timer();
			disConnectOutTimer.schedule(new TimerTask() {
				@Override
				public void run() {
					disconnect();
//					mGatt = device.connectGatt(mActivity, false, Peripheral.this);
				}
			}, 15 * 1000);
			// disconnect();
		}

	}

	@Override
	public void onCharacteristicChanged(BluetoothGatt gatt, final BluetoothGattCharacteristic characteristic) {
		System.out.println("onCharacteristicChanged");
		String a="获取到数据包onCharacteristicChanged"+"cmd :"+Integer.toHexString(characteristic.getValue()[1] ) +", values = " + Arrays.toString(characteristic.getValue());
		LogUpdate.i(TAG, getAddres(), a, 0, 1);
		sendString(getAddres(), a);
//		new Thread(){
//            public void run(){
//            	mMessageManager.handlerDeviceMessage(characteristic.getValue());
//            }
//         }.start();
		mMessageManager.handlerDeviceMessage(characteristic.getValue());
		super.onCharacteristicChanged(gatt, characteristic);
	
	
//		LOG.d(TAG, "onCharacteristicChanged " + characteristic);

	}

	@Override
	public void onCharacteristicRead(BluetoothGatt gatt, BluetoothGattCharacteristic characteristic, int status) {
//		Log.i(TAG,
//				"onCharacteristicRead value = " + Arrays.toString(characteristic.getValue()) + " status = " + status);
		super.onCharacteristicRead(gatt, characteristic, status);
//		LOG.d(TAG, "onCharacteristicRead " + characteristic);
		mCommandQueue.commandCompleted();
	}

	@Override
	public void onCharacteristicWrite(BluetoothGatt gatt, BluetoothGattCharacteristic characteristic, int status) {

		String a =	"发送数据包onCharacteristicWrite value = " + Arrays.toString(characteristic.getValue()) + " status = " + status;
	
		LogUpdate.i(TAG, getAddres(), a, 0, 1);
		sendString(getAddres(), a);
		super.onCharacteristicWrite(gatt, characteristic, status);
//		LOG.d(TAG, "onCharacteristicWrite " + characteristic);
//		System.out.println(Arrays.toString(characteristic.getValue()) );
		
		mCommandQueue.commandCompleted();
	}
	
	
	
	public void login(int state) {
		
		if(state != 0) {
//			disconnect();
			LogUpdate.i(TAG, getAddres(),"登录失败" ,0,1);
		} else {
			LogUpdate.i(TAG, getAddres(),"登录成功" ,0,1);
		}
		isFirstConnect = false;
	}

	@Override
	public void onDescriptorWrite(BluetoothGatt gatt, BluetoothGattDescriptor descriptor, int status) {
		
		String a= "onDescriptorWrite value = " + Arrays.toString(descriptor.getValue()) + " status = " + status;
		LogUpdate.i(TAG, getAddres(), a, 0, 1);
		sendString(getAddres(), a);
		// writeCharacteristic(NOTIFY_SERVICE_UUID, NOTIFY_CHARACTERISTIC_UUID,
		// MessageManager.stateToBytes(0x00, MessageManager.STATE_PHONE_BOUND,
		// this), BluetoothGattCharacteristic.WRITE_TYPE_DEFAULT);
		if(!isSendBound) {
			if(isFirstConnect)
//				mMessageManager.queueWrite(SecurityMessageHandler.TYPE, SecurityMessageHandler.STATE_PHONE_BOUND);
			mMessageManager.queueWrite(SecurityMessageHandler.TYPE, SecurityMessageHandler.STATE_PHONE_UPSER_BOUND);
//				mMessageManager.queueWrite(SecurityMessageHandler.TYPE, SecurityMessageHandler.STATE_PHONE_USER_LOGIN);
			else 
				mMessageManager.queueWrite(SecurityMessageHandler.TYPE, SecurityMessageHandler.STATE_PHONE_UPSER_BOUND);

//				mMessageManager.queueWrite(SecurityMessageHandler.TYPE, SecurityMessageHandler.STATE_PHONE_USER_LOGIN);
			isSendBound = true;
		}
		
		super.onDescriptorWrite(gatt, descriptor, status);
//		LOG.d(TAG, "onDescriptorWrite " + descriptor);
		mCommandQueue.commandCompleted();
	}

	@Override
	public void onReadRemoteRssi(BluetoothGatt gatt, int rssi, int status) {
//		Log.i(TAG, "onReadRemoteRssi rssi = " + rssi + " status = " + status);
		super.onReadRemoteRssi(gatt, rssi, status);
		if (status == BluetoothGatt.GATT_SUCCESS) {
			updateRssi(rssi);
		} else {
		}

		mCommandQueue.commandCompleted();
	}

	public void updateRssi(int rssi) {
		advertisingRSSI = rssi;
	}


	public void queueRead(UUID serviceUUID, UUID characteristicUUID) {
		BLECommand command = new BLECommand(serviceUUID, characteristicUUID, BLECommand.READ);
		queueCommand(command);
	}

	public void queueWrite(UUID serviceUUID, UUID characteristicUUID, byte[] data, int writeType) {
		BLECommand command = new BLECommand(serviceUUID, characteristicUUID, data, writeType);
		queueCommand(command);
	}

	public void queueRegisterNotifyCallback(UUID serviceUUID, UUID characteristicUUID) {
		BLECommand command = new BLECommand(serviceUUID, characteristicUUID, BLECommand.REGISTER_NOTIFY);
		queueCommand(command);
	}

	public void queueRemoveNotifyCallback(UUID serviceUUID, UUID characteristicUUID) {
		BLECommand command = new BLECommand(serviceUUID, characteristicUUID, BLECommand.REMOVE_NOTIFY);
		queueCommand(command);
	}

	public void queueReadRSSI() {
		BLECommand command = new BLECommand(null, null, BLECommand.READ_RSSI);
		queueCommand(command);
	}

	private void queueCommand(BLECommand command) {
//		LOG.d(TAG, "Queuing Command " + command);
		mCommandQueue.add(command);
		//mCommandQueue.processCommands();
	}

	
	

	@Override
	public boolean equals(Object o) {
		if (o == null)
			return false;
		if (o instanceof Peripheral) {
			Peripheral peripheral = (Peripheral) o;
			if (peripheral.getDevice().getAddress().equals(device.getAddress()))
				return true;
			else
				return false;
		} else
			return false;
	}

//	private String generateHashKey(BluetoothGattCharacteristic characteristic) {
//		return generateHashKey(characteristic.getService().getUuid(), characteristic);
//	}
//
//	private String generateHashKey(UUID serviceUUID, BluetoothGattCharacteristic characteristic) {
//		return String.valueOf(serviceUUID) + "|" + characteristic.getUuid() + "|" + characteristic.getInstanceId();
//	}

}
