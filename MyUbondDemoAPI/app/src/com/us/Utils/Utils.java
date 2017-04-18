package com.us.Utils;

import com.us.ble.central.L;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

public class Utils {
	
	/** 
	 * 字符串转换unicode 
	 */  
	public static String string2Unicode(String string) {  
	   
	    StringBuffer unicode = new StringBuffer();  
	   
	    for (int i = 0; i < string.length(); i++) {  
	   
	        // 取出每一个字符  
	        char c = string.charAt(i);  
	        
//	        int a = Integer.parseInt(Integer.toHexString(c));
	        
	        // 转换为unicode  
	        unicode.append("\\u" + Integer.toHexString(c));  
	    }  
	   
	    return unicode.toString();  
	}  
	
	/**
	 * 小端序转大端序
	 * @param a
	 * @return
	 */
	public static int lowToInt(int a) {
	    return (((a & 0xFF) << 24) | (((a >>8) & 0xFF) << 16) | (((a >> 16) & 0xFF) << 8) | ((a >> 24) & 0xFF));
	}
	 /**
	  * int [] 转 byte[];
	  * @param data
	  * @return
	  */
	 public static byte[] intArraysTobyteArrays(int [] data){
		 byte [] b = new byte[data.length];
		 for(int i=0;i<data.length;i++ ){
			 b[i] = (byte)(data[i] & 0xff);
		 }
		 return b;
	 }
	/**
	 * 转换为16进制String数组
	 * 
	 * @param data
	 * @return
	 */
	public static String[] byteTo16String(byte[] data) {
		List<String> list = new ArrayList<String>();
		for (byte b : data) {
			int xx = b & 0xff;
			if (xx >= 0 & xx < 10) {
				list.add(("0x0" + Integer.toHexString(xx)));
			} else {
				list.add(("0x" + Integer.toHexString(xx)));
			}
		}
		String[] st = new String[list.size()];
		for (int i = 0; i < list.size(); i++) {
			st[i] = list.get(i);
		}
		return st;
	}

	/**
	 * byte数组中取int数值，本方法适用于(低位在后，高位在前)的顺序。和intToBytes2（）配套使用
	 */
	public static int bytesToInt2(byte[] src, int offset) {
		int value;
		value = (int) (((src[offset] & 0xFF) << 24)
				| ((src[offset + 1] & 0xFF) << 16)
				| ((src[offset + 2] & 0xFF) << 8) | (src[offset + 3] & 0xFF));
		return value;
	}
	public static byte[] record_date(int year,int month,int day,int hours){
		byte [] by = new byte[4];
		System.out.println(year+"/"+month+"/"+day+"/"+hours);
		by[0] =   (byte) ((year<< 4) |month);
		by[1] =   (byte) ((day<< 3) | (hours >>2));
		by[2] =   (byte) ((hours & 0b00000011)<<6);
		by[3] = 0;
		return by;
	}
	/**
	 * byte数组中取int数值，本方法适用于(低位在前，高位在后)的顺序。
	 * 
	 * @param ary
	 *            byte数组
	 * @param offset
	 *            从数组的第offset位开始
	 * @return int数值
	 */
	public static int bytesToInt(byte[] ary, int offset) {
		int value;
		value = (int) ((ary[offset] & 0xFF) | ((ary[offset + 1] << 8) & 0xFF00)
				| ((ary[offset + 2] << 16) & 0xFF0000) | ((ary[offset + 3] << 24) & 0xFF000000));
		return value;
	}

	/**
	 *  添加一个闹钟
	 * @param year
	 * @param month
	 * @param day
	 * @param hour
	 * @param min
	 * @param alarmID
	 * @param dayFlags
	 * @param isOpen
	 * @return
	 */
	public static byte[] alarmToBytes(int year,int month,int day,int hour,int min,int alarmID,int dayFlags,int isOpen) {
		int y = year - 2016;
		byte[] alarmByte = new byte[5];

//		System.out.println("设置的闹钟..." + year + "/" + month + "/" + day
//				+ " 时:" + hour + "分" + min + "  重复日：" + dayFlags + " ID："
//				+ alarmID + "开关：" + isOpen);

		alarmByte[0] = (byte) ((y << 2) | (month >> 2 & 0b11));
		alarmByte[1] = (byte) (((month & 0b000011) << 6) | (day << 1) | (hour >> 4 & 0b1));
		alarmByte[2] = (byte) (((hour & 0b01111) << 4) | (min >> 2));
		alarmByte[3] = (byte) ((min & 0b11) << 6 | (alarmID << 3));
		alarmByte[4] = (byte) ((dayFlags & 0b01111111) | ((isOpen & 0b00000001) << 7));
		return alarmByte;
	}

	/**
	 * 添加两个
	 */
	public static byte[] alarmToBytes2() {
		int year = 2016 - 2016;
		int month = 11;
		int day = 29;

		byte[] alarmByte = new byte[5];
		int hour = 17;
		int min = 47;
		int alarmID = 2;
		int dayFlags = 127;
		int a = 1;
		System.out.println("2.设置的闹钟..." + year + "/" + month + "/" + day
				+ " 时:" + hour + "分" + min + "  重复日：" + dayFlags + " ID："
				+ alarmID + "开关：" + a);

		alarmByte[0] = (byte) ((year << 2) | (month >> 2 & 0b11));
		alarmByte[1] = (byte) (((month & 0b000011) << 6) | (day << 1) | (hour >> 4 & 0b1));
		alarmByte[2] = (byte) (((hour & 0b01111) << 4) | (min >> 2));
		alarmByte[3] = (byte) ((min & 0b11) << 6 | (alarmID << 3));
		alarmByte[4] = (byte) ((dayFlags & 0b01111111) | ((a & 0b00000001) << 7));
		return alarmByte;
	}

	/**
	 * 添加三个
	 */
	public static byte[] alarmToBytes3() {
		int year = 2016 - 2016;
		int month = 11;
		int day = 29;

		byte[] alarmByte = new byte[5];
		int hour = 17;
		int min = 39;
		int alarmID = 3;
		int dayFlags = 127;
		int a = 1;
		L.i("3.设置的闹钟..." + year + "/" + month + "/" + day
				+ " 时:" + hour + "分" + min + "  重复日：" + dayFlags + " ID："
				+ alarmID + " 开关：" + a);

		alarmByte[0] = (byte) ((year << 2) | (month >> 2 & 0b11));
		alarmByte[1] = (byte) (((month & 0b000011) << 6) | (day << 1) | (hour >> 4 & 0b1));
		alarmByte[2] = (byte) (((hour & 0b01111) << 4) | (min >> 2));
		alarmByte[3] = (byte) ((min & 0b11) << 6 | (alarmID << 3));
		alarmByte[4] = (byte) ((dayFlags & 0b01111111) | ((a & 0b00000001) << 7));
		return alarmByte;
	}

	/** 字符串转换为byte数组 */
	public static byte[] strToByteArray(String str) {
		byte[] byBuffer = new byte[16];
		byBuffer = str.getBytes();
		return byBuffer;

	}

	/** 用户信息设置转换 */
	public static byte[] userToByte(int sex,int age,int height,int weight) {
		byte[] userByte = new byte[4];
		
	        userByte[0] = (byte)(sex <<7 | age);
		userByte[1] = (byte)(height>> 1);
		userByte[2] = (byte) ((height & 0b00000001 )|(weight>> 3));
		userByte[3] = (byte)((weight & 0b0000000111)<<5);
		return userByte;
	}
	/**longSit 久坐提醒
	 * isOpen 开关； 1开 ，0关
	 * time：久坐时间
	 * interval ： 间隔，再次提醒时间
	 * */
	public static byte[] longSitByte(int isOpen,int time, int interval){
		
		byte lgSitByte[] = new byte[4];
		lgSitByte[0] = (byte) ((isOpen <<7) | (time &0xff));
		lgSitByte[1] = (byte) (interval<<3);
		lgSitByte[2] = 0;
		lgSitByte[3] = 0;
		
		return lgSitByte;
		
	}
	public static final int[] SUPERDATE = { 0x01, 0x23, 0x45, 0x67, 0x89, 0xAB,
			0xCD, 0xEF, 0xFE, 0xDC, 0xBA, 0x98, 0x76, 0x54, 0x32, 0x10 };

	/** 时间转换 */
	public static byte[] nowTimeToBytes() {
		byte[] result = new byte[4];
		Calendar calendar = Calendar.getInstance();
		int year = calendar.get(Calendar.YEAR) - 2016;
		int month = calendar.get(Calendar.MONTH) + 1;
		int day = calendar.get(Calendar.DAY_OF_MONTH);
		int hour = calendar.get(Calendar.HOUR_OF_DAY);
//		int hour = 22;
		
		int minute = calendar.get(Calendar.MINUTE);
		int second = calendar.get(Calendar.SECOND);
		result[0] = (byte) ((year << 2) | (month >> 2 & 0b11));
		result[1] = (byte) (((month & 0b0011) << 6) | (day << 1) | (hour >> 4 & 0b1));
		result[2] = (byte) (((hour & 0b01111) << 4) | (minute >> 2 & 0b1111));
		result[3] = (byte) (((minute & 0b000011) << 6) | second);
		return result;
	}
	public static byte[] intToByteArray(int i) {   
        byte[] result = new byte[4];   
        //由高位到低位
        result[0] = (byte)((i >> 24) & 0xFF);
        result[1] = (byte)((i >> 16) & 0xFF);
        result[2] = (byte)((i >> 8) & 0xFF); 
        result[3] = (byte)(i & 0xFF);
        return result;
      }
	public static byte[] longTimeToByteArray(int i) {   
        byte[] result = new byte[2];   
        //由高位到低位
        result[0] = (byte)((i >> 8) & 0xFF);
        result[1] = (byte)((i >> 0) & 0xFF);
       
        return result;
      }
    /* 
     * 将时间戳转换为时间
     */
    public static String stampToDate(Long s){
        String res;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm");
        long lt = s;
        Date date = new Date(lt);
        res = simpleDateFormat.format(date);
        return res;
    }
}
