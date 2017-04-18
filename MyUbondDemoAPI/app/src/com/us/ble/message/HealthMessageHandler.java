package com.us.ble.message;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import com.us.ble.central.BLEDevice;
import com.us.ble.central.L;

/**
 * 处理健康相关的信息
 * 
 * @author Administrator
 * 
 */
public class HealthMessageHandler extends MessageHandler {

	public HealthMessageHandler(BLEDevice peripheral) {
		super(peripheral);
		times = new ArrayList<>();
		hisStep = new ArrayList<>();
		hisTemp = new ArrayList<>();
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
	private ArrayList<Long> times;
	private ArrayList<Integer> hisStep;
	private ArrayList<Float> hisTemp;
	/** 实时体温数据返回(*) */
	public static final byte STATE_DEVICE_NOW_TEMPERATURE = 0x08;
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");

	// TODO 数据要封装并传输
	@Override
	public void handleMessage(byte[] data) {
		int state = data[1] & FITER_TO_STATE;
		switch (state) {
		case STATE_DEVICE_NOW_HEART:

			int heart = data[4];
			mBLEDevice.sendHeart(heart);
			L.i(TAG, "实时心率数据返回(*)" + heart);
			break;
		case STATE_DEVICE_NOW_TEMPERATURE:
			// Log.i(TAG, "实时体温数据返回*");
			// 当请求实时体温数据开启以后，设备每得到一个新数据，就返回给手机。Value
			// 的长度为2个字节整数，返回0~4095，代表0到409.5度，比原始数据放大了10倍
			float bb = (data[5] & 0b11111111) << 8 | data[4] & 0b11111111;
			float a = bb / 10;
			mBLEDevice.sendTemp(a);
			break;
		case STATE_PHONE_SYNC:
			boolean isSends = false;
			int[] st = new int[4];
			long[] y = new long[4];
			for (int i = 0; i < 4; i++) {
				int year = ((data[4 + i * 4] & 0b11111111) >> 4 & 0x0F) + 2016;
				int month = (data[4 + i * 4] & 0b00001111) & 0x0F;
				int day = (data[5 + i * 4] & 0b11111000) >> 3 & 0x1F;
				int hour = ((data[5 + i * 4] & 0b00000111) << 2)
						| (((data[6 + i * 4] & 0b11000000) >> 6) & 0x03);
				int quarter = ((data[6 + i * 4] & 0b00110000) >> 4) & 0x03;
				int keartrate = (data[7 + i * 4] & 0xff)
						| (((int) (data[6 + i * 4] & 0xff) & 0b00001111) << 8);

				L.i(TAG, year + "年  " + month + " 月 " + day + " 日 " + hour
						+ " 时  " + quarter + " 刻  " + keartrate + " 心率 ");
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
					st[i] = keartrate;
					y[i] = dd.getTime();
					isSends = true;
				}
			}
			addData(isSends, y, st);
			break;
		case STATE_DEVICE_TEMP_SYNC:
			boolean is_send = false;
			float[] temp = new float[4];
			long[] tempTime = new long[4];
			for (int i = 0; i < 4; i++) {

				int year = ((data[4 + i * 4] & 0b11111111) >> 4 & 0x0F) + 2016;
				int month = (data[4 + i * 4] & 0b00001111) & 0x0F;
				int day = (data[5 + i * 4] & 0b11111000) >> 3 & 0x1F;
				int hour = ((data[5 + i * 4] & 0b00000111) << 2)
						| (((data[6 + i * 4] & 0b11000000) >> 6) & 0x03);
				int quarter = ((data[6 + i * 4] & 0b00110000) >> 4) & 0x03;
				float temperature = ((data[7 + i * 4] & 0xff) | (((int) (data[6 + i * 4] & 0xff) & 0b00001111) << 8)) / 10f;

				L.i(TAG, year + "年  " + month + " 月 " + day + " 日 " + hour
						+ " 时  " + quarter + " 刻  " + temperature + " 体温 ");
				String times = year + "-" + month + "-" + day + " " + hour
						+ ":" + quarter * 15;
				Date dd = null;
				try {
					dd = sdf.parse(times);
				} catch (java.text.ParseException e) {
					e.printStackTrace();
				}
				if (month == 0) {
					is_send = false; // 传送结束
					temp[i] = 0;
					tempTime[i] = 0;
				} else if (month > 0 & month < 13) {
					temp[i] = temperature;
					tempTime[i] = dd.getTime();
					is_send = true;
				}
			}

			addTempData(is_send, tempTime, temp);
			break;
		case STATE_DEVICE_RATE:
			// Log.i(TAG, "历史心率数据返回 ");
			break;
		case STATE_DEVICE_TEMP_RESULT:
			// Log.i(TAG, "历史体温数据返回")
			break;
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
			mBLEDevice.sendHistory(0x42, times, hisStep);
			times.clear();
			hisStep.clear();
		}
	}

	private void addTempData(boolean end, long[] time, float[] step) {
		for (int i = 0; i < step.length; i++) {
			if (time[i] != 0) {
				times.add(time[i]);
				hisTemp.add(step[i]);
			}
		}
		if (!end) {
			mBLEDevice.sendTemperatureHistory(0x45, times, hisTemp);
			times.clear();
			hisStep.clear();
		}
	}
}
