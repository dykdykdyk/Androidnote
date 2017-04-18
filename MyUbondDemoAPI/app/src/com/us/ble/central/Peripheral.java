package com.us.ble.central;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import java.util.UUID;

import com.us.Utils.Utils;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCallback;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;
import android.bluetooth.BluetoothGattService;

@SuppressLint("NewApi")
public class Peripheral extends BluetoothGattCallback {
	private static final String TAG = "Peripheral";
	public BluetoothDevice mDevice;
	private boolean connected = false; // 连接断开/成功
	// private byte[] by = null;
	private Activity mActivity;
	public BluetoothGatt mGatt;
	/** 开启notify的SERVICE的UUID */
	public static final UUID NOTIFY_SERVICE_UUID = UUIDHelper
			.uuidFromString("1803");
	/** 开启notify的CHARACTERISTIC的UUID */
	private static final UUID NOTIFY_CHARACTERISTIC_UUID = UUIDHelper
			.uuidFromString("2a06");

	private final byte[] SUPER_BOUND_DATA = { 0x01, 0x23, 0x45, 0x67,
			(byte) 0x89, (byte) 0xAB, (byte) 0xCD, (byte) 0xEF, (byte) 0xFE,
			(byte) 0xDC, (byte) 0xBA, (byte) 0x98, 0x76, 0x54, 0x32, 0x10 };

	/** 消息管理者 */
	// private MessageManager mMessageManager;

	/** 命令消息队列 */
	private BLECommandQueue mCommandQueue;

	private CallbackContext callbackContext;

	/**
	 * 连接步骤 1、 连接成功回调则去发现服务 2、 发现服务回调成功则开启notify 3、 开启notify回调成功则发送绑定指令 4、
	 * 处理设备的绑定应答，判断是否绑定成功 5、 绑定成功则发送设备登录
	 * 
	 */
	public Peripheral(BluetoothDevice device) {
		this.mDevice = device;
	}

	public void connect(Activity activity) {
		if (isConnected()) {
			callbackContext.onConnectedCallBack(getAddress());
			return;
		}
		if (activity != null)
			mActivity = activity;
		BluetoothDevice device = getDevice();
		mGatt = device.connectGatt(mActivity, false, this);
		historyData = new ArrayList<byte[]>();
		mCommandQueue = new BLECommandQueue(this);
	}

	public void setOnCallbackListent(CallbackContext callback) {
		if (callback != null)
			this.callbackContext = callback;
	}

	public BluetoothDevice getDevice() {
		return this.mDevice;
	}

	public String getAddress() {
		return this.mDevice.getAddress();
	}

	public void disconnect() {
		connected = false;
		disConnectInit();
		if (mGatt != null) {
			mGatt.disconnect();
			mGatt.close();
			mGatt = null;
			L.i(TAG, "关闭连接...");
			callbackContext.onDisConnectedCallBack(getAddress());
		}
	}
	/**
	 * @param length
	 * @param major
	 * @param minor
	 * @param date
	 */
	public void write(int length, int cmd, byte[] data) {
		int v = 1;
		int t = 0;
		final byte[] value = new byte[20];
		value[0] = (byte) ((v << 5) | ((length - 1) << 1) | t);
		value[1] = (byte) (cmd & 0xFF);
		value[2] = (byte) (0);
		value[3] = (byte) (0);
		System.arraycopy(data, 0, value, 4, data.length);
		L.i(TAG,"发送的数据包 :"+ Arrays.toString(Utils.byteTo16String(value)));
		if (isConnected()) {
			new Thread(new Runnable() {
				@Override
				public void run() {
					try {
						Thread.sleep(25);
						queueWrite(NOTIFY_SERVICE_UUID,
								NOTIFY_CHARACTERISTIC_UUID, value,
								BluetoothGattCharacteristic.WRITE_TYPE_DEFAULT);
					} catch (InterruptedException e) {
						e.printStackTrace();
					}
				}
			}).start();
		}
	}
	byte [] image_data ; //要发送图片数组
	byte [] image_name_data ; //要发送图片文字数组
	
	byte [] image_data_send = new byte[16]; //每次发送的数组
	int mNumber ; //发送的是那一组图片
	
	public boolean sendImagesType = false;  //发送的是图片组设置还是开机图片；false为图片组 ，true为开机动画
	/**
	 * 发送一组图片里的某张图片
	 * @param number 某一组
	 * @param imageData  图片byte数组
	 */
	public void writeImage(int cmd, int number, byte[] data){
		if(image_data == null ){
			image_data = new byte[data.length];
		}
		image_data = data;
		int index = sendNumber / 8; //发送那张图片
		int index_sid = sendNumber % 8; //发送当前这张图片的第几次
		mNumber = number;
		if (sendNumber < data.length /16) { 
			int param =  (((number & 0xff) << 4) | (index & 0xff));
			 L.i(TAG, "发送次数："+sendNumber+ "，发送那组图片："+number+" , 发送那张图片："+ index + " , param = "+ Integer.toHexString(param));
			 L.i(TAG, "当前这张图片发送的次数："+index_sid);
			System.arraycopy(image_data, sendNumber * 16, image_data_send, 0,16);
			write(16, cmd, index_sid, param, image_data_send);
			sendNumber++;
		} else {
			callbackContext.onSendImageAndFontsResult(cmd, 1, number);
			 L.i(TAG, "发送结束的图片");
			sendNumber = 0;
			image_data = null;
		}
	}
	   
	public void writeImageName(int cmd, int number, byte[] data){
		if(image_name_data == null ){
			image_name_data = new byte[data.length];
		}
		mNumber = number;
		image_name_data = data;
		int index_sid = sendNumber % 8; //发送那张图片名字
		if (sendNumber < data.length /16) { 
			int param =  (((number & 0xff) << 4) | (index_sid & 0xff));
			 L.i(TAG, "发送次数："+sendNumber+ "，发送那组图片文字："+number);
			 L.i(TAG, "发送那张图片名字："+index_sid);
			System.arraycopy(image_name_data, sendNumber * 16, image_data_send, 0,16);
			write(16, cmd, 0, param, image_data_send);
			sendNumber++;
		} else {
			callbackContext.onSendImageAndFontsResult(cmd, 1, number);
			 L.i(TAG, "发送结束的图片文字");
			sendNumber = 0;
			image_name_data = null;
		}
	}
	
	
	/**
	 * 开机图片
	 * @param cmd
	 * @param imageData.length = 256
	 */
	public void writeBootImages(int cmd,byte[] imageData){
		int sid = sendNumber;
		int param =0;
		if(image_data == null ){
			image_data = new byte[imageData.length];
		}
		if(sendNumber< imageData.length/16){
			 L.i(TAG, "当前开机图片发送的次数："+sid);
			System.arraycopy(image_data, sendNumber * 16, image_data_send, 0,16);
			write(16, cmd, sid, param, image_data_send);
			sendNumber++;
		}else{
			L.i(TAG, "发送开机图片结束");
			sendNumber =0;
			image_data = null;
		}
	}
	private void disConnectInit(){
		 fonts_sid = 0; //字体的第几个包
		 sendNumber = 0; //发送次数
		 fonts_param = 0;//第几个字体 
		 image_data=null;
		 image_name_data = null;
	}
	int fonts_sid = 0; //字体的第几个包
	byte [] fonts_data = new byte[32*4]; //要发送的字体字节数组
	int sendNumber = 0; //发送次数
	int fonts_param = 0;//第几个字体 
	byte[] fontsData = new byte[16]; 
	/**发送字体*/
    public void writeFonts( byte[] data){
    	if(data !=null & sendNumber < 8){
    		fonts_data =data;
        	fonts_param = sendNumber/2;
        	L.i(TAG, "第几个字体："+fonts_param);
            L.i(TAG, "发送字体第几次："+fonts_sid);
            L.i(TAG, "发送次数："+sendNumber);
            System.arraycopy(fonts_data, sendNumber*16, fontsData, 0, 16);
        	L.i(TAG, "总字节内容"+Arrays.toString(fonts_data) );
        	L.i(TAG, "发送的字体内容"+Arrays.toString(fontsData));
        	write(16,0x0A,fonts_sid,fonts_param,fontsData);
        	sendNumber ++;
    	}else{
    		sendNumber =0;
    		fonts_sid = 0;
    		fonts_param = 0;
    	}
    }
	/**
	 * 
	 * @param length 长度
	 * @param cmd   指令
	 * @param sid   序列号
	 * @param param  发送参数
	 * @param data   
	 */
    private void write(int length, int cmd, int sid, int param, byte[] data) {
		int v = 1;
		int t = 0;
		final byte[] value = new byte[20];
		value[0] = (byte) ((v << 5) | ((length - 1) << 1) | t);
		value[1] = (byte) (cmd & 0xFF);
		value[2] = (byte) sid;
		value[3] = (byte) param;
		System.arraycopy(data, 0, value, 4, data.length);
		if (isConnected()) {
			new Thread(new Runnable() {
				@Override
				public void run() {
					try {
						Thread.sleep(25);
						queueWrite(NOTIFY_SERVICE_UUID,
								NOTIFY_CHARACTERISTIC_UUID, value,
								BluetoothGattCharacteristic.WRITE_TYPE_DEFAULT);
					} catch (InterruptedException e) {
						e.printStackTrace();
					}
				}
			}).start();
		}
	}
	private void callbackFonts( byte []data){
		switch (data[1]) {
		case 0x0A:
			if( data[4] ==0x0C){
				fonts_sid =1;
				writeFonts(fonts_data);
			}else if(data[4] ==0){
				fonts_sid =0;
				writeFonts(fonts_data);
			}
			break;
		case 0x0B:
			if( data[4] ==0x0C || data[4] ==0){
				if(sendImagesType){
					writeBootImages(data[1],image_data);
				}else{
					writeImage(data[1], mNumber, image_data);
				}
			}
			break;
		case 0x0D:
			if(data[4] ==0)
				writeImageName(data[1], mNumber, image_name_data); 
			break;
		}
	}
	/**
	 * 重发机制：每次发送数据必须收到应答才可以发送下一次数据 因为有些手机会中途断数据 在请求历史数据的时候，如果中途 *
	 * 断掉了，再激活重发，直到请求结束为止 分多种情况：1.中途接收到其他数剧而历史请求数据接收不到，导致的中断；
	 * 2.中途发生未知原因导致的不能接收到历史数据而导致中断； 3.再接收历史数据过程中蓝牙连接中断了，导致接收不到历史数据；
	 * 
	 * 4.个别手机偶尔会发生在第一请求历史数据会出现接收蓝牙数据过慢的情况， 大概1秒钟才接收到1条历史数据 断了再重新连一次就解决了，奇葩坑；
	 * 
	 */
	
    /***
     * 对接收的设备的数据进行分类处理
     * @param data
     */
	private void callback(byte[] data) {
		if (data[1] == 0x34 || data[1] == 0x35 || data[1] == 0x43
				|| data[1] == 0x46 ||  data[1] == 0x3B ) { // 历史数据类信息
			callbackHistory(data);
		}
		else if( data[1] == 0x59){ //止血带
			callbackOtherHistory(data);
		}
		else if(data[1] == 0x0A || data[1] == 0x0B || data[1] ==0x0D){ //设置图片和设置字体
			callbackFonts(data);
		}else { // 设置类信息
			int cmd = data[1] & 0xff;
			callbackContext.onNotify(getAddress(), cmd, copyArrayToByte(data));
		}
		callbackContext.onDeviceMessage(getAddress(), data);
	}

	private List<byte[]> historyData;
	private boolean isEnd = false; // 是否发送结束
    private void callbackOtherHistory(byte[] data){
    	if(data[14]==0 & data[15] ==0 & data[16]==0 &data[17] ==0 &data[18] ==0){
    		isEnd = true;
		} else {
			isEnd = false;
		}
		sendHistory(data, isEnd);
    }
	
	private void callbackHistory(byte[] data) {
		if (data[16] == 0 & data[17] == 0 & data[18] == 0){
			isEnd = true;
		} else {
			isEnd = false;
		}
		sendHistory(data, isEnd);
	}

	private byte[] copyArrayToByte(byte[] data) {
		byte[] copy = new byte[16];
		System.arraycopy(data, 4, copy, 0, 16);
		return copy;
	}

	private void sendHistory(byte[] data, boolean end) {
		int cmd = data[1] & 0xff;
		historyData.add(copyArrayToByte(data));
		if (end) {
			L.i(TAG, "sendHistory :" + end);
			callbackContext.sendHistory(getAddress(), cmd, historyData);
			historyData.clear();
			isEnd = false;
		} else {
			int length = 1;
			byte[] date = { 0x01 };
			write(length, cmd, date);
		}
	}

	public boolean isConnected() {
		return this.connected;
	}

	private void superBound() {
		L.i(TAG, "超级绑定..");
		write(16, 0x24, SUPER_BOUND_DATA);
	}

	public void updateRssi(int rssi) {
		// advertisingRSSI = rssi;
		callbackContext.updateRssi(getAddress(), rssi);
	}

	public int changed = 0;

	@Override
	public void onCharacteristicChanged(BluetoothGatt gatt,
			BluetoothGattCharacteristic characteristic) {
		super.onCharacteristicChanged(gatt, characteristic);
		String a = 
				 "获取到数据包onCharacteristicChanged : "
				+ Arrays.toString(Utils.byteTo16String(characteristic
						.getValue()));
		L.i(TAG, a);
		if (characteristic.getValue() != null)
			callback(characteristic.getValue());
		// mMessageManager.handlerDeviceMessage(characteristic.getValue());
		// callbackContext.onNotify(getAddress(),characteristic.getValue());
	}

	@Override
	public void onCharacteristicWrite(BluetoothGatt gatt,
			BluetoothGattCharacteristic characteristic, int status) {
		super.onCharacteristicWrite(gatt, characteristic, status);
		L.i(TAG,
				"获取写入的 onCharacteristicWrite :"
						+ Arrays.toString(Utils.byteTo16String(characteristic
								.getValue())));

		// L.i(TAG, sid + " by :" + Arrays.toString(by));
		// String a="获取到数据包onCharacteristicChanged values = " +
		// Arrays.toString(characteristic.getValue());
	}

	@Override
	public void onServicesDiscovered(BluetoothGatt gatt, int status) {
		super.onServicesDiscovered(gatt, status);
		for (BluetoothGattService service : gatt.getServices()) {
			L.i(TAG, "service:" + service.getUuid() + " ,status=" + status);
			for (BluetoothGattCharacteristic characteristic : service
					.getCharacteristics()) {
				L.i(TAG, "characteristic:" + characteristic.getUuid());
			}
		}
		if (status == BluetoothGatt.GATT_SUCCESS) {
			L.i(TAG, "发现蓝牙服务onServicesDiscovered GATT_SUCCESS");
			this.mGatt = gatt;
			enableNotify();
			callbackContext.onConnectedCallBack(getAddress());
		} else {
			L.i(TAG, "发现蓝牙服务onServicesDiscovered GATT_ERROR");
			disconnect();
		}
	}

	@Override
	public void onConnectionStateChange(BluetoothGatt gatt, int status,
			int newState) {
		super.onConnectionStateChange(gatt, status, newState);
		L.i(TAG, "连接状态onConnectionStateChange：" + "status:" + status
				+ "===> newState:" + newState);
		if (newState == BluetoothGatt.STATE_CONNECTED) {
			L.i(TAG, "连接上gatt");
			connected = true;
			mGatt = gatt;
			if (gatt.getServices().size() == 0)
				gatt.discoverServices();
			else
				enableNotify();
		} else if (newState == BluetoothGatt.STATE_DISCONNECTED) {
			L.i(TAG, "断开gatt ");
			connected = false;
			disconnect();
		}
	}

	private void enableNotify() {
		queueRegisterNotifyCallback(NOTIFY_SERVICE_UUID,
				NOTIFY_CHARACTERISTIC_UUID);
	}

	@Override
	public void onDescriptorWrite(BluetoothGatt gatt,
			BluetoothGattDescriptor descriptor, int status) {
		super.onDescriptorWrite(gatt, descriptor, status);
		L.i(TAG, "onDescriptorWrite");
		// superBound();
	}

	@Override
	public void onReadRemoteRssi(BluetoothGatt gatt, int rssi, int status) {
		super.onReadRemoteRssi(gatt, rssi, status);
		L.i(TAG, "onReadRemoteRssi:" + rssi);
		if (status == BluetoothGatt.GATT_SUCCESS) {
			updateRssi(rssi);
		} else {
		}
	}

	@Override
	public void onCharacteristicRead(BluetoothGatt gatt,
			BluetoothGattCharacteristic characteristic, int status) {
		super.onCharacteristicRead(gatt, characteristic, status);
		L.i(TAG, "onCharacteristicRead");
	}

	public void getRssi() {
		if (mGatt != null) {
			mGatt.readRemoteRssi();
		}
	}

	public void queueRead(UUID serviceUUID, UUID characteristicUUID) {
		BLECommand command = new BLECommand(serviceUUID, characteristicUUID,
				BLECommand.READ);
		queueCommand(command);
	}

	public void queueWrite(UUID serviceUUID, UUID characteristicUUID,
			byte[] data, int writeType) {
		BLECommand command = new BLECommand(serviceUUID, characteristicUUID,
				data, writeType);
		queueCommand(command);
	}

	public void queueRegisterNotifyCallback(UUID serviceUUID,
			UUID characteristicUUID) {
		BLECommand command = new BLECommand(serviceUUID, characteristicUUID,
				BLECommand.REGISTER_NOTIFY);
		queueCommand(command);
	}

	public void queueRemoveNotifyCallback(UUID serviceUUID,
			UUID characteristicUUID) {
		BLECommand command = new BLECommand(serviceUUID, characteristicUUID,
				BLECommand.REMOVE_NOTIFY);
		queueCommand(command);
	}

	public void queueReadRSSI() {
		BLECommand command = new BLECommand(null, null, BLECommand.READ_RSSI);
		queueCommand(command);
	}

	private void queueCommand(BLECommand command) {
		L.i(TAG, "Queuing Command ");
		mCommandQueue.add(command);
	}

}
