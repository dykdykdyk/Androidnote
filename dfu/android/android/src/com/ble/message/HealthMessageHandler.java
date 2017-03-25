package com.ble.message;

import org.json.JSONException;
import org.json.JSONObject;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.View;

import com.ble.re.data.Update;
import com.megster.cordova.ble.central.LogUpdate;
import com.megster.cordova.ble.central.Peripheral;

/**
 * 处理健康相关的信息
 * 
 * @author Administrator
 * 
 */
public class HealthMessageHandler extends MessageHandler {
    
	public HealthMessageHandler(Peripheral peripheral) {
		super(peripheral);
		key = peripheral.getDevice().getAddress();
	}
	public static final String TAG = HealthMessageHandler.class.getSimpleName();
    public String key; 
	/** 类别 */
	public static final byte TYPE = 0x04;

	/** 手机请求实时心率数据 */
	public static final byte STATE_PHONE_RATE = 0x01;

	/** 历史心率数据返回 */
	public static final byte STATE_DEVICE_RATE = 0x02;
	
	/** 请求历史心率数据 */
	public static final byte STATE_PHONE_SYNC = 0x03;

	/** 请求实时体温数据 */
	public static final byte STATE_PHONE_TEMP = 0x04;

	/** 历史体温数据返回 */
	public static final byte STATE_DEVICE_TEMP_RESULT = 0x05;

	/** 请求历史温度数据 */
	public static final byte STATE_DEVICE_TEMP_SYNC = 0x06;
	/** 实时心率数据返回(*) */
	public static final byte STATE_DEVICE_NOW_HEART = 0x07;

	/** 实时体温数据返回(*) */
	public static final byte STATE_DEVICE_NOW_TEMPERATURE = 0x08;

	@Override
	public void contentBytes(int state, byte[] result) {
		result[1] = (byte) (state | (TYPE << 4));
		switch (state) {
		case STATE_PHONE_RATE:
			LogUpdate.i(TAG, key,"请求实时心率数据",  0, 1);
			mPeripheral.sendString(key,"请求实时心率数据");
			result[0] = getDataHeader(0);
			// 0x00 关闭数据实时同步，0x01 打开数据实时同步。
			result[4] = 0x01;
			break;

		case STATE_PHONE_SYNC:
			LogUpdate.i(TAG, key,"请求历史心率数据 ",  0, 1);
			mPeripheral.sendString(key,"请求历史心率数据 ");
			result[0] = getDataHeader(0);
			result[4] = 0x01;
	
			/**
			 * 请求历史心率数据。Value 的长度为 1byte。 0x00
			 * 是默认的请求方式，每请求一次，设备返回一次，并且设备端删除若干历史数据，适合单手机连接设备；
			 * 0x01是可选的请求方式，每请求一次，设备返回一次，不删除任何历史数据，断开这次连接后，
			 * 历史数据将从设备中最早的地方开始重新传，适合多个设备都需要查看历史数据。 手环在收到这个命令后，每次发送最多四条历史数据。
			 */
			break;

		case STATE_PHONE_TEMP:
			LogUpdate.i(TAG, key,"请求实时体温数据",  0, 1);
			mPeripheral.sendString(key,"请求实时体温数据: ");
//			Log.i(TAG, "请求实时体温数据");
			result[0] = getDataHeader(0);
			result[4] = 0x01;
			break;
		case STATE_DEVICE_TEMP_SYNC:
			LogUpdate.i(TAG, key,"请求历史温度数据 ",  0, 1);
			mPeripheral.sendString(key,"请求历史温度数据: ");
//			Log.i(TAG, "请求历史温度数据");
			result[0] = getDataHeader(0);
			/**
			 * 请求历史体温数据。Value 的长度为 1byte。 0x00 是
			 * 默认的请求方式，每请求一次，设备返回一次，并且设备端删除若干历史数据，适合单 手机连接设备；0x01
			 * 是可选的请求方式，每请求一次，设备返回一次，不删除任何历史
			 * 数据，断开这次连接后，历史数据将从设备中最早的地方开始重新传，适合多个设备都
			 * 需要查看历史数据。手环在收到这个命令后，每次发送最多四条历史数据。
			 * */
			result[4] = 0x01;
			break;

		}
	}

	// TODO 数据要封装并传输 现在考虑JOSN包
	@Override
	public void handleMessage(byte[] data) {
		int state = data[1] & FITER_TO_STATE;
		switch (state) {
		case STATE_DEVICE_NOW_HEART:
//			Log.i(TAG, "实时心率数据返回(*)");
			// 当请求实时心率数据开启以后，设备每得到一个新数据，就返回给手机。Value
			// 的长度为 1byte。范围是 0～255。
			// int heart = data[4];
			int heart = data[4];
			LogUpdate.i(TAG, key,"实时心率: "+ heart,  0, 1);
			mPeripheral.sendString(key,"实时心率: "+ heart);
			mPeripheral.sendHeart(key, heart);
//			Log.i(TAG, "实时心率: " + heart);	
			break;
		case STATE_DEVICE_NOW_TEMPERATURE:
//			Log.i(TAG, "实时体温数据返回*");
			//当请求实时体温数据开启以后，设备每得到一个新数据，就返回给手机。Value 的长度为2个字节整数，返回0~4095，代表0到409.5度，比原始数据放大了10倍
			float bb =(data[5]& 0b11111111)<<8| data[4] & 0b11111111;
			float a = bb/10;
//			Log.i(TAG, "实时体温: " +a);
			LogUpdate.i(TAG, key,"实时体温: "+ a,  0, 1);
			mPeripheral.sendString(key,"实时体温: "+ a);
			mPeripheral.sendTemp(key, (int)bb);
			break;
		case STATE_PHONE_SYNC:
//			Log.i(TAG, "返回请求历史心率数据----->");
			LogUpdate.i(TAG, key,"返回请求历史心率数据-----> ",  0, 1);
			mPeripheral.sendString(key,"返回请求历史心率数据-----> ");
			for(int i = 0; i<4;i++){

				int year = ((data[4+i*4] & 0b11111111) >> 4 & 0x0F) + 2016;
				int month = (data[4+i*4] & 0b00001111) & 0x0F ;
				int day = (data[5+i*4] & 0b11111000)>>3 & 0x1F;
				int hour = ((data[5+i*4] & 0b00000111) << 2) | (((data[6+i*4] & 0b11000000) >>6) & 0x03);
			    int quarter = ((data[6+i*4] & 0b00110000) >> 4) & 0x03;
			    int keartrate = ((data[7+i*4])&0xff) | (((int)data[6+i*4] & 0b00001111)<<8);

//			    Log.i(TAG, "历史心率数据返回: "+ year + "年   " + month
//						+ " 月 " +day+ " 日 " +hour+ " 时 "+quarter+" 刻  "+keartrate+" 心率 ");
			    String xx = "历史心率数据返回: "+ year + "年   " + month
						+ " 月 " +day+ " 日 " +hour+ " 时 "+quarter+" 刻  "+keartrate+" 心率 ";
			    LogUpdate.i(TAG, key,xx,0, 1);
				mPeripheral.sendString(key,xx);
			}
			
			break;
//		
		case STATE_DEVICE_TEMP_SYNC:
//			int d = data[4];
			LogUpdate.i(TAG, key,"返回请求历史温度数据-----> ",  0, 1);
			mPeripheral.sendString(key,"返回请求历史温度数据-----> ");
			for(int i = 0; i<4;i++){

				int year = ((data[4+i*4] & 0b11111111) >> 4 & 0x0F) + 2016;
				int month = (data[4+i*4] & 0b00001111) & 0x0F ;
				int day = (data[5+i*4] & 0b11111000)>>3 & 0x1F;
				int hour = ((data[5+i*4] & 0b00000111) << 2) | (((data[6+i*4] & 0b11000000) >>6) & 0x03);
			    int quarter = ((data[6+i*4] & 0b00110000) >> 4) & 0x03;
			    float temperature = ((data[7+i*4])&0xff) | (((int)data[6+i*4] & 0b00001111)<<8);
				float t = temperature/10;

//			    Log.i(TAG, "返回请求历史温度数据: "+ year + "年   " + month
//						+ " 月 " +day+ " 日 " +hour+ " 时 "+quarter+" 刻  "+t+" 体温 ---");
			    String oo = "返回请求历史温度数据: "+ year + "年   " + month
						+ " 月 " +day+ " 日 " +hour+ " 时 "+quarter+" 刻  "+t+" 体温 ";
			    LogUpdate.i(TAG, key,oo,0, 1);
				mPeripheral.sendString(key,oo);
			}
			break;
		
			
		case STATE_DEVICE_RATE: {
//			Log.i(TAG, "历史心率数据返回 ");
			for(int i = 0; i<4;i++){
				int year = ((data[4+i*4] & 0b11111111) >> 4 & 0xFF) + 2016;
				int month = (data[4+i*4] & 0b00001111) & 0xFF ;
				int day = (data[5+i*4] & 0b11111111)>>3 & 0xFF;
				int hour = (data[5+i*4] & 0b00000111 << 3) | (data[6+i*4] & 0b11111111 >>6) & 0xFF;
			    int quarter = (data[6+i*4] & 0b00111111) >> 4 & 0xFF;
			    int keartrate = (data[6+i*4] & 0b00001111<<8 & 0xFF)| data[7+i*4] & 0b11111111;
//			    Log.i(TAG, "历史心率数据返回: "+ year + "年   " + month
//						+ " 月 " +day+ " 日 " +hour+ " 时 "+quarter+" 刻  "+keartrate+" 心率 ");
			}
		}
			break;	
		case STATE_DEVICE_TEMP_RESULT: {
//			Log.i(TAG, "历史体温数据返回");
			for(int i = 0; i<4;i++){
				int year = ((data[4+i*4] & 0b11111111) >> 4 & 0xFF) + 2016;
				int month = (data[4+i*4] & 0b00001111) & 0xFF ;
				int day = (data[5+i*4] & 0b11111111)>>3 & 0xFF;
				int hour = (data[5+i*4] & 0b00000111 << 3) | (data[6+i*4] & 0b11111111 >>6) & 0xFF;
			    int quarter = (data[6+i*4] & 0b00111111) >> 4 & 0xFF;
			    float temperature = ((data[6+i*4] & 0b00001111<<8 & 0xFF)| data[7+i*4] & 0b11111111);
//			    Log.i(TAG, "历史心率数据返回: "+ year + "年   " + month
//						+ " 月 " +day+ " 日 " +hour+ " 时 "+quarter+" 刻  "+temperature+" 体温 ");
			}
			break;
		}
		}

	}




}
