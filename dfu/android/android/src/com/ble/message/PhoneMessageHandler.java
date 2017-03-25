package com.ble.message;

import com.megster.cordova.ble.central.LogUpdate;
import com.megster.cordova.ble.central.Peripheral;

public class PhoneMessageHandler extends MessageHandler{
	
	public final static String TAG = MessageManager.class.getSimpleName();
	
	/**类别*/
	public static final byte TYPE = 0x01;
	
	/** 请求报警 */
	public static final byte STATE_PHONE_ALERT = 0x01;
	
	/** 设备按键消息 */
	public static final byte STATE_DEVICE_KEY = 0x02;
	
	/** 设备电量通知 */
	public static final byte STATE_DEVICE_BATTERY = 0x03;
	
	/**来电提醒*/
	public static final byte STATE_DEVICE_CALL_REMIND = 0x04;
	
	/**来电已接听Answer */
	public static final byte STATE_DEVICE_CALL_ANSWER = 0x05;
	
	/**来电已拒接 Reject*/
	public static final byte STATE_DEVICE_CALL_REJECT = 0x06;
	
	/**跌倒报警 */
	public static final byte STATE_DEVICE_FALL_ALARM = 0x08 ;
	String key;
	public static int alert;
	public PhoneMessageHandler(Peripheral peripheral) {
		super(peripheral);
		key = peripheral.getDevice().getAddress();
	}
	
	@Override
	public void handleMessage(byte[] data) {
		int state = data[1]&FITER_TO_STATE;
		switch(state){
		case STATE_DEVICE_BATTERY:
//			Log.i(TAG, String.format("设备电量:%d", data[4]));
			LogUpdate.i(TAG,key, String.format("设备电量:%d", data[4]),0, 1);
			break;
		case STATE_PHONE_ALERT:
			int i = data[4];
//			Log.i(TAG, " 返回手机请求设备报警------->"+i);
			LogUpdate.i(TAG,key, " 返回手机请求设备报警 "+i,0, 1);
			break;
		case STATE_DEVICE_CALL_REMIND:
//			Log.i(TAG," 返回来电提醒"+data[4]);.
			LogUpdate.i(TAG,key, " 返回来电提醒"+data[4],0, 1);
			break;
		case STATE_DEVICE_CALL_ANSWER:
//			Log.i(TAG," 返回来电已接听"+data[4]);
			LogUpdate.i(TAG,key," 返回来电已接听"+data[4],0, 1);
			 
			break;
		case STATE_DEVICE_CALL_REJECT:
//			Log.i(TAG," 返回来电已拒接"+data[4]);
			LogUpdate.i(TAG,key," 返回来电已拒接"+data[4],0, 1);
			break;	
		case STATE_DEVICE_KEY:
//			Log.i(TAG," 返回设备按键消息");
			for(int b = 0; b<5;b++){
				int push = data[4+b]>>3;
				int longPush = data[4+b] & 0b00000111 >> 2;
				int doubleClick = data[4+b] & 0b00000011>>1;
				int click = data[4+b] & 0b00000001;
				System.out.println("push = "+push+"，longPush = "+longPush+
						"，doubleClick = "+doubleClick+"，click = "+click);
			}
			break;
		case STATE_DEVICE_FALL_ALARM:
			int a = data[4];
			System.out.println("-------------跌倒程度: "+a);
			LogUpdate.i(TAG, key,"跌倒程度:  "+a,  0, 1);
			break;
 	
		}
		
	}
	
	@Override
	protected void contentBytes(int state, byte[] result) {
		result[1] = (byte) (state|(TYPE<<4));
		switch (state) {	
		case STATE_PHONE_ALERT:
//			Log.i(TAG," 手机请求设备报警 ");  //----报错误指令10
			LogUpdate.i(TAG, key," 手机请求设备报警 ",  0, 1);
			result[0] = getDataHeader(0);
			result[4] = 0x02;//0:t停止报警；1:声音报警；02：声音+灯光报警
			System.out.println("-------------->"+result[4]);
			break;
			
		case STATE_DEVICE_CALL_REMIND:  
//			Log.i(TAG," 来电提醒");        
			
			result[0] = getDataHeader(0);
			String str = "+184755";
			LogUpdate.i(TAG, key," 来电提醒 "+"+184755",  0, 1);
			System.arraycopy(Util.strToByteArray(str), 0, result, 4, Util.strToByteArray(str).length);
//			result[4] = 0x00;
			System.out.println("来电-------------->"+Util.strToByteArray(str));
			break;
			
		case STATE_DEVICE_CALL_ANSWER:
//			Log.i(TAG," 来电已接听");
			result[0] = getDataHeader(0);
			result[4] = 0x00;
			System.out.println("-------------->"+result[4]);
			LogUpdate.i(TAG, key," 来电已接听",  0, 1);
			break;
			
		case STATE_DEVICE_CALL_REJECT:
//			Log.i(TAG," 来电已拒接");
			result[0] = getDataHeader(0);
			result[4] = 0x00;
			System.out.println("-------------->"+result[4]);
			LogUpdate.i(TAG, key," 来电已拒接",  0, 1);
			break;
	 	}
		
		
	}
	
}
