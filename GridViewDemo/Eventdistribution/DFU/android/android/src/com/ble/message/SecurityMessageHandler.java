package com.ble.message;

import com.megster.cordova.ble.central.LogUpdate;
import com.megster.cordova.ble.central.Peripheral;

import android.bluetooth.BluetoothAdapter;

/**
 * 处理与安全相关的信息
 * 
 * @author Administrator
 *
 */
public class SecurityMessageHandler extends MessageHandler{

	public final static String TAG = MessageManager.class.getSimpleName();
	
	/** 类别*/
	public static final byte TYPE = 0x02;

	/** 手机请求绑定*/
	public static final byte STATE_PHONE_BOUND = 0x01;
	
	/** 手机请求删除绑定*/
	public static final byte STATE_PHONE_DEL_BOUND = 0x02;

	/** 用户登录请求*/
	public static final byte STATE_PHONE_USER_LOGIN = 0x03;

	/** 超级绑定*/
	public static final byte STATE_PHONE_UPSER_BOUND = 0x04;
	
	/**手机请求蓝牙设备E号 */
	public static final byte STATE_PHONE_SELECT_ENUMBER = 0x05;
	
	/**手机请求蓝牙设备MAC地址 */
	public static final byte STATE_PHONE_SELECT_MAC = 0x06;

	/**设备返回E号 */
	public static final byte STATE_DEVICE_ENUMBER_RESPONE = 0x05;
	
	/**设备返回MAC地址 */
	public static final byte STATE_DEVICE_MAC_RESPONE = 0x06;
	
	/**
	 * 请求获得设备特性/返回设备特性
	 */
	public static final byte STATE_DEVICE_FUNCTION = 0x08;

	String key =mPeripheral.getAddres();
	public SecurityMessageHandler(Peripheral peripheral) {
		super(peripheral);
	}
    
	// TODO 数据要封装并传输 现在考虑JOSN包
	@Override
	public void handleMessage(byte[] data) {
		int state = data[1] & FITER_TO_STATE;
//		Log.i(TAG, "handlerDeviceMessage " + state);
//		Log.i(TAG, "response " + MessageManager.RESPONE_STATE[data[4]]);
		switch (state) {
			
		case STATE_DEVICE_MAC_RESPONE:
//			Log.i(TAG, "设备返回MAC地址");
			LogUpdate.i(TAG, key,"设备返回MAC地址", 0, 1);
			break;
			
		case STATE_DEVICE_ENUMBER_RESPONE:
//			Log.i(TAG, "设备返回E号");
			LogUpdate.i(TAG, key,"设备返回E号", 0, 1);
			break;
			
		case STATE_PHONE_USER_LOGIN:
//			Log.i(TAG, "设备响应登录请求");
			LogUpdate.i(TAG, key,"设备响应登录请求", 0, 1);
			mPeripheral.login(data[4]);
			break;
			
		case STATE_PHONE_BOUND:
//			Log.i(TAG, "设备响应绑定请求");
			LogUpdate.i(TAG, key,"设备响应绑定请求", 0, 1);
			mPeripheral.login(data[4]);
			break;
			
		case STATE_PHONE_UPSER_BOUND:
//			Log.i(TAG, "设备响应超级绑定请求返回");
			mPeripheral.login(data[4]);
			break;
		case STATE_DEVICE_FUNCTION:
			LogUpdate.i(TAG, key,"返回设备特性", 0, 1);
			int oxygen = ((data[7] & 0xff) & 0b00111111)>> 5 ;
			int blood = ((data[7] & 0xff) & 0b00011111)>> 4 ;
			int temperature  = ((data[7] & 0xff) & 0b00001111)>> 3;
			int heart  = ((data[7] & 0xff) & 0b00000111)>> 2;
			int sleep = ((data[7] & 0xff) & 0b00000011)>> 1;
			int step = (data[7] & 0xff) & 0b00000001 ;
			String a = "设备特性..."+ "血氧:"+oxygen+ " 血压:" +blood+" 温度:"+temperature +" 心率:"+heart+" 睡眠:"+sleep+" 计步:"+step;
			LogUpdate.i(TAG, key,a, 0, 1);
			break;
		}
	}
	
	private final byte[] SUPER_BOUND_DATA = {0x01, 0x23, 0x45, 0X67, (byte) 0x89, (byte) 0xAB, (byte) 0xCD, (byte) 0xEF, (byte) 0xFE, (byte) 0xDC, (byte) 0xBA, (byte) 0x98, 0x76, 0x54, 0x32, 0x10};
	
	@Override
	public void contentBytes(int state, byte[] result) {
		byte[] bluAddr = BluetoothAdapter.getDefaultAdapter().getAddress().replace(":", "").getBytes();
		result[1] = (byte) (state | (TYPE << 4));
		switch (state) {
		case STATE_PHONE_BOUND:
//			Log.i(TAG, "手机请求绑定");
			LogUpdate.i(TAG, key,"手机请求绑定", 0, 1);
			result[0] = getDataHeader(15);
			System.arraycopy(bluAddr, 0, result, 4, bluAddr.length);
			break;

		case STATE_PHONE_DEL_BOUND:
//			Log.i(TAG, "手机请求删除绑定");
			LogUpdate.i(TAG, key,"手机请求删除绑定", 0, 1);
			result[0] = getDataHeader(15);
			System.arraycopy(bluAddr, 0, result, 4, bluAddr.length);
			break;
			
		case STATE_PHONE_UPSER_BOUND: {
			LogUpdate.i(TAG, key,"超级绑定", 0, 1);
			result[0] = getDataHeader(15);
			System.arraycopy(SUPER_BOUND_DATA, 0, result, 4, SUPER_BOUND_DATA.length);
			break;
		}
		
		case STATE_PHONE_USER_LOGIN:
//			Log.i(TAG, "用户登录请求");
			LogUpdate.i(TAG, key,"用户登录请求", 0, 1);
			result[0] = getDataHeader(15);
			System.arraycopy(bluAddr, 0, result, 4, bluAddr.length);
			break;
			
		case STATE_PHONE_SELECT_MAC:
//			Log.i(TAG, "手机请求蓝牙设备MAC地址");
			LogUpdate.i(TAG, key,"手机请求蓝牙设备MAC地址", 0, 1);
			result[0] = getDataHeader(0);
			break;
			
		case STATE_PHONE_SELECT_ENUMBER:
//			Log.i(TAG, "手机请求蓝牙设备E号");
			LogUpdate.i(TAG, key,"手机请求蓝牙设备E号", 0, 1);
			result[0] = getDataHeader(0);
			break;
		case STATE_DEVICE_FUNCTION:
			LogUpdate.i(TAG, key,"请求获得设备特性", 0, 1);
			result[0] = getDataHeader(0);
			result[4] = 0x00;
			break;
			

		}
	}

}
