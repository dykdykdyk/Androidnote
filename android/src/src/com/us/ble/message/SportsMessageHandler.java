package com.us.ble.message;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;

import com.us.Utils.Utils;
import com.us.ble.central.BLEDevice;
import com.us.ble.central.L;

/**
 * 处理与运动相关的信息
 * 
 * @author Administrator
 * 
 */
public class SportsMessageHandler extends MessageHandler {
	private String tag = "SportsMessageHandler";
	/** 类别 */
	public static final byte TYPE = 0x03;

	/** 请求实时运动数据 */
	public static final byte STATE_PHONE_RUN_DATE = 0x01;

	/** 设备运动数据返回 无效了 */
	public static final byte STATE_DEVICE_RUN_DATA = 0x02;

	/** 请求最近睡眠的总时间/返回最近睡眠的总时间 */
	public static final byte STATE_DEVICE_SLEEP_DATA = 0x03;

	/** 请求历史睡眠数据/历史睡眠数据返回 */
	public static final byte STATE_DEVICE_SLEEP_SETTING = 0x04;

	/** 请求历史运动数据/历史运动数据返回 */
	public static final byte STATE_PHONE_SYNC = 0x05;

	/** 请求实时气压数据 */
	public static final byte REQUEST_PRESSURE = 0x07;
	/** 返回实时气压数据 */
	public static final byte RETURN_PRESSURE = 0x08;

	/** 返回当天运动数据 */
	public static final byte STATE_SPORTS_BACK = 0x06;
	
	/**请求当前位置动作数据/返回当前位置动作数据  Location Action*/
	private static final byte STATE_DEVICE_NOW_LOCATION_ACTION = 0x0A;
	
	/**请求历史位置动作数据 /返回历史位置动作数据 */
	
	private static final byte STATE_DEVICE_HISTORY_LOCATION_ACTION = 0x0B;
	
	/**请求挪动历史位置动作数据pointer*/
	
	private static final byte STATE_DEVICE_POINTER_HISTORY_LOCATION_ACTION = 0x0C;
	
	/***
	 * 判断历史数据是否全部已经发送 true 发送完毕
	 * 
	 * */
	// public boolean isSend = false;
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
	private ArrayList<Long> times;
	private ArrayList<Integer> hisStep;

	private ArrayList<Long> sleepTimes;
	private ArrayList<Integer> sleepStatus;
	private ArrayList<Integer[]> location;

	public SportsMessageHandler(BLEDevice device) {
		super(device);
		times = new ArrayList<>();
		hisStep = new ArrayList<>();

		sleepTimes = new ArrayList<>();
		sleepStatus = new ArrayList<>();
		location = new ArrayList<>();

		sleepStatus.ensureCapacity(600);
		sleepTimes.ensureCapacity(600);
		hisStep.ensureCapacity(600);
	}

	// TODO 数据要封装并传输
	public void handleMessage(byte[] data) {
		int state = data[1] & FITER_TO_STATE;
		boolean isSends = false;
		switch (state) {
		case STATE_DEVICE_SLEEP_DATA:
			L.i(tag, "返回最近睡眠的总时间: " +Arrays.toString(Utils.byteTo16String(data) ));
			int[] startTime = new int[5]; // 开始时间
			int[] stopTime = new int[5]; // 结束时间
			int[] span = new int[2];
			startTime[0] = ((data[4] & 0xff) >> 4) + 2016; // year
			startTime[1] = ((data[4] & 0xff) & 0b00001111)+1; // month+1
			startTime[2] = ((data[5] & 0xff) >> 3)+1; // day
			startTime[3] = (((data[5]  & 0xff)& 0b00000111) << 2)
					| ((data[6] & 0xff) >> 6); // hour
			startTime[4] = (data[6]& 0xff) & 0x00111111; // minute

			stopTime[0] = ((data[7] & 0xff) >> 4) + 2016; // year
			stopTime[1] = ((data[7]& 0xff) & 0b00001111)+1; // month
			stopTime[2] = ((data[8] & 0xff) >> 3)+1; // day
			stopTime[3] = ((data[8] & 0b00000111) << 2)
					| ((data[9] & 0xff) >> 6); // hour
			stopTime[4] = (data[9] & 0xff) & 0x00111111; // minute

			span[0] = data[10] & 0xff;
			span[1] = data[11] & 0xff;
			String  ss = "最近的一天睡眠情况：\n " +
					"开始睡眠时间："+startTime[0]+"-"+startTime[1]+"-"+startTime[2]+" "+startTime[3]+":"+startTime[4]+
					"\n 结束睡眠时间："+stopTime[0]+"-"+stopTime[1]+"-"+stopTime[2]+" "+stopTime[3]+":"+stopTime[4]+
					"\n 睡眠时间："+ span[0]+":"+span[1];
            L.i(tag, ss);
			mBLEDevice.sendSleep(startTime, stopTime, span);

			break;
		case STATE_DEVICE_SLEEP_SETTING:
			L.i(tag, "返回历史睡眠时间");
			boolean isSend = false;
			int[] status = new int[4];
			long[] sleepTime = new long[4];
			for (int i = 0; i < 4; i++) {
				int year = ((data[4 + i * 4] & 0b11111111) >> 4 & 0x0F) + 2016;
				int month = (data[4 + i * 4] & 0b00001111) & 0x0F;
				int day = (data[5 + i * 4] & 0b11111000) >> 3 & 0x1F;
				int hour = ((data[5 + i * 4] & 0b00000111) << 2)
						| (((data[6 + i * 4] & 0b11000000) >> 6) & 0x03);
				int minute = data[6 + i * 4] & 0b00111111;
				int sleepStatus = data[7 + i * 4] & 0xff;
				L.i(tag, year + "年  " + month + " 月 " + day + " 日 " + hour
						+ " 时  " + minute + " 分  " + sleepStatus + " 睡眠状态 ");
				String times = year + "-" + month + "-" + day + " " + hour
						+ ":" + minute;
				Date dd = null;
				try {
					dd = sdf.parse(times);
				} catch (java.text.ParseException e) {
					e.printStackTrace();
				}
				if (month == 0) {
					isSend = false; // 传送结束
					status[i] = 0;
					sleepTime[i] = 0;
				} else if (month > 0 & month < 13) {
					status[i] = sleepStatus;
					sleepTime[i] = dd.getTime();
					isSend = true;
				}
			}
			addSleepStatus(isSend, sleepTime, status);

			break;
		case STATE_SPORTS_BACK:
//			L.i(tag, "返回当天运动数据,设备每隔几秒定时返回总步数，总里程，总卡路里");
			byte[] a = new byte[5];
			byte[] b = new byte[5];
			byte[] c = new byte[5];
			for (int i = 0; i < 4; i++) {
				a[i] = data[i + 4];
				b[i] = data[i + 8];
				c[i] = data[i + 12];
//				System.out.println(a[i] + "--->" + b[i] + "--->" + c[i]);
			}
			int steps = Utils.bytesToInt2(a, 0);
			int distance = Utils.bytesToInt2(b, 0);
			int calory = Utils.bytesToInt2(c, 0);
			mBLEDevice.sendSports(steps, distance, calory);
			break;
		case STATE_PHONE_RUN_DATE:
//			int aa = data[4];
//			L.i(tag, "返回请求运动数据-----" + aa);
			break;
		case STATE_PHONE_SYNC:
			int[] st = new int[4];
			long[] y = new long[4];
			for (int i = 0; i < 4; i++) {
				int year = ((data[4 + i * 4] & 0b11111111) >> 4 & 0x0F) + 2016;
				int month = (data[4 + i * 4] & 0b00001111) & 0x0F;
				int day = (data[5 + i * 4] & 0b11111000) >> 3 & 0x1F;
				int hour = ((data[5 + i * 4] & 0b00000111) << 2)
						| (((data[6 + i * 4] & 0b11000000) >> 6) & 0x03);
				int quarter = ((data[6 + i * 4] & 0b00110000) >> 4) & 0x03;
				int stepCounter = (data[7 + i * 4] & 0xff)
						| (((int) (data[6 + i * 4] & 0xff) & 0b00001111) << 8);
				L.i(tag, year + "年  " + month + " 月 " + day + " 日 " + hour
						+ " 时  " + quarter + " 刻  " + stepCounter + " 步数 ");
				String times = year + "-" + month + "-" + day + " " + hour
						+ ":" + quarter * 15;
				Date dd = null;
				try {
					dd = sdf.parse(times);
				} catch (java.text.ParseException e) {
					e.printStackTrace();
				}
				if (month == 0) {
					isSends = false; // 传送结束
					st[i] = 0;
					y[i] = 0;
				} else if (month > 0 & month < 13) {
					st[i] = stepCounter;
					y[i] = dd.getTime();
					isSends = true;
				}
			}
			L.i(tag, "isSends: " + isSends);
			addData(isSends, y, st);
			break;

		case RETURN_PRESSURE:
			byte[] at = { data[4], data[5], data[6], data[7] };
			byte[] al = { data[8], data[9], data[10], data[11] };
			float atmospheric = Utils.bytesToInt2(at, 0) / 1000f / 100f;
			float altitude = (Utils.bytesToInt2(al, 0) - 500) / 100f;
			float ambientTemperature = (data[12] & 0xFF) - 40f;
			float atf = (float) (Math.round(atmospheric * 100)) / 100;
			float alf = (float) (Math.round(altitude * 100)) / 100;
			mBLEDevice.sendPa(atf, alf, ambientTemperature);
			break;
		case STATE_DEVICE_NOW_LOCATION_ACTION :
			L.i(tag, "返回当前位置动作数据 " + Arrays.toString(Utils.byteTo16String(data)));
			int number = ((data[4] & 0xff) & 0b01111111)>>3;
			int action = (data[4] & 0xff) & 0b00000111;
			mBLEDevice.sendLocationAction(number,action);
			break;
		case STATE_DEVICE_HISTORY_LOCATION_ACTION :
			L.i(tag, "返回历史位置动作数据  " + Arrays.toString(Utils.byteTo16String(data)));
			ArrayList<Integer[]> beaconData = new ArrayList<>();
			long[] ti = new long[4];
			for (int i = 0; i < 4; i++) {
				int year = ((data[4 + i * 4] & 0b11111111) >> 4 & 0x0F) + 2016;
				int month = (data[4 + i * 4] & 0b00001111) & 0x0F;
				int day = (data[5 + i * 4] & 0b11111000) >> 3 & 0x1F;
				int hour = ((data[5 + i * 4] & 0b00000111) << 2)
						| (((data[6 + i * 4] & 0b11000000) >> 6) & 0x03);
				int minute = data[6 + i * 4] & 0b00111111;
				int flag  = (data[7 + i * 4] & 0xff)>>7;
				int beacon  = ((data[7 + i * 4] & 0xff) & 0b01111111)>>3 ;
				int his_action  = (data[7 + i * 4] & 0xff)& 0b00000111;
				L.i(tag, year + "年  " + month + " 月 " + day + " 日 " + hour
						+ " 时  " + minute + " 分  " + flag + " 计时," +beacon+" 基站编号,"+ his_action+" 动作编号");
				String times = year + "-" + month + "-" + day + " " + hour
						+ ":" + minute;
				Integer[] x = new Integer[3];
				Date dd = null;
				try {
					dd = sdf.parse(times);
				} catch (java.text.ParseException e) {
					e.printStackTrace();
				}
				if (month == 0) {
					isSends = false; // 传送结束
					ti[i]  = 0;
				} else if (month > 0 & month < 13) {
					x[0] = flag;
					x[1] = beacon;
					x[2] = his_action;
					ti[i] = dd.getTime();
					isSends = true;
				}
				beaconData.add(x);
			}
			addLoactionAction(isSends,ti,beaconData);
			break;
		case STATE_DEVICE_POINTER_HISTORY_LOCATION_ACTION :
			L.i(tag, "返回挪动历史位置动作数据 " + Arrays.toString(Utils.byteTo16String(data)));
			break;
			
		}
	}
    private void addLoactionAction(boolean end, long[] time, ArrayList<Integer[]> beaconData ){
    	for (int i = 0; i < time.length; i++) {
			if (time[i] != 0) {
				sleepTimes.add(time[i]);
				location.add(beaconData.get(i));
			}
		}
		if (!end) {
			mBLEDevice.sendTourniquetHistory(0x3B, sleepTimes, location);
			sleepTimes.clear();
			location.clear();
		}
    }
	
	private void addSleepStatus(boolean end, long[] sleeptime, int[] status) {
		for (int i = 0; i < status.length; i++) {
			if (sleeptime[i] != 0) {
				sleepTimes.add(sleeptime[i]);
				sleepStatus.add(status[i]);
			}
		}
		if (!end) {
			mBLEDevice.sendHistory(0x34, sleepTimes, sleepStatus);
			sleepTimes.clear();
			sleepStatus.clear();
		}
	}

	private void addData(boolean end, long[] time, int[] step) {
		for (int i = 0; i < step.length; i++) {
			if (time[i] != 0) {
				times.add(time[i]);
				hisStep.add(step[i]);
			}
		}
		if (!end) {
			mBLEDevice.sendHistory(0x35, times, hisStep);
			times.clear();
			hisStep.clear();
		}
	}
}
