package com.ble.message;

import java.util.Arrays;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import com.megster.cordova.ble.central.Peripheral;

//import android.bluetooth.BluetoothAdapter;
import android.util.Log;
/***
 *  处理用户设置信息相关类
 * @author Administrator
 *
 */

public class SettingMessage extends MessageHandler {
	/** 类别*/
	public static final byte TYPE = 0x00;

	public static final String TAG = SportsMessageHandler.class.getSimpleName();

	// CPMMAND 0: SETTING
	/** 时间设置 */
	public static final byte STATE_DEVICE_SET_TIME = 0x01;
	/** 闹钟设置 */
	public static final byte STATE_DEVICE_SET_ALARM = 0x02;
	/** 获取设备闹钟列表请求 */
	public static final byte STATE_DEVICE_GET_ALARM = 0x03;
	/** 获取设备闹钟列表返回 */
	public static final byte STATE_DEVICE_BACK_ALARM = 0x03;
	/** 计步目标设定 */
	public static final byte STATE_DEVICE_WALK = 0x04;

	

	/** 计步目标设定应答 */
	public static final byte STATE_DEVICE_WALK_BACK = 0x04;

	/** 用户信息设置命令 */
	public static final byte USER_SET = 0x05;
	/**防丢设置*/
	public static final byte STATE_DEVICE_LOST = 0x06;
	/** 久坐提醒 */
	public static final byte LONG_SIT = 0x07;
	
	
	/** 来电通知开关设置 无用了*/
	public static final byte CALL_NOTIFICATION = 0x08;
	// /***/
	/** 是否使用来电通知功能 */
//	public static boolean isCall = true;
	
	/**恢复出厂设置*/
	public static final byte FactorySettings = 0x09;
	
	private Peripheral mPeripheral;
	
	long start ;

	public SettingMessage(Peripheral peripheral) {
		super(peripheral);
		this.mPeripheral = peripheral;
	}
	JSONArray alarmArray = new JSONArray();   
	
	public JSONObject getAlarmJSONObject() {
		JSONObject json = new JSONObject();
		try {
			json.put("alarmArray", alarmArray);
		} catch (JSONException e) { // this shouldn't happen
			e.printStackTrace();
		}
		return json;
	}

	@Override
	public void handleMessage(byte[] data) {
		int state = data[1] & FITER_TO_STATE;
		switch (state) {
		case STATE_DEVICE_SET_ALARM:
			 new Thread(){
		            public void run(){
		               try {
		                  Thread.sleep(20);
		                  mPeripheral.getAlarm();
		               } catch (InterruptedException e) { }
		            }
		         }.start();
			
			Log.i(TAG, "返回闹钟设置列表:" + Arrays.toString(data));
			for(int i = 0;i<3;i++){
				int a1 = data[5 * i + 4] & 0xff, 
						 a2 = data[5 * i + 5] & 0xff, 
						 a3 = data[5 * i + 6] & 0xff, 
						 a4 = data[5 * i + 7] & 0xff, 
						 a5 = data[5 * i + 8] & 0xff;
				int year1 = (a1 >> 2) + 2016;
				int month1 = (a1 & 0b00000011) << 2 | (a2 & 0xff >> 6);
				int day1 = (a2 & 0b00111111) >> 1;
				int hour1 = ((a2 & 0b00000001) << 4) | (a3 >> 4);
				int min1 = (a3 & 0b00001111) << 2 | (a4 >> 6);
				int alarmID1 = (a4 & 0b00111111) >> 3;
				int dayFlags1 = a5 & 0b01111111;
				int opend = (a5 & 0xff)>> 7; 
				Log.i(TAG, "返回闹钟列表--->"+""+year1+"-"+month1+"-"+day1
						+"  "+hour1+" ："+min1+" /id:"+alarmID1+" 重复日:"+dayFlags1 + "开关："+opend);
			}
			break;
		case STATE_DEVICE_BACK_ALARM:
			Log.i(TAG, "返回闹钟列表:" + Arrays.toString(data));
			
			for(int i = 0;i<3;i++){
				int a1 = data[5 * i + 4] & 0xff, 
						 a2 = data[5 * i + 5] & 0xff, 
						 a3 = data[5 * i + 6] & 0xff, 
						 a4 = data[5 * i + 7] & 0xff, 
						 a5 = data[5 * i + 8] & 0xff;
				int year1 = (a1 >> 2) + 2016;
				int month1 = (a1 & 0b00000011) << 2 | (a2 & 0xff >> 6);
				int day1 = (a2 & 0b00111111) >> 1;
				int hour1 = ((a2 & 0b00000001) << 4) | (a3 >> 4);
				int min1 = (a3 & 0b00001111) << 2 | (a4 >> 6);
				int alarmID1 = (a4 & 0b00111111) >> 3;
				int dayFlags1 = a5 & 0b01111111;
				int opend = (a5 & 0xff)>> 7; 
				Log.i(TAG, "返回闹钟列表--->"+""+year1+"-"+month1+"-"+day1
						+"  "+hour1+" ："+min1+" /id:"+alarmID1+" 重复日:"+dayFlags1 + "开关："+opend);
//				
//				int a1 = data[5 * i + 4] & 0xff, 
//						 a2 = data[5 * i + 5] & 0xff, 
//						 a3 = data[5 * i + 6] & 0xff, 
//						 a4 = data[5 * i + 7] & 0xff, 
//						 a5 = data[5 * i + 8] & 0xff;
//				int year1 = (a1 >> 2) + 2000;
//				int month1 = (a1 & 0b00000011) << 2 | (a2 >> 6);
//				int day1 = (a2 & 0b00111111) >> 1;
//				int hour1 = ((a2 & 0b00000001) << 4) | (a3 >> 4);
//				int min1 = (a3 & 0b00001111) << 2 | (a4 >> 6);
//				int alarmID1 = (a4 & 0b00111111) >> 3;
//				int dayFlags1 = a5 & 0b01111111;
//				Log.i(TAG, "返回闹钟列表--->"+"年："+year1+" 月："+month1+" 日："+day1
//						+" 时："+hour1+" 分："+min1+" id:"+alarmID1+" 重复日:"+dayFlags1);
//			
			}
		    break;
		
		case STATE_DEVICE_SET_TIME:
			Log.i(TAG, "返回时间设置");	
			int y = data[4]>>2;
//			mPeripheral.sendTimeRsult();
//			Log.i(TAG, "返回时间设置--- "+"年："+y);	
			break;
		case USER_SET:
			Log.i(TAG, "返回用户设置" +data[4]);	
			mPeripheral.send(data[4]);
			break;	
		case STATE_DEVICE_WALK:
			Log.i(TAG, "返回计步目标设定 "+ data[4]);
			break;
		case STATE_DEVICE_LOST:
			Log.i(TAG, "返回防丢设置"+ data[4]);
			break;
		case LONG_SIT:
			Log.i(TAG, "返回久坐提醒设置 "+data[4]);
			break;
		case FactorySettings:
			Log.i(TAG, "返回出厂设置 ");
			break;
//		case CALL_NOTIFICATION:
//			Log.i(TAG, "返回来电通知开关设置 "+data[4]);
//		    break;
		}
	}

	@Override
	protected void contentBytes(int state, byte[] result) {
		result[1] = (byte) (state | (TYPE << 4));
		switch (state) {
		case STATE_DEVICE_SET_TIME:
			Log.i(TAG, "时间设置 ");
			result[0] = getDataHeader(3);
//			result[2] = 0x00;
			byte[] time = Util.nowTimeToBytes();
			System.arraycopy(time, 0, result, 4, time.length);
			
			break;
		case STATE_DEVICE_SET_ALARM:
			Log.i(TAG, "闹钟设置 ");
			result[0] = getDataHeader(14);
			byte [] alarmToBytes1 = Util.alarmToBytes1();
			byte [] alarmToBytes2 = Util.alarmToBytes2();
			byte [] alarmToBytes3 = Util.alarmToBytes3();
			System.arraycopy(alarmToBytes1, 0, result, 4, alarmToBytes1.length);
			System.arraycopy(alarmToBytes2, 0, result, 9, alarmToBytes2.length);
			System.arraycopy(alarmToBytes3, 0, result, 14, alarmToBytes3.length);

			break;

		case STATE_DEVICE_GET_ALARM:
			Log.i(TAG, "获取设备闹钟列表请求 ");
			result[0] = getDataHeader(0);
			result[4] = 0x00;

			break;
		case STATE_DEVICE_WALK:
			Log.i(TAG, "计步目标设定 ");
			result[0] = getDataHeader(3);
			byte[] b = Util.intToByteArray(Util.sports);
			System.arraycopy(b, 0, result, 4, b.length);
			break;
		case USER_SET:
			
			result[0] = getDataHeader(3);
			byte[] user = Util.userToByte();
			Log.i(TAG, "用户信息设置命令 " + Arrays.toString(user));
			System.arraycopy(user, 0, result, 4, user.length);
//			start = System.currentTimeMillis();
			break;
		case STATE_DEVICE_LOST:
			Log.i(TAG, "防丢设置---->好像没反应");
			result[0] = getDataHeader(0);
			result[4] = 0x01; //0:不报警；1:普通报警；02:紧急报警 不能写死
			break;
		case LONG_SIT:
			Log.i(TAG, "久坐提醒设置 ");
			result[0] = getDataHeader(7);
			byte[] lgSit = Util.longSitByte(); 
			System.arraycopy(lgSit, 0, result, 4, lgSit.length);
//			start = System.currentTimeMillis();
            break;
//		case CALL_NOTIFICATION:
//			Log.i(TAG, "来电通知开关设置 ");
//
//			result[0] = getDataHeader(0);
//            //0x01 使能来电通知功能， 0x00关闭来电通知功能
//			result[4] = 0x01;
////			isCall = false;
//			start = System.currentTimeMillis();
//			break;	
		case FactorySettings:
			Log.i(TAG, "恢复出厂设置 ");
			result[0] = getDataHeader(0);
			result[4] = 0x00;
			break;	
			
		}

	}
}
