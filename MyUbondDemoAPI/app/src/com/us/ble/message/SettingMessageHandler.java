package com.us.ble.message;

import java.util.ArrayList;
import java.util.Arrays;

import com.us.ble.central.BLEDevice;
import com.us.ble.central.L;

/***
 *  处理用户设置信息相关类
 * @author Administrator
 *
 */

public class SettingMessageHandler extends MessageHandler {
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
	
	/**步数目标值*/
//	public WalkAims walkAims; 
	
	
	long start ;
    String key;
	public SettingMessageHandler(BLEDevice peripheral) {
		super(peripheral);
	}

	@Override
	public void handleMessage(byte[] data) {
		int state = data[1] & FITER_TO_STATE;
		switch (state) {
		case STATE_DEVICE_SET_ALARM:
//			ArrayList<int[]> alarm2 = new ArrayList<>();
//			for(int i = 0;i<3;i++){
//				int[] xx = new int [8]; 
//				int a1 = data[5 * i + 4] & 0xff, 
//						 a2 = data[5 * i + 5] & 0xff, 
//						 a3 = data[5 * i + 6] & 0xff, 
//						 a4 = data[5 * i + 7] & 0xff, 
//						 a5 = data[5 * i + 8] & 0xff;
//				int year1 = (a1 >> 2) + 2016;
//				int month1 = (a1 & 0b00000011) << 2 | (a2 & 0xff >> 6);
//				int day1 = (a2 & 0b00111111) >> 1;
//				int hour1 = ((a2 & 0b00000001) << 4) | (a3 >> 4);
//				int min1 = (a3 & 0b00001111) << 2 | (a4 >> 6);
//				int alarmID1 = (a4 & 0b00111111) >> 3;
//				int dayFlags1 = a5 & 0b01111111;
//				int opend = (a5 & 0xff)>> 7; 
//				L.i(TAG, "返回闹钟列表2--->"+""+year1+"-"+month1+"-"+day1
//						+"  "+hour1+" ："+min1+" ,id:"+alarmID1+" 重复日:"+dayFlags1 + "开关："+opend);
//				xx[0] = year1;
//				xx[1] = month1;
//				xx[2] = day1;
//				xx[3] = hour1;
//				xx[4] = min1;
//				xx[5] = alarmID1;
//				xx[6] = dayFlags1;
//				xx[7] = opend;
//				alarm2.add(xx);
//			}
//			mBLEDevice.sendAlarm(alarm2);
			break;
		case STATE_DEVICE_BACK_ALARM:
			ArrayList<int[]> alarm = new ArrayList<>();
			for(int i = 0;i<3;i++){
				int[] xx = new int [8]; 
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
				L.i(TAG, "返回闹钟列表3--->"+""+year1+"-"+month1+"-"+day1
						+"  "+hour1+" ："+min1+" ,id:"+alarmID1+" 重复日:"+dayFlags1 + "开关："+opend);
				xx[0] = year1;
				xx[1] = month1;
				xx[2] = day1;
				xx[3] = hour1;
				xx[4] = min1;
				xx[5] = alarmID1;
				xx[6] = dayFlags1;
				xx[7] = opend;
				alarm.add(xx);
			}
			mBLEDevice.sendAlarm(alarm);
		    break;
		
		case STATE_DEVICE_SET_TIME:
//			L.i(TAG, "返回时间设置");	
			int y = data[4]>>2;
//			L.i(TAG,key, "返回时间设置 "+ data[4],0, 1);
//			L.i(TAG, "返回时间设置--- "+"年："+y);	
			break;
		case USER_SET:
//			L.i(TAG,key, "返回用户设置 "+ data[4],0, 1);
			break;	
		case STATE_DEVICE_WALK:
//			L.i(TAG,key, "返回计步目标设定 "+ data[4],0, 1);
			
			break;
		case STATE_DEVICE_LOST:
//			L.i(TAG, "返回防丢设置"+ data[4]);
			break;
		case LONG_SIT:
//			L.i(TAG, "返回久坐提醒设置 "+data[4]);
			break;
		case FactorySettings:
//			L.i(TAG, "返回出厂设置 ");
			break;
//		case CALL_NOTIFICATION:
//			L.i(TAG, "返回来电通知开关设置 "+data[4]);
//		    break;
		}
	}

}
