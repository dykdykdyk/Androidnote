package com.ble.message;

import java.util.Arrays;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import android.util.Log;

import com.ble.re.data.Update;
import com.megster.cordova.ble.central.LogUpdate;
import com.megster.cordova.ble.central.Peripheral;

/**
 * 处理与运动相关的信息
 * 
 * @author Administrator
 * 
 */
public class SportsMessageHandler extends MessageHandler {

	/** 类别 */
	public static final byte TYPE = 0x03;

	public static final String TAG = SportsMessageHandler.class.getSimpleName();

	/** 请求实时运动数据 */
	public static final byte STATE_PHONE_RUN_DATE = 0x01;

	/** 设备运动数据返回 无效了 */
	public static final byte STATE_DEVICE_RUN_DATA = 0x02;

	/** 睡眠数据返回 无效*/
	public static final byte STATE_DEVICE_SLEEP_DATA = 0x03;

	/** 睡眠设定数据返回 */
	public static final byte STATE_DEVICE_SLEEP_SETTING = 0x04;

	/** 请求历史运动数据/历史运动数据返回 */
	public static final byte STATE_PHONE_SYNC = 0x05;
	
	/** 返回当天运动数据 */
	public static final byte STATE_SPORTS_BACK = 0x06;

	/** 请求实时气压数据 */
	public static final byte REQUEST_PRESSURE = 0x07;
	
	/** 返回实时气压数据 */
	public static final byte RETURN_PRESSURE= 0x08;

	private JSONArray timeArray;
	private JSONArray stepArray;
	
	/***
	 * 判断历史数据是否全部已经发送
	 * true 发送完毕
	 * 
	 * */
	public boolean isSend = false;
	private static String key;
	public SportsMessageHandler(Peripheral peripheral) {
		super(peripheral);
		key = peripheral.getDevice().getAddress();
	}


	// TODO 数据要封装并传输 现在考虑JOSN包
	public void handleMessage(byte[] data) {
		timeArray = new JSONArray();   
	    stepArray = new JSONArray();  
	    
		int state = data[1] & FITER_TO_STATE;
		switch (state) {
		case STATE_DEVICE_RUN_DATA: {
//			Log.i(TAG, "设备运动数据返回");
			int realtime = data[4] >> 7 & 0xff;// 0：历史 1：实时
			int year = (data[4] & 0b01111111) >> 1 & 0xff;
			int month = ((data[4] & 0b00000001) << 3) | (data[1] >> 5) & 0xff;
			int day = (data[5] & 0b00011111) & 0xff;
//			Log.i(TAG, "realtime= " + realtime + ", year = " + year
//					+ ", month = " + month + ", day = " + day);
			for (int i = 0; i < 4; i++) {
				byte b1 = data[5 + 3 * i + 1], b2 = data[5 + 3 * i + 2], b3 = data[5 + 3 * i + 3];
				int offset = b1 >> 1 & 0xff;
				int mode = (b1 & 0x01 << 1) & (b2 >> 7) & 0xff;
				int stepCount = (b2 & 0b01111111 << 5) & (b3 >> 3) & 0xff;
				int activeTime = (b3 & 0b00000111) & 0xff;
//				Log.i(TAG, "item" + i + ": offset = " + offset + ", mode = "
//						+ mode + ", stepCount = " + stepCount
//						+ " , activeTime = " + activeTime);
			}
		}
			break;

		
		case STATE_SPORTS_BACK:
//			Log.i(TAG, "返回当天运动数据,设备每隔几秒定时返回总步数，总里程，总卡路里");

			byte[] a = new byte[5];
			byte[] b = new byte[5];
			byte[] c = new byte[5];
			// byte[] d = new byte[5];
			for (int i = 0; i < 4; i++) {
				a[i] = data[i + 4];
				b[i] = data[i + 8];
				c[i] = data[i + 12];
				// d[i] = data[i+16];
				System.out.println(a[i] + "--->" + b[i] + "--->" + c[i]);
			}
			int steps = Util.bytesToInt2(a, 0);
			int distance = Util.bytesToInt2(b, 0);
			int calory = Util.bytesToInt2(c, 0);

//			Log.i(TAG, "steps = " + steps + ", distance = " + distance
//					+ ", calory = " + calory);
			String xxoo = "steps = " + steps + ", distance = " + distance
					+ ", calory = " + calory;
			LogUpdate.i(TAG, key,xxoo, 0, 1);
//			LogUpdate.i(TAG, key,xxoo, steps, 2);
			mPeripheral.sendStep(key,steps);
//			mPeripheral.sendString(key,xxoo);
			break;
		case STATE_PHONE_RUN_DATE:
			int aa = data[4];
//			Log.i(TAG, "返回请求运动数据-----" + aa);

			break;
		case STATE_PHONE_SYNC:
			int bb = data[4];
//			Log.i(TAG, "返回历史运动数据---"+Arrays.toString(data));
			for(int i = 0; i<4;i++){

				int year = ((data[4+i*4] & 0b11111111) >> 4 & 0x0F) + 2016;
				int month = (data[4+i*4] & 0b00001111) & 0x0F ;
				int day = (data[5+i*4] & 0b11111000)>>3 & 0x1F;
				int hour = ((data[5+i*4] & 0b00000111) << 2) | (((data[6+i*4] & 0b11000000) >>6) & 0x03);
			    int quarter = ((data[6+i*4] & 0b00110000) >> 4) & 0x03;
			    int stepCounter = ((data[7+i*4])&0xff) | (((int)data[6+i*4] & 0b00001111)<<8);
			   
			    String times =  String.valueOf(year) + ":" + String.valueOf(month)+ ":" +
	                    String.valueOf(day)+ ":" + String.valueOf(hour)+ ":" +
	                    String.valueOf(quarter*15);		 
//			    Log.i(TAG,"--------"+ times +"--"+stepCounter);
			    //时间戳全部为 0 的数据代表传送结束
			    if(stepCounter<0){
			    	isSend = true;  //传送结束
			        System.out.println("---------"+isSend);
			    }else{
			    	timeArray.put(times);
					stepArray.put(stepCounter);
			    }
//			     Log.i(TAG, year + "年  " + month
//				+ " 月 " +day+ " 日 " +hour+ " 时  "+quarter+" 刻  "+stepCounter+" 步数 "+"- isSend "+isSend);
			     String xx =year + "年  " + month+ " 月 " +day+ " 日 " +hour+ " 时  "+quarter+" 刻  "+stepCounter+" 步数 "+" isSend "+isSend;
			     LogUpdate.i(TAG, key,xx, 0, 1);
//			 	mPeripheral.sendString(key,xx);
			}
			break;
			
		case RETURN_PRESSURE:
//			 LogUpdate.i(TAG, key,"返回实时气压数据：", 0, 1);
			 Log.i(key,"返回气压数据:"+ Arrays.toString(data));
			 
			 byte [] at = {data[4],data[5],data[6],data[7]}; 
			 byte [] al = {data[8],data[9],data[10],data[11]};
			 float atmospheric = Util.bytesToInt2(at, 0)/1000f/100f;
			 float altitude = (Util.bytesToInt2(al, 0)-500)/100f;
			 float ambientTemperature = (data[12]&0xFF)-40f;
			 
			 float atf =  (float)(Math.round(atmospheric*100))/100;
			 float alf =  (float)(Math.round(altitude*100))/100;
			 String qy = "返回实时气压 ："+atf+"Kpa, 海拔："+alf+"m, 温度："+ambientTemperature+"°";
			 LogUpdate.i(TAG, key,qy, 0, 1);
			 mPeripheral.sendPA(key,atf,alf,ambientTemperature);
			break;

		}
	}
	@Override
	public void contentBytes(int state, byte[] result) {
		result[1] = (byte) (state | (TYPE << 4));
		switch (state) {
		case STATE_PHONE_RUN_DATE:
//			Log.i(TAG, "请求运动数据");
			LogUpdate.i(TAG, key,"请求运动数据", 0, 1);
			result[0] = getDataHeader(0);
			result[4] = 0x01;// 0x00 关闭数据实时同步，0x01 打开数据实时同步。
//			mPeripheral.sendString(key,"请求运动数据");
			break;

		case STATE_PHONE_SYNC:
//			Log.i(TAG, "请求历史运动数据");
			LogUpdate.i(TAG, key,"请求历史运动数据", 0, 1);
//			mPeripheral.sendString(key,"请求运动数据");
			result[0] = getDataHeader(0);
			/**
			 * 手机通过这个发送命令到手环， 请求历史运动数据。 Value 的长度为 1byte。 
			 * 0x00 是默认的请求方式，每请求一次，设备返回一次，并且设备端删除若干历史数据，适合单 手机连接设备；
			 * 0x01 是可选的请求方式，每请求一次，设备返回一次，不删除任何历史数据，断开这次连接后，历史数据将从设备中最早的地方开始重新传，适合多个设备都
			 * 需要查看历史数据。手环在收到这个命令后，每次发送最多四条历史数据。
			 */
			result[4] = 0x01;
			break;
			
		case REQUEST_PRESSURE:
			LogUpdate.i(TAG, key,"请求实时气压数据： 0x01", 0, 1);
			result[0] = getDataHeader(0);
			result[4] = 0x01;
			break;

		}
	}

}
