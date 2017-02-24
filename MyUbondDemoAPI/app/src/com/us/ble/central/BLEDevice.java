package com.us.ble.central;

import java.util.ArrayList;
import java.util.List;

import com.us.ble.listener.BLEDeviceListener;
import com.us.ble.listener.DeviceMessageListener;
import com.us.ble.listener.ErrorListener;
import com.us.ble.listener.HistoryDataListener;
import com.us.ble.listener.OtherDataListener;
import com.us.ble.listener.RealtimeDataListener;
import com.us.ble.message.MessageManager;

import android.R.string;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothManager;
import android.content.Context;

public class BLEDevice implements CallbackContext {
	public final static int errorCommand = 0x21;
	public static final String[] RESPONE_STATE = { 
		    "成功", "版本号不正确，此协议只接受1",
			"长度信息和命令要求不匹配", "类型信息和命令要求不匹配", "命令不存在", "序列号不正常", "设备已经被绑定",
			"绑定信息和设备内部不匹配，无法删除绑定", "登录信息和设备内部不匹配，无法登录", "还没有登录，先登录先",
			"指令不支持，很多指令是设备发出去的，并不能接收，参考具体指令介绍","指针移动失败，一般命令格式不对或者是指针已经移动到最末尾位置",
			"包数据不完整","Data 不正确","Param 不正确","内存不够" ,"指令内部返回，不走标准返回模式" };
	private Peripheral peripheral;
	private BluetoothDevice mDevice;
	private BLEDeviceListener mBLEDeviceListener;
	private HistoryDataListener mHistoryDataListener;
	private OtherDataListener mOtherDataListener;
	private RealtimeDataListener mRealtimeDataListener;
	private DeviceMessageListener mDeviceMessageListener;
	
	private ErrorListener mErrorListener;
	private Activity mActivity;

	private MessageManager mMessageManager;
	private String tag = "BLEDevice";
	// private String address;
	BluetoothAdapter bluetoothAdapter;

	@SuppressLint("NewApi")
	public BLEDevice(String address, Activity activity) {
		if (bluetoothAdapter == null) {
			BluetoothManager bluetoothManager = (BluetoothManager) activity
					.getSystemService(Context.BLUETOOTH_SERVICE);
			bluetoothAdapter = bluetoothManager.getAdapter();
		}
		this.mDevice = bluetoothAdapter.getRemoteDevice(address);
		this.mActivity = activity;
		this.peripheral = new Peripheral(mDevice);
		peripheral.setOnCallbackListent(this);
		mMessageManager = new MessageManager(this);
	}

	/**
	 * 连接
	 * 
	 * @param activity
	 */
	public void connect() {
		peripheral.connect(mActivity);
	}

	/**
	 * 断开设备
	 */
	public void disconnect() {
		peripheral.disconnect();
	}

	/**
	 * 获取设备address地址
	 */
	public String getAddress() {
		return mDevice.getAddress();
	}

	/**
	 * 获取设备名字
	 * 
	 * @return
	 */
	public String getName() {
		return mDevice.getName();
	}

	/**
	 * 是否连接
	 * 
	 * @return
	 */
	public boolean isConnected() {
		return peripheral.isConnected();
	}

	/**
	 * 获取信号
	 */
	public void getRssi() {
		peripheral.getRssi();
	}
	/**
	 * 
	 * @param length
	 * @param sid  汉字的那一个包
	 * @param param 第几个汉字
	 * @param data
	 */
    public void wirteUserName(int cmd,byte[] oneFonts, byte[] twoFonts,byte[] threeFonts,byte[]fourFonts){
    	byte [] fontsData = new byte[32*4]; 
    	System.arraycopy(oneFonts,0,fontsData,32*0,oneFonts.length);
    	System.arraycopy(twoFonts,0,fontsData,32*1,twoFonts.length);
    	System.arraycopy(threeFonts,0,fontsData,32*2,threeFonts.length);
    	System.arraycopy(fourFonts,0,fontsData,32*3,fourFonts.length);
    	peripheral.writeFonts(fontsData);
    }
	public void write(int length, int cmd, byte[] data) {
		peripheral.write(length, cmd, data);
	}
	/**
	 * 发送图片
	 * @param cmd 指令
	 * @param number 哪一组图片
	 * @param imageData  图片byte数组，一张图片是128个字节，数组长度必须是 128*n 的长度
	 *                    n为几张图片，最大不能超过8，最小为1
	 */
	public void writeImage(final int cmd, final int number,byte[] imageData){
		if(imageData !=null & imageData.length >127 & imageData.length < 128*8+1){
			byte [] indexIata = { (byte) (number & 0xff) };
//	    	write(1, 0x0C, indexIata);
			L.i(tag, " imageData.length = " +  imageData.length);
			final byte [] data = new byte[imageData.length]; 
			System.arraycopy(imageData,0,data,0,imageData.length);
		    new Thread(new Runnable(){
				@Override
				public void run() {
				    try {
						Thread.sleep(500);
						L.i(tag,"先睡眠0.5s再发图片");
						peripheral.writeImage(cmd, number,data);
					} catch (InterruptedException e) {
						e.printStackTrace();
					}	
				}
			}).start();
		}
	}
	public void writeImageName(int cmd,int number,String[] name){
	    if( name.length>0 & name.length<9){
	    	byte [] data = new byte[name.length*16]; 
	    	for(int i=0;i<name.length; i++){
	    		if(name[i].length()<=8 & name[i].length()>0){
		    		System.arraycopy(name[i].getBytes(),0,data,i*16,name[i].getBytes().length);
	    		}
	    	}
	    	writeImageNamebyte(cmd,number,data);
	    }
	}
	
	private void writeImageNamebyte(int cmd,int number, byte[] nameData){
		if(nameData !=null & nameData.length >=16 & nameData.length <= 16*8){
			byte [] data = new byte[nameData.length]; 
			System.arraycopy(nameData,0,data,0,nameData.length);
			peripheral.writeImageName(cmd, number,data);
		}
	}
	
	
	
	
	
	/**
	 * 设置返回未解析的数据监听
	 * 
	 * @param deviceListener
	 */
	public void setDeviceMessageListener(DeviceMessageListener listener) {
		if (listener != null)
			mDeviceMessageListener = listener;
	}
	
	public void setBLEDeviceListener(BLEDeviceListener deviceListener) {
		if (deviceListener != null)
			mBLEDeviceListener = deviceListener;
	}

	/**
	 * 设置其他数据接口回调
	 * 
	 * @param listener
	 */
	public void setOtherDataListener(OtherDataListener listener) {
		if (listener != null)
			mOtherDataListener = listener;
	}

	/**
	 * 设置历史数据接口回调
	 * 
	 * @param listener
	 */
	public void setHistoryDataListener(HistoryDataListener listener) {
		if (listener != null)
			mHistoryDataListener = listener;
	}

	/**
	 * 设置实时数据接口回调
	 * 
	 * @param listener
	 */
	public void setRealtimeDataListener(RealtimeDataListener listener) {
		if (listener != null)
			mRealtimeDataListener = listener;
	}
    /**
     * 错误信息
     * @param listener
     */
	public void setErrorListener(ErrorListener listener) {
		if (listener != null)
			mErrorListener = listener;
	}

	public void sendLogin(int success) {
		if (mOtherDataListener != null){
			if (success == 0) {
				mOtherDataListener.onLogin(getAddress(),true);
			} else {
				mOtherDataListener.onLogin(getAddress(),false);
			}
		}
	}
	public void delBound(int success){
		if (mOtherDataListener != null){
			if (success == 0) {
				mOtherDataListener.onDelbound(getAddress(),true);
			} else {
				mOtherDataListener.onDelbound(getAddress(),false);
			}
		}
	}
	public void sendBound(int success){
		if (mOtherDataListener != null){
			if (success == 0) {
				mOtherDataListener.onbound(getAddress(),true);
			} else {
				mOtherDataListener.onbound(getAddress(),false);
			}
		}
	}

	public void sendFunction(int oxygen,int blood,int temperature,int heart,int sleep,int step){
		if (mOtherDataListener != null)
			mOtherDataListener.onFunction(getAddress(), oxygen, blood, temperature, heart, sleep, step);
	}
	
	public void sendAlarm(ArrayList<int[]> alarm){
		if (mOtherDataListener != null)
			mOtherDataListener.onAlarmList(getAddress(),alarm);
	}
	
	public void sendFall(int degree){
		if (mOtherDataListener !=null) {
			mOtherDataListener.onFall(getAddress(),degree);
		}
	}
//	最近一天的睡眠数据
	public void sendSleep(int[] startTime,int[] stopTime,int[] span){
		if (mRealtimeDataListener != null)
			mRealtimeDataListener.onRecentSleep(getAddress(), startTime, stopTime, span);
	}
	public void sendHeart(int heart) {
		if (mRealtimeDataListener != null)
			mRealtimeDataListener.onRealtimeHearts(getAddress(), heart);
	}

	public void sendSports(int step, int d, int c) {
		if (mRealtimeDataListener != null)
			mRealtimeDataListener.onRealtimeSports(getAddress(), step, d, c);
	}

	public void sendTemp(float temp) {
		L.i(tag, "temp:" + temp);
		if (mRealtimeDataListener != null)
			mRealtimeDataListener.onRealtimeTemperature(getAddress(), temp);
	}
	
	public void sendLocationAction(int number,int action){
		if (mRealtimeDataListener != null)
			mRealtimeDataListener.onRealLocationAction(getAddress(), number, action);
	}

	public void sendPa(float at, float al, float de) {
		if (mRealtimeDataListener != null)
			mRealtimeDataListener.onRealtimePressure(getAddress(), at, al, de);
	}
	public void sendHistory(int cmd, ArrayList<Long> times,
			ArrayList<Integer> data) {
		switch (cmd) {
		case 0x34:
			if (mHistoryDataListener != null)
				mHistoryDataListener.onHistoryDetailedSleep(getAddress(), times, data);
			break;
		case 0x42:
			if (mHistoryDataListener != null)
				mHistoryDataListener.onHistoryHeart(getAddress(), times, data);
			break;
		case 0x35:
			if (mHistoryDataListener != null){
				mHistoryDataListener.onHistorySprots(getAddress(), times, data);
			}
			break;	
		default:
			break;
		}
	}
	public void sendTemperatureHistory(int cmd, ArrayList<Long> times,
			ArrayList<Float> data) {
		switch (cmd) {
		case 0x45:
			if (mHistoryDataListener != null)
				mHistoryDataListener.onHistoryTemperature(getAddress(), times,
						data);
			break;
		default:
			break;
		}
	}
	public void sendTourniquetHistory(int cmd,ArrayList<Long> times,ArrayList<Integer[]>data){
		switch (cmd) {
		case 0x59:
			if (mHistoryDataListener != null)
				mHistoryDataListener.onHistoryTourniquet(getAddress(), times, data);
			break;
		case 0x3B:
			if (mHistoryDataListener != null)
				mHistoryDataListener.onHistoryLocationAction(getAddress(), times, data);
			break;
		}
	}

	@Override
	public void updateRssi(String address, int rssi) {
		if (mBLEDeviceListener != null)
			mBLEDeviceListener.updateRssi(address, rssi);
	}

	@Override
	public void onConnectedCallBack(String address) {
		if (mBLEDeviceListener != null)
			mBLEDeviceListener.onConnected(address);
	}

	@Override
	public void onDisConnectedCallBack(String address) {
		if (mBLEDeviceListener != null)
			mBLEDeviceListener.onDisConnected(address);
	}

	@Override
	public void onNotify(String address, int cmd, byte[] data) {
		if (mDeviceMessageListener != null)
			mDeviceMessageListener.onSendResult(address, cmd, data);
	}

	@Override
	public void sendHistory(String address, int cmd, List<byte[]> historyData) {
		if (mDeviceMessageListener != null)
			mDeviceMessageListener.onSendHistory(address, cmd, historyData);
	}

	@Override
	public void onDeviceMessage(String address, byte[] data) {
//		& data[1] !=0x0A 
		if (errorCommand == data[0] ) {
			int error = data[4];
			L.i(tag, "0x"+Integer.toHexString(data[1])+" 错误指令: 0x" + Integer.toHexString(error) + ":"
					+ RESPONE_STATE[error]);
			if (mErrorListener != null){
				int cmd = data[1] & 0xff;
				mErrorListener.onError(getAddress(), cmd ,error);
			}
		}
		mMessageManager.handlerDeviceMessage(data); // 交给消息管理者去解析所有数据
	}

	@Override
	public void onSendImageAndFontsResult(int cmd, int progress,
			int group) {
		if (mOtherDataListener != null)
			mOtherDataListener.onSendImageAndFontsResult(getAddress(), cmd, progress, group);
	}

}
