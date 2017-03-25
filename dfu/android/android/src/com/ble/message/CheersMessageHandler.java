package com.ble.message;

import com.megster.cordova.ble.central.Peripheral;

import android.bluetooth.BluetoothAdapter;

public class CheersMessageHandler extends MessageHandler{

	public CheersMessageHandler(Peripheral peripheral) {
		super(peripheral);
		
	}
	
	public static final String TAG = CheersMessageHandler.class.getSimpleName();
	
	/** 请求实时水温数据 */
	public static final byte STATE_PHONE_ACTUAL_WATER_TEMPERATURE = 0x01;

	/** 实时水温数据返回 */
	public static final byte STATE_DEVICE_ACTUAL_WATER_TEMPERATURE = 0x01;

	/** 请求实时水量数据 */
	public static final byte STATE_PHONE_ACTUAL_WATER_VOLUME = 0x02;

	/** 实时水量数据返回*/
	public static final byte STATE_DEVICE_ACTUAL_WATER_VOLUME = 0x02;

	/** 请求历史水温数据 */
	public static final byte STATE_PHONE_HISTORY_WATER_TEMPERATURE = 0x03;
	
	/** 历史水温数据返回 */
	public static final byte STATE_DEVICE_HISTORY_WATER_TEMPERATURE = 0x04;

	/** 请求历史水量数据 */
	public static final byte STATE_PHONE_HISTORY_WATER_VOLUME = 0x05;
	
	/** 历史水量数据返回*/
	public static final byte STATE_DEVICE_HISTORY_WATER_VOLUME = 0x06;

	/** 请求好友列表*/
	public static final byte STATE_PHONE_FRIENDLIST = 0x07;
	
	/** 好友列表返回*/
	public static final byte STATE_DEVICE_FRIENDLIST = 0x08;

	/** 类别 */
	public static final byte TYPE = 0x05;
	

	@Override
	protected void contentBytes(int state, byte[] result) {
		result[1] = (byte) (state | (TYPE << 4));
		switch (state) {
		case STATE_PHONE_ACTUAL_WATER_TEMPERATURE:
//			Log.i(TAG, "请求实时水温数据  ");
			result[0] = getDataHeader(0);
			// 0x00 关闭数据实时同步，0x01 打开数据实时同步。
			result[4] = 0x00;
			break;

		case STATE_PHONE_ACTUAL_WATER_VOLUME:
//			Log.i(TAG, "请求实时水量数据 ");
			result[0] = getDataHeader(0);
			result[4] = 0x00;
			/**
			 * 请求历史心率数据。Value 的长度为 1byte。 0x00
			 * 是默认的请求方式，每请求一次，设备返回一次，并且设备端删除若干历史数据，适合单手机连接设备；
			 * 0x01是可选的请求方式，每请求一次，设备返回一次，不删除任何历史数据，断开这次连接后，
			 * 历史数据将从设备中最早的地方开始重新传，适合多个设备都需要查看历史数据。 手环在收到这个命令后，每次发送最多四条历史数据。
			 */
			break;

		case STATE_PHONE_HISTORY_WATER_TEMPERATURE:
//			Log.i(TAG, "请求历史水温数据");
			result[0] = getDataHeader(0);
			result[4] = 0x01;
			break;
		case STATE_PHONE_HISTORY_WATER_VOLUME:
//			Log.i(TAG, "请求历史水量数据");
			result[0] = getDataHeader(0);
			result[4] = 0x01;
			break;
		case STATE_PHONE_FRIENDLIST:
//			Log.i(TAG, "请求好友列表");
			result[0] = getDataHeader(0);
			result[4] = 0x00;
			break;	
		}
	}
	@Override
	public void handleMessage(byte[] data) {
		int state = data[1] & FITER_TO_STATE;
		switch (state) {
		case STATE_DEVICE_ACTUAL_WATER_TEMPERATURE:
			float heart = data[4];
//			Log.i(TAG, "水温数据:" + heart);
			heart=heart/2;
//			Log.i(TAG, "实时水温数据:" + heart);
			break;
		case STATE_DEVICE_ACTUAL_WATER_VOLUME:
			float a = data[4];
//			Log.i(TAG, "实时水量数据: " +a);
			break;
		case STATE_DEVICE_HISTORY_WATER_TEMPERATURE:
//			int b = data[4];
//			Log.i(TAG, "历史水温数据----->");
			for(int i = 0; i<4;i++){

				int year = ((data[4+i*4] & 0b11111111) >> 4 & 0x0F) + 2016;
				int month = (data[4+i*4] & 0b00001111) & 0x0F ;
				int day = (data[5+i*4] & 0b11111000)>>3 & 0x1F;
				int hour = ((data[5+i*4] & 0b00000111) << 2) | (((data[6+i*4] & 0b11000000) >>6) & 0x03);
				int m = (data[6 + i * 4] & 0xff ) & 0b00111111;
				int s = data[7 + i * 4] & 0xff;
//			    Log.i(TAG, "历史水温数据: "+ year + "年   " + month
//						+ " 月 " +day+ " 日 " +hour+ " 时 "+m+" 刻  "+s+" 历史水温");
			}
			break;
//		
		case STATE_DEVICE_HISTORY_WATER_VOLUME:
//			int d = data[4];
//			Log.i(TAG, "返回请求历史水量数据");
			for(int i = 0; i<4;i++){

				int year = ((data[4+i*4] & 0b11111111) >> 4 & 0x0F) + 2016;
				int month = (data[4+i*4] & 0b00001111) & 0x0F ;
				int day = (data[5+i*4] & 0b11111000)>>3 & 0x1F;
				int hour = ((data[5+i*4] & 0b00000111) << 2) | (((data[6+i*4] & 0b11000000) >>6) & 0x03);
				int m = (data[6 + i * 4] & 0xff ) & 0b00111111;
				int s = data[7 + i * 4] & 0xff;
				float t = s/2;
//			    Log.i(TAG, "返回请求历史水量数据: "+ year + "年   " + month
//						+ " 月 " +day+ " 日 " +hour+ " 时 "+m+" 刻  "+t+" 水量 ---");
			}
			break;		
			
		case STATE_DEVICE_FRIENDLIST: {
//			Log.i(TAG, "好友列表返回 :");
			byte[] bluAddr = BluetoothAdapter.getDefaultAdapter().getAddress().replace(":", "").getBytes();
			String res = new String(bluAddr);
//			Log.i(TAG, "好友列表：  "+res);
		}
			break;
		}

	}

}
