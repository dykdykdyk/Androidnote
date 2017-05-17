package dyk.viewpagerdemo.ble.message;

import android.util.Log;

import org.json.JSONException;
import org.json.JSONObject;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import dyk.viewpagerdemo.ble.central.Peripheral;
import dyk.viewpagerdemo.utils.UtilTools;

/**
 * 处理健康相关的信息
 *
 * @author Administrator
 *
 */
public class HealthMessageHandler extends MessageHandler {

	public HealthMessageHandler(Peripheral peripheral) {
		super(peripheral);
	}

	public static final String TAG = HealthMessageHandler.class.getSimpleName();

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

	/** 请求挪动历史心率数据指针 */
	public static final byte STATE_DEVICE_HEART_RECORD = 0x09;

	/** 请求挪动历史体温数据指针 */
	public static final byte STATE_DEVICE_TEMP_RECORD = 0x0A;

  /** 请求挪动历史体温数据指针 */
  public static final byte STATE_ALL_HEALTH_DATA = 0x0B;

  /** 请求挪动历史体温数据指针 */
  public static final byte STATE_ALL_HEALTH_DATA_BACK = 0x0C;

	/***
	 * 判断历史数据是否全部已经发送 false 发送完毕
	 *
	 * */
	public boolean isSend = true;
	public boolean isSend2 = true;

	@Override
	public void contentBytes(int state, byte[] result) {
		result[1] = (byte) (state | (TYPE << 4));
		switch (state) {
		case STATE_PHONE_RATE:
//			Log.i(TAG, "请求实时心率数据 ");
//			result[0] = getDataHeader(0);
//			// 0x00 关闭数据实时同步，0x01 打开数据实时同步。
//			result[4] = 0x00;
			break;

		case STATE_PHONE_SYNC:
			Log.i(TAG, "请求历史心率数据");
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
			Log.i(TAG, "请求实时体温数据");
			result[0] = getDataHeader(0);
			result[4] = 0x01;
			break;
		case STATE_DEVICE_HEART_RECORD:
			Log.i(TAG, "请求挪动历史心率数据指针");
			result[0] = getDataHeader(3);
			byte[] record = UtilTools.record_date();
			System.arraycopy(record, 0, result, 4, record.length);
			break;
		case STATE_DEVICE_TEMP_RECORD:
			Log.i(TAG, "请求挪动历史体温数据指针");
			result[0] = getDataHeader(3);
			byte[] records = UtilTools.record_date();
			System.arraycopy(records, 0, result, 4, records.length);
			break;
		case STATE_DEVICE_TEMP_SYNC:
      Log.i(TAG, "请求历史温度数据");
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
      case  STATE_ALL_HEALTH_DATA:
        result[4]=0x00;
        result[0]= getDataHeader(0);
        Log.i(TAG, "请求健康所有数据");
        break;

		}
	}

	// TODO 数据要封装并传输 现在考虑JOSN包
	@Override
	public void handleMessage(byte[] data) {
		int state = data[1] & FITER_TO_STATE;
		switch (state) {
		case STATE_DEVICE_NOW_HEART:
			// Log.i(TAG, "实时心率数据返回(*)");
			// 当请求实时心率数据开启以后，设备每得到一个新数据，就返回给手机。Value
			// 的长度为 1byte。范围是 0～255。
			// int heart = data[4];
			heart = data[4]&0xff;
			if(heart>200){
				heart = 88;
			}
			Log.i(TAG, "实时心率: " + heart);
			setHeart(heart);
			mPeripheral.heartData(getHeartJOSNObject());
			break;
		case STATE_DEVICE_NOW_TEMPERATURE:
			// Log.i(TAG, "实时体温数据返回*");
			// 当请求实时体温数据开启以后，设备每得到一个新数据，就返回给手机。Value
			// 的长度为2个字节整数，返回0~4095，代表0到409.5度，比原始数据放大了10倍
			// float bb = (data[5] & 0b11111111) << 8 | data[4] & 0b11111111;
			// float a = bb / 10.0f;
			int xx = (data[5] & 0b11111111) << 8 | data[4] & 0b11111111;

			Log.i(TAG, "实时体温: " + xx/10);
			setTemperature(xx);
			mPeripheral.temperatureData(getTemperatureJOSNObject());
			break;
		case STATE_PHONE_SYNC:

			int[] st = new int[4];
			long[] y = new long[4];
			Log.i(TAG, "返回请求历史心率数据----->");
			for (int i = 0; i < 4; i++) {
				int year = ((data[4 + i * 4] & 0b11111111) >> 4 & 0x0F) + 2016;
				int month = (data[4 + i * 4] & 0b00001111) & 0x0F;
				int day = (data[5 + i * 4] & 0b11111000) >> 3 & 0x1F;
				int hour = ((data[5 + i * 4] & 0b00000111) << 2)
						| (((data[6 + i * 4] & 0b11000000) >> 6) & 0x03);
				int quarter = ((data[6 + i * 4] & 0b00110000) >> 4) & 0x03;
				int keartrate = (data[7 + i * 4] & 0xff)| (((int)( data[6 + i * 4] & 0xff)& 0b00001111) << 8);
				Log.i(TAG, "历史心率数据返回: " + year + "年   " + month + " 月 " + day
						+ " 日 " + hour + " 时 " + quarter + " 刻  " + keartrate
						+ " 心率 ");
				if(keartrate>200){
					keartrate = 88;
				}
				if (month == 0 ) {
					isSend = false; // 传送结束
					System.out.println("-----1历史心率----" + isSend);
				} else if(month>0 & month <13 ){
					String times = year + "-" + month + "-" + day + " " + hour
							+ ":" + quarter * 15;
					System.out.println("-----2历史心率----" + times);
					SimpleDateFormat sdf = new SimpleDateFormat(
							"yyyy-MM-dd HH:mm");
					Date dd = null;
					try {
						dd = sdf.parse(times);
					} catch (ParseException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}// 将String to Date类型
					long t3 = dd.getTime();
					st[i] = keartrate;
					y[i] = t3;
					isSend = true;
				}
			}
			mPeripheral.sen_heart(isSend);
			mPeripheral.heartEdData(st, y, isSend);
			// mPeripheral.heartEdData(st, y, isSend);
			break;
		//
		case STATE_DEVICE_TEMP_SYNC:

			// int d = data[4];
			int[] st2 = new int[4];
			long[] y2 = new long[4];
			int[] m2 = new int[4];
			int[] d2 = new int[4];
			int[] h2 = new int[4];
			int[] q2 = new int[4];
			Log.i(TAG, "返回请求历史温度数据----->");
			for (int i = 0; i < 4; i++) {
				int year = ((data[4 + i * 4] & 0b11111111) >> 4 & 0x0F) + 2016;
				int month = (data[4 + i * 4] & 0b00001111) & 0x0F;
				int day = (data[5 + i * 4] & 0b11111000) >> 3 & 0x1F;
				int hour = ((data[5 + i * 4] & 0b00000111) << 2)
						| (((data[6 + i * 4] & 0b11000000) >> 6) & 0x03);
				int quarter = ((data[6 + i * 4] & 0b00110000) >> 4) & 0x03;
				int temperature = (data[7 + i * 4] & 0xff)| (((int)( data[6 + i * 4] & 0xff)& 0b00001111) << 8);
				// float t = temperature / 10;
				Log.i(TAG, "历史体温数据返回: " + year + "年   " + month + " 月 " + day
						+ " 日 " + hour + " 时 " + quarter + " 刻  " + temperature
						+ " 体温 ---");
				String times = year + "-" + month + "-" + day + " " + hour
						+ ":" + quarter * 15;
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
				Date dd = null;
				try {
					dd = sdf.parse(times);
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}// 将String to Date类型
				long t3 = dd.getTime();
				if (month == 0 ) {
					isSend2 = false; // 传送结束
					System.out.println("-----1历史体温----" + isSend2);
				} else if(month>0 & month <13 ){
					System.out.println("-----2历史体温----" + isSend2);
					st2[i] = temperature;
					y2[i] = t3;
					isSend2 = true;
				}

			}
			mPeripheral.sen_temp(isSend2);
			mPeripheral.temperatureEdData(st2, y2, isSend2);
			break;
		case STATE_DEVICE_RATE: {
			Log.i(TAG, "历史心率数据返回 ");
		}
			break;
		case STATE_DEVICE_TEMP_RESULT: {
			Log.i(TAG, "历史体温数据返回");
			break;
		}
      case STATE_ALL_HEALTH_DATA_BACK :
        String health ="健康数据返回："+"心率:"+(data[4] & 0xFF)+",低血压: "+(data[5] & 0xFF)+
          ",高血压: "+(data[6] & 0xFF)+",血氧浓度:"+(data[7] & 0xFF)+
          ",呼吸频率:"+(data[8] & 0xFF);
        String press =(String.valueOf(data[5] & 0xFF))+"/"+(String.valueOf(data[6] & 0xFF));

        Log.i(TAG, health);
       mPeripheral.setdata((data[7] & 0xFF),(data[8] & 0xFF),press);
        break;
		}

	}

	/** 时间和历史体温数组 */
	// JSONArray timeTemperatureArray = new JSONArray();
	// JSONArray temperatureArray = new JSONArray();
	//
	// /**时间和历史心率数组*/
	// JSONArray timeKeartrateArray = new JSONArray();
	// JSONArray keartrateArray = new JSONArray();

	// 实时心率
	private int heart;
	// 实时体温
	private float tem;

	/** 当天运动数据 */
	public void setHeart(int heart) {
		this.heart = heart;
	}

	public void setTemperature(float temperature) {
		this.tem = temperature;
	}

	public JSONObject getHeartJOSNObject() {
		JSONObject jsonHeart = new JSONObject();
		try {
			jsonHeart.put("heart", heart);

		} catch (JSONException e) { // this shouldn't happen
			e.printStackTrace();
		}
		return jsonHeart;
	}

	public JSONObject getTemperatureJOSNObject() {
		JSONObject jsonTemperature = new JSONObject();
		try {
			jsonTemperature.put("temperature", tem);

		} catch (JSONException e) { // this shouldn't happen
			e.printStackTrace();
		}
		return jsonTemperature;
	}
	//
	// /**历史数据*/
	// public JSONObject getHealhtJSONObject() {
	// JSONObject json = new JSONObject();
	// try {
	// json.put("timeKeartrateArray", timeKeartrateArray);
	// json.put("keartrateArray", keartrateArray);
	// } catch (JSONException e) {
	// e.printStackTrace();
	// }
	// return json;
	// }
	// public JSONObject getTemperatureJSONObject() {
	// JSONObject json = new JSONObject();
	// try {
	// json.put("timeTemperatureArray", timeTemperatureArray);
	// json.put("temperatureArray", temperatureArray);
	// } catch (JSONException e) {
	// e.printStackTrace();
	// }
	// return json;
	// }

}
