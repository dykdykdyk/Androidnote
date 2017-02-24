package com.us.ble.message;


import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;

import com.us.Utils.Utils;
import com.us.ble.central.BLEDevice;
import com.us.ble.central.L;

import android.bluetooth.BluetoothAdapter;

public class CheersMessageHandler extends MessageHandler{

	public CheersMessageHandler(BLEDevice peripheral) {
		super(peripheral);
		times = new ArrayList<>();
		hisStep = new ArrayList<>();
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
	
	/** 请求药品剂量数据/历史药品剂量数据返回*/
	public static final byte STATE_DEVICE_TOURNIQUET = 0x09;

	/** 类别 */
	public static final byte TYPE = 0x05;
	private boolean isSends ;
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
	private ArrayList<Long> times;
	private ArrayList<Integer []> hisStep;
	long[] sleepTime = new long[4];
	@Override
	public void handleMessage(byte[] data) {
		int state = data[1] & FITER_TO_STATE;
		switch (state) {
		case STATE_DEVICE_ACTUAL_WATER_TEMPERATURE:
			float heart = data[4];
			heart=heart/2;
			break;
		case STATE_DEVICE_ACTUAL_WATER_VOLUME:
			float a = data[4];
			break;
		case STATE_DEVICE_HISTORY_WATER_TEMPERATURE:
			for(int i = 0; i<4;i++){
				int year = ((data[4+i*4] & 0b11111111) >> 4 & 0x0F) + 2016;
				int month = (data[4+i*4] & 0b00001111) & 0x0F ;
				int day = (data[5+i*4] & 0b11111000)>>3 & 0x1F;
				int hour = ((data[5+i*4] & 0b00000111) << 2) | (((data[6+i*4] & 0b11000000) >>6) & 0x03);
				int m = (data[6 + i * 4] & 0xff ) & 0b00111111;
				int s = data[7 + i * 4] & 0xff;
			}
			break;
		case STATE_DEVICE_HISTORY_WATER_VOLUME:
			for(int i = 0; i<4;i++){
				int year = ((data[4+i*4] & 0b11111111) >> 4 & 0x0F) + 2016;
				int month = (data[4+i*4] & 0b00001111) & 0x0F ;
				int day = (data[5+i*4] & 0b11111000)>>3 & 0x1F;
				int hour = ((data[5+i*4] & 0b00000111) << 2) | (((data[6+i*4] & 0b11000000) >>6) & 0x03);
				int m = (data[6 + i * 4] & 0xff ) & 0b00111111;
				int s = data[7 + i * 4] & 0xff;
				float t = s/2;
			}
			break;		
			
		case STATE_DEVICE_FRIENDLIST: 
			break;
			
		case STATE_DEVICE_TOURNIQUET:
			L.i(TAG, "历史药品剂量数据返回" + Arrays.toString(Utils.byteTo16String(data)));
			ArrayList<Integer[]> dosageData = new ArrayList<>();
			for(int i=0; i<3;i++){
				int year = ((data[4+i*5] & 0xff) >> 4 ) + 2016;
				int month = (data[4+i*5] & 0xff)  & 0b00001111 ;
				int day = (data[5+i*5] & 0xff)>>3;
				int hour = (((data[5+i*5] & 0xff)& 0b00000111) << 2) | ((data[6+i*5] & 0xff) >>6);
				int minute = (data[6 + i * 5] & 0xff ) & 0b00111111;
				int uinit = (data[7+i*5] & 0xff)>>7;
				int dosage = (data[7+i*5] & 0xff) & 0b01111111 ;
			    int type = data[8+i*5] & 0xff;
			    int actual_dosage = (uinit + 1)*250*dosage;
			    
//			    if(uinit ==0){
//			    	dosage = dosage*250;
//			    }else if(uinit ==1){
//			    	dosage = (dosage - 128)*500;
//			    }
			    
				L.i(TAG, year + "年  " + month + " 月 " + day + " 日 " + hour
						+ " 时  " + minute + " 分， " + uinit + " 规格 ，"+dosage+" 剂量, " + type+" 类型,"+actual_dosage+" 实际剂量");
				String times = year + "-" + month + "-" + day + " " + hour
						+ ":" + minute;
				Date dd = null;
				try {
					dd = sdf.parse(times);
				} catch (java.text.ParseException e) {
					e.printStackTrace();
				}
				if (month == 0 & day ==0 & hour==0 & minute==0 & uinit ==0 & dosage == 0 & type==0 ) {
					isSends = false; // 传送结束
					sleepTime[i] = 0;
				} else {
					sleepTime[i] = dd.getTime();
					isSends = true;
				}
				Integer[] x = new Integer[4];
				x[0] = uinit; 
				x[1] = dosage; 
				x[2] = type; 
				x[3] = actual_dosage;
				dosageData.add(x);
			}
			addData(isSends,sleepTime,dosageData);
			break;
		}

	}
	private void addData(boolean end, long[] time, ArrayList<Integer []> uinitData) {
		for (int i = 0; i < time.length; i++) {
			if (time[i] != 0) {
				times.add(time[i]);
				hisStep.add(uinitData.get(i));
			}
		}
		if (!end) {
			mBLEDevice.sendTourniquetHistory(0x59, times, hisStep);
			times.clear();
			hisStep.clear();
		}
	}
}
