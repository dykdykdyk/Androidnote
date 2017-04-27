package com.ble.message;

import android.util.Log;

import com.megster.cordova.ble.central.Peripheral;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

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

	/** 请求挪动历史运动数据指针 */
	public static final byte STATE_DEVICE_RUN_RECORD = 0x02;

	/** 请求最近睡眠的总时间/返回最近睡眠的总时间 */
	public static final byte STATE_DEVICE_SLEEP_DATA = 0x03;

	/** 请求历史睡眠数据/历史睡眠数据返回    */
	public static final byte STATE_DEVICE_SLEEP_SETTING = 0x04;

	/** 请求历史运动数据/历史运动数据返回 */
	public static final byte STATE_PHONE_SYNC = 0x05;

	/** 返回当天运动数据 */
	public static final byte STATE_SPORTS_BACK = 0x06;

	/**返回实时气压海拔环境温度 Barometric altitude*/
	public static final byte STATE_BAROMETRIC_ALTITUDE = 0x08;

	/** 请求挪动历史睡眠数据指针 */
	public static final byte STATE_DEVICE_SLEEP_RECORD = 0x09;
	// 历史步数
	// 历史步数时间
	private JSONArray timeArray;
	private JSONArray stepArray;

	/***
	 * 判断历史数据是否全部已经发送 false 发送完毕
	 *
	 * */
	public boolean isSend = true;
    public int getCount = 0;
	public SportsMessageHandler(Peripheral peripheral) {
		super(peripheral);
	}

	// TODO 数据要封装并传输 现在考虑JOSN包
	public void handleMessage(byte[] data) {
		timeArray = new JSONArray();
		stepArray = new JSONArray();
		int state = data[1] & FITER_TO_STATE;
		switch (state) {
		case STATE_DEVICE_RUN_RECORD:
//			Log.i(TAG, "设备运动记录请求进度返回"+Arrays.toString(data));
			break;
		case STATE_DEVICE_SLEEP_SETTING:
			int[] sleep_status = new int[4];
			long[] sleep_time = new long[4];
			for (int i = 0; i < 4; i++) {
				int year = ((data[4 + i * 4] & 0b11111111) >> 4 & 0x0F) + 2016;
				int month = (data[4 + i * 4] & 0b00001111) & 0x0F;
				int day = (data[5 + i * 4] & 0b11111000) >> 3 & 0x1F;
				int hour = ((data[5 + i * 4] & 0b00000111) << 2)
						| (((data[6 + i * 4] & 0b11000000) >> 6) & 0x03);
				int minute = data[6 + i * 4] & 0b00111111;
				int sleepStatus = data[7 + i * 4] & 0xff;
				Log.i(TAG, year + "年  " + month + " 月 " + day + " 日 " + hour
						+ " 时  " + minute + " 分  " + sleepStatus + " 睡眠状态 ");
				String times = year + "-" + month + "-" + day + " " + hour
						+ ":" + minute;
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
				Date dd = null;
				try {
					dd = sdf.parse(times);
				} catch (java.text.ParseException e) {
					e.printStackTrace();
				}
				 if (month > 0 & month < 13) {
					isSend = true;
					sleep_time[i] = dd.getTime();
					sleep_status[i] = sleepStatus;
				}else{
					isSend = false; // 传送结束
					sleep_status[i] = 0;
					sleep_time[i] = 0;
				}
			}
			mPeripheral.sleepEdData(sleep_status,sleep_time, isSend);
			mPeripheral.sen_sleep(isSend);
			break;
		case STATE_DEVICE_SLEEP_DATA:
			int[] startTime = new int[5]; // 开始时间
			int[] stopTime = new int[5]; // 结束时间
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

			int hours = data[10] & 0xff;
			int min = data[11] & 0xff;
			String  ss = "最近的一天睡眠情况：\n " +
					"开始睡眠时间："+startTime[0]+"-"+startTime[1]+"-"+startTime[2]+" "+startTime[3]+":"+startTime[4]+
					"\n 结束睡眠时间："+stopTime[0]+"-"+stopTime[1]+"-"+stopTime[2]+" "+stopTime[3]+":"+stopTime[4]+
					"\n 睡眠时间："+ hours+":"+min;
			Log.i(TAG, ss);
			mPeripheral.sleepData(getSleepJOSNObject(startTime,stopTime,hours,min));
			break;
		case STATE_SPORTS_BACK:
			Log.i(TAG, "返回当天运动数据,设备每隔几秒定时返回总步数，总里程，总卡路里");
			byte[] a = new byte[5];
			byte[] b = new byte[5];
			byte[] c = new byte[5];
			for (int i = 0; i < 4; i++) {
				a[i] = data[i + 4];
				b[i] = data[i + 8];
				c[i] = data[i + 12];
//				System.out.println(a[i] + "--->" + b[i] + "--->" + c[i]);
			}
			int steps = Util.bytesToInt2(a, 0);
			int distance = Util.bytesToInt2(b, 0);
			int calory = Util.bytesToInt2(c, 0);
			Log.i(TAG, "steps = " + steps + ", distance = " + distance
					+ ", calory = " + calory);
			setStep(steps, distance, calory);
			mPeripheral.sportData(getStepJOSNObject());
			break;
		case STATE_PHONE_RUN_DATE:
			int aa = data[4];
//			Log.i(TAG, "返回请求运动数据-----" + aa);

			break;
		case STATE_PHONE_SYNC:
			getCount =mPeripheral.getCount();
			mPeripheral.set_dis(getCount);
			int[] st = new int[4];
			long[] y = new long[4];
//			Log.i(TAG, "返回历史运动数据次数--->" +  getCount);
			for (int i = 0; i < 4; i++) {
				int year = ((data[4 + i * 4] & 0b11111111) >> 4 & 0x0F) + 2016;
				int month = (data[4 + i * 4] & 0b00001111) & 0x0F;
				int day = (data[5 + i * 4] & 0b11111000) >> 3 & 0x1F;
				int hour = ((data[5 + i * 4] & 0b00000111) << 2)
						| (((data[6 + i * 4] & 0b11000000) >> 6) & 0x03);
				int quarter = ((data[6 + i * 4] & 0b00110000) >> 4) & 0x03;
				int stepCounter = (data[7 + i * 4] & 0xff)
						| (((int) (data[6 + i * 4] & 0xff) & 0b00001111) << 8);
				Log.i(TAG, year + "年  " + month + " 月 " + day + " 日 " + hour
						+ " 时  " + quarter + " 刻  " + stepCounter + " 步数 ");
				String times = year + "-" + month + "-" + day + " " + hour
						+ ":" + quarter * 15;
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
				Date dd = null;
				try {
					dd = sdf.parse(times);
				} catch (ParseException e) {
					e.printStackTrace();
				}// 将String to Date类型
				long t3 = dd.getTime();
				if (month == 0) {
					isSend = false; // 传送结束
//					System.out.println(getCount+"-----sports----" + isSend);
					getCount = 0;
					st[i] = stepCounter;
					y[i] = t3;
				} else if (month > 0 & month < 13) {
					st[i] = stepCounter;
					y[i] = t3;
					isSend = true;
				}
			}

			mPeripheral.stepEdData(st, y, isSend);
			mPeripheral.sen_step(isSend);
			break;
		case STATE_BAROMETRIC_ALTITUDE:
			byte[] at = { data[4], data[5], data[6], data[7] };
			byte[] al = { data[8], data[9], data[10], data[11] };
      byte [] alTemperature = {data[12],data[13]};
			float atmospheric = Util.bytesToInt2(at, 0) / 1000f / 100f;
			float altitude = (Util.bytesToInt2(al, 0)) / 100f;
      float ambient = (Util.dykbytesToInt2(alTemperature, 0))/10f;
      float ambientTemperature = ambient;
			float atf = (float) (Math.round(atmospheric * 100)) / 100;
			float alf = (float) (Math.round(altitude * 100)) / 100;
			Log.i(TAG, "返回实时气压海拔环境温度 --->" +atf+" , " + alf+" , "+ ambientTemperature);

			mPeripheral.aTData(getTemperatureJOSNObject(atf,ambientTemperature,alf));

			break;
		}
	}

	// 返回当天运动数据
	public int totalSteps;
	public int totalDistance;
	public int totalCalory;

	/** 当天运动数据 */
	public void setStep(int step, int distance, int calory) {
		this.totalSteps = step;
		this.totalDistance = distance;
		this.totalCalory = calory;
	}
	public JSONObject getSleepJOSNObject(int[] startTime,int[] stopTime,int hour,int min ) {
		JSONObject jsonStep = new JSONObject();
		try {
			jsonStep.put("startTime", startTime);
			jsonStep.put("stopTime", stopTime);
			jsonStep.put("hour", hour);
			jsonStep.put("min", min);

		} catch (JSONException e) { // this shouldn't happen
			e.printStackTrace();
		}
		return jsonStep;
	}
	public JSONObject getStepJOSNObject() {
		JSONObject jsonStep = new JSONObject();
		try {
			jsonStep.put("totalSteps", totalSteps);
			jsonStep.put("totalDistance", totalDistance);
			jsonStep.put("totalCalory", totalCalory);

		} catch (JSONException e) { // this shouldn't happen
			e.printStackTrace();
		}
		return jsonStep;
	}
	@Override
	public void contentBytes(int state, byte[] result) {
		result[1] = (byte) (state | (TYPE << 4));
		switch (state) {
		case STATE_PHONE_RUN_DATE:
			Log.i(TAG, "请求运动数据");
			result[0] = getDataHeader(0);
			result[4] = 0x01;// 0x00 关闭数据实时同步，0x01 打开数据实时同步。
			break;

		case STATE_PHONE_SYNC:
			Log.i(TAG, "请求历史运动数据");
			result[0] = getDataHeader(0);
			/**
			 * 手机通过这个发送命令到手环， 请求历史运动数据。 Value 的长度为 1byte。 0x00
			 * 是默认的请求方式，每请求一次，设备返回一次，并且设备端删除若干历史数据，适合单 手机连接设备； 0x01
			 * 是可选的请求方式，每请求一次
			 * ，设备返回一次，不删除任何历史数据，断开这次连接后，历史数据将从设备中最早的地方开始重新传，适合多个设备都
			 * 需要查看历史数据。手环在收到这个命令后，每次发送最多四条历史数据。
			 */
			result[4] = 0x01;
			break;
		case STATE_DEVICE_RUN_RECORD:
			result[0] = getDataHeader(3);
			byte[] record = Util.record_date();
			System.arraycopy(record, 0, result, 4, record.length);
			break;
		case STATE_DEVICE_SLEEP_DATA:
			result[0] = getDataHeader(0);
			result[4] = 0x01;

			break;
		case STATE_DEVICE_SLEEP_SETTING:
			result[0] = getDataHeader(0);
			result[4] = 0x01;

			break;
		case STATE_DEVICE_SLEEP_RECORD:
			result[0] = getDataHeader(3);
			byte[] records = Util.record_date();
			System.arraycopy(records, 0, result, 4, records.length);
			break;
		}


	}
	public JSONObject getTemperatureJOSNObject(float at, float tem, float al) {
		JSONObject jsonTemperature = new JSONObject();
		try {
			jsonTemperature.put("atmospheric", at);
			jsonTemperature.put("ambientTemp", tem);
			jsonTemperature.put("altitude", al);

		} catch (JSONException e) { // this shouldn't happen
			e.printStackTrace();
		}
		return jsonTemperature;
	}
}
