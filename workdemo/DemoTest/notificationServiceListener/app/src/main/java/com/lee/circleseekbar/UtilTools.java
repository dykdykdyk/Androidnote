package com.lee.circleseekbar;

import android.app.Activity;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.provider.Settings;
import android.text.TextUtils;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

/**
 * Created by dengyangkang on 2017/5/15.
 * 工具类
 */

public class UtilTools {
    public static  String PERSONAL_GOALS ="Personal_Goals";
    public static  String DEVICE_ADDRESS ="Device_address";
    public static  String FIRST_SETTING ="First_setting";
    public static  String MAIN_FRAGMENT_STEP ="Main_Fragment_Step";//心率数据
    public static  String MAIN_FRAGMENT_SLEEP ="Main_Fragment_Sleep";//睡眠数据
    public static  String MAIN_FRAGMENT_HEART_RATE ="Main_Fragment_Heart_Rate";//心率数据
    public static  String MAIN_FRAGMENT_HEART_TEMPERATRUE ="Main_Fragment_Heart_Temperature";//体温数据
    public static  String OTHER_MAIN_FRAGMENT_ENVIRONMENT_TEMPERATRUE ="Other_Main_Fragment_Environment_Temperature";//环境数据
    public static  String OTHER_MAIN_FRAGMENT_ATMOSPHERIC_PRESSURE ="Other_Main_Fragment_Atmospheric_Pressure";//气压数据
    public static  String OTHER_MAIN_FRAGMENT_ALTITUDE ="Other_Main_Fragment_Altitude";//海拔数据
    public static  String OTHER_MAIN_FRAGMENT_BLOOD_PRESSURE ="Other_Main_Fragment_Blood_Pressure";//血压数据
    public static  String OTHER_MAIN_FRAGMENT_BLOOD_OXYGEN ="Other_Main_Fragment_Blood_Oxygen";//血氧数据
    public static  String OTHER_MAIN_FRAGMENT_BREATHING ="Other_Main_Fragment_Breathing";//呼吸数据
    public static  final String REMIND_CALL_SELECTSTATUS ="remind_call_selectstatus";//电话
    public static  final String REMIND_SMS_SELECTSTATUS ="remind_sms_selectstatus";//短信
    public static  final String REMIND_QQ_SELECTSTATUS ="remind_qq_selectstatus";//qq
    public static  final String REMIND_CHAT_SELECTSTATUS ="remind_chat_selectstatus";//微信
    public static  final String REMIND_LOST_SELECTSTATUS ="remind_lost_selectstatus";//防丢
    public static  final String REMIND_LONGSET_SELECTSTATUS ="remind_longset_selectstatus";//久坐提醒
    public static  final String REMIND_LONGSET_SELECTSTATUS_TIME ="remind_longset_selectstatus_time";//久坐提醒时长
    public static  final String REMIND_LONGSET_SELECTSTATUS_INTERVAL ="remind_longset_selectstatus_interval";//久坐提醒周期
    public static  final String REMIND_FALL_SELECTSTATUS ="remind_fall_selectstatus";//跌倒提醒周期
    public static final String FIRST_INSTALL ="1";
    public static final int REQUEST_ENABLE_BLUETOOTH = 1;
    private static final String ENABLED_NOTIFICATION_LISTENERS = "enabled_notification_listeners";
    public static  String DEVICEMANAGER_RAISE_BRIGHT_SCREEN ="devicemanager_raise_bright_screen";//抬手亮屏
    public static int sports = 0; // 计步目标；

    private static int user_year = 0;
    private static int user_sex = 0;
    private static int user_height = 0;
    private static int user_weight = 0;

    private static int set_year = 0;
    private static int set_month = 0;
    private static int set_hours = 0;
    private static int set_day = 0;
    private static int set_minute = 0;
    private static int set_second = 0;
    private static int set_time = 0;

    /**
     * 10转16进制
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

    //超级绑定数据super
    public static final int[] SUPERDATE = {0x01,0x23,0x45,0x67,0x89,0xAB,0xCD,0xEF,
            0xFE,0xDC,0xBA,0x98,0x76,0x54,0x32,0x10 };
    public static void setTime(int[] a){
        set_year = a[0];
        set_month = a[1];
        set_hours = a[3];
        set_day = a[2];
        set_minute = a[4];
        set_second = a[5];
        set_time = a[6];
    }
//	public static byte[] setTimeToBytes() {
//		byte[] result = new byte[4];
//
//		int year = set_year - 2016;
//		int month = set_month;
//		int day = set_day;
//		int hour = set_hours;
//		int minute = set_minute;
//		int second = set_second;
//		//year = 16; month = 5; day = 12; hour = 12; minute = 57; second = 32;
//		result[0] = (byte) ((year << 2) | (month >> 2 & 0b11));
//		result[1] = (byte) (((month & 0b0011) << 6) | (day << 1) | (hour >> 4 & 0b1));
//		result[2] = (byte) (((hour & 0b01111) << 4) | (minute >> 2 & 0b1111));
//		result[3] = (byte) (((minute & 0b000011) << 6) | second);
//		return result;
//	}
    /**时间转换*/
    public static byte[] nowTimeToBytes() {
        byte[] result = new byte[4];
        Calendar calendar = Calendar.getInstance();
        if(set_time ==1 ){
            int year = set_year - 2016;
            int month = set_month;
            int day = set_day;
            int hour = set_hours;
            int minute = set_minute;
            int second = set_second;
            result[0] = (byte) ((year << 2) | (month >> 2 & 0b11));
            result[1] = (byte) (((month & 0b0011) << 6) | (day << 1) | (hour >> 4 & 0b1));
            result[2] = (byte) (((hour & 0b01111) << 4) | (minute >> 2 & 0b1111));
            result[3] = (byte) (((minute & 0b000011) << 6) | second);
            System.out.println("settime 1------>");
            set_time =0;
        }else{
            int year = calendar.get(Calendar.YEAR) - 2016;
            int month = calendar.get(Calendar.MONTH) + 1;
            int day = calendar.get(Calendar.DAY_OF_MONTH);
            int hour = calendar.get(Calendar.HOUR_OF_DAY);
            int minute = calendar.get(Calendar.MINUTE);
            int second = calendar.get(Calendar.SECOND);
            //year = 16; month = 5; day = 12; hour = 12; minute = 57; second = 32;
            result[0] = (byte) ((year << 2) | (month >> 2 & 0b11));
            result[1] = (byte) (((month & 0b0011) << 6) | (day << 1) | (hour >> 4 & 0b1));
            result[2] = (byte) (((hour & 0b01111) << 4) | (minute >> 2 & 0b1111));
            result[3] = (byte) (((minute & 0b000011) << 6) | second);
            System.out.println("settime 2------>");
            set_time =0;
        }
        return result;
    }
    public static byte[] intToBytes(int value) {
        byte[] src = new byte[16];

        src[15] = (byte) ((value >> 120) & 0xFF);
        src[14] = (byte) ((value >> 112) & 0xFF);
        src[13] = (byte) ((value >> 104) & 0xFF);
        src[12] = (byte) ((value >> 96) & 0xFF);
        src[11] = (byte) ((value >> 88) & 0xFF);
        src[10] = (byte) ((value >> 80) & 0xFF);
        src[9] = (byte) ((value >> 72) & 0xFF);
        src[8] = (byte) ((value >> 64) & 0xFF);
        src[7] = (byte) ((value >> 56) & 0xFF);
        src[6] = (byte) ((value >> 48) & 0xFF);
        src[5] = (byte) ((value >> 40) & 0xFF);
        src[4] = (byte) ((value >> 32) & 0xFF);
        src[3] = (byte) ((value >> 24) & 0xFF);
        src[2] = (byte) ((value >> 16) & 0xFF);
        src[1] = (byte) ((value >> 8) & 0xFF);
        src[0] = (byte) (value & 0xFF);
        return src;
    }

    public static void users(int[] a){
        user_year = a[0];
        user_sex = a[2];
        user_height = a[3];
        user_weight = a[4];
    }
    /**用户信息设置转换*/
    public static byte[] userToByte(){

        Calendar calendar2 = Calendar.getInstance();
        int year = calendar2.get(Calendar.YEAR);
        int month = calendar2.get(Calendar.MONTH) + 1;
        int y = user_year;
//		int m = userData1[1];

        byte[] userByte = new byte[4];
        int age = year-y;

        int sex = user_sex;

        int height =user_height;
        int weight =user_weight;
        System.out.println("userData1------>" + age+","+sex+","+height +","+weight);
//		userData

//		int sex = userData.getSex();
//		int age = userData.getAge();
//		int height = (int) ((userData.getHeight())/0.5f);
//		int weight = (int)(userData.getWeight()/0.5f);

        userByte[0] = (byte)(sex <<7 | age);
        userByte[1] = (byte)(height>> 1);
        userByte[2] = (byte) ((height & 0b00000001 )|(weight>> 3));
        userByte[3] = (byte)((weight & 0b0000000111)<<5);
        return userByte;
    }

    //
    public void setSports(int sp){
        sports = sp ;
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
    /**
     * byte数组中取int数值，本方法适用于(低位在后，高位在前)的顺序。和intToBytes2（）配套使用
     */
    public static int bytesToInt2(byte[] src, int offset) {
        int value;
        value = (int) ( ((src[offset] & 0xFF)<<24)
                |((src[offset+1] & 0xFF)<<16)
                |((src[offset+2] & 0xFF)<<8)
                |(src[offset+3] & 0xFF));
        return value;
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
        value = (int) ((ary[offset]&0xFF)
                | ((ary[offset+1]<<8) & 0xFF00)
                | ((ary[offset+2]<<16)& 0xFF0000)
                | ((ary[offset+3]<<24) & 0xFF000000));
        return value;
    }
    public static int dykbytesToInt2(byte[] src, int offset) {
        int value;
        value = (int) (((src[offset] & 0xFF) <<8)
                | ((src[offset + 1] & 0xFF)));
        return value;
    }

    public int silentTimeId = 0;
    public static int silentYear1 =0;
    public static int silentMonth1 =0;
    public static int silentDay1 =0;
    public static int isAlarm1 =0 ;//关闭
    public static int isAlarm2 =0 ;//关闭
    public static int isAlarm3 =0 ;//关闭
    public static int silentHour1 = 0;
    public static int silentMinute1 = 0;
    public static int silentWeekDay1 = 0;

    public static int silentYear2 =0;
    public static int silentMonth2 =0;
    public static int silentDay2 =0;
    public static int silentHour2 = 0;
    public static int silentMinute2 = 0;
    public static int silentWeekDay2 = 0;

    public static int silentYear3 =0;
    public static int silentMonth3 =0;
    public static int silentDay3 =0;
    public static int silentHour3 = 0;
    public static int silentMinute3 = 0;
    public static int silentWeekDay3 = 0;
    public static int alarm_index1 = 0;
    public static int alarm_index2 = 0;
    public static int alarm_index3 = 0;
    public static int isAlarm = 0;
    /**请求记录进度数据 RECORD*/
    public static int year_record = 0;
    public static int month_record = 0;
    public static int day_record = 0;
    public static int hours_record = 0;
    public static int type_record = 0;
    public static void setRecordDate(int [] date){
        year_record = date[0];
        month_record = date[1];
        day_record = date[2];
        hours_record = date[3];
        type_record = date[4];
    }
    public static byte[] record_set_date(int year,int month,int day,int hours){
        byte [] by = new byte[4];
        System.out.println(year+"/"+month+"/"+day+"/"+hours);
        by[0] =   (byte) ((year<< 4) |month);
        by[1] =   (byte) ((day<< 3) | (hours >>2));
        by[2] =   (byte) ((hours & 0b00000011)<<6);
        by[3] = 0;
        return by;
    }
    public static byte[] record_date(){
        byte [] by = new byte[4];
        int year = year_record;
        int month = month_record;
        int day = day_record;
        int hours = hours_record;
        int type = type_record;
        System.out.println(year+"/"+month+"/"+day+"/"+hours+"/"+type);
        by[0] =   (byte) ((year<< 4) |month);
        by[1] =   (byte) ((day<< 3) | (hours >>2));
        by[2] =   (byte) ((hours & 0b00000011)<<6);
//		by[3] =   (byte) type;
        return by;
    }


    public static void alarm1(int y ,int m, int d, int h,int mi ,int w,int s,int i){
        silentYear1 = y;
        silentMonth1 = m;
        silentDay1 = d;
        silentHour1 =h;
        silentMinute1 = mi;
        silentWeekDay1 = w;
        isAlarm1 = s;
        alarm_index1 = i;
    }
    public static void alarm2(int y ,int m, int d, int h,int mi ,int w,int s,int i){
        silentYear2 = y;
        silentMonth2 = m;
        silentDay2 = d;
        silentHour2 =h;
        silentMinute2 = mi;
        silentWeekDay2 = w;
        isAlarm2 = s;
        alarm_index2 = i;
    }
    public static void alarm3(int y ,int m, int d, int h,int mi ,int w,int s,int i){
        silentYear3 = y;
        silentMonth3 = m;
        silentDay3 = d;
        silentHour3 =h;
        silentMinute3 = mi;
        silentWeekDay3 = w;
        isAlarm3 = s;
        alarm_index3 = i;
    }
    /***
     * 添加一个闹钟
     */
    public static byte[] alarmToBytes1(){
        int year = silentYear1 - 2016;
        int month = silentMonth1;
        int day = silentDay1;
        byte[] alarmByte = new byte[5];

        int hour = silentHour1;
        int min = silentMinute1;
        int alarmID = alarm_index1;
        int dayFlags = silentWeekDay1;
        int a = isAlarm1;

        System.out.println("1.设置的闹钟..."+year+"/"+month+"/"+day +" 时:"+hour + "分"+min+"  重复日：" +dayFlags +" ID："+ alarmID+"开关："+a);

        alarmByte[0] = (byte) ((year << 2) | (month >> 2 & 0b11));
        alarmByte[1] = (byte) (((month & 0b000011) << 6) | (day << 1) | (hour >> 4 & 0b1));
        alarmByte[2] = (byte) (((hour & 0b01111) << 4) | (min >> 2)) ;
        alarmByte[3] = (byte) ((min & 0b11) << 6 | (alarmID<<3));
        alarmByte[4] = (byte) ((dayFlags &0b01111111)|((a & 0b00000001)<<7)) ;
        return alarmByte;
    }

    /**
     *添加两个
     */
    public static byte[] alarmToBytes2(){
        int year = silentYear2 - 2016;
        int month = silentMonth2;
        int day = silentDay2;

        byte[] alarmByte = new byte[5];
        int hour = silentHour2;
        int min = silentMinute2;
        int alarmID = alarm_index2;
        int dayFlags = silentWeekDay2;
        int a = isAlarm2;
        System.out.println("2.设置的闹钟..."+year+"/"+month+"/"+day +" 时:"+hour + "分"+min+"  重复日：" +dayFlags +" ID："+ alarmID+"开关："+a);


        alarmByte[0] = (byte) ((year << 2) | (month >> 2 & 0b11));
        alarmByte[1] = (byte) (((month & 0b000011) << 6) | (day << 1) | (hour >> 4 & 0b1));
        alarmByte[2] = (byte) (((hour & 0b01111) << 4) | (min >> 2)) ;
        alarmByte[3] = (byte) ((min & 0b11) << 6 | (alarmID<<3));
        alarmByte[4] = (byte)  ((dayFlags &0b01111111)|((a & 0b00000001)<<7)) ;
        return alarmByte;
    }
    /**
     *添加三个
     */
    public static byte[] alarmToBytes3(){
        int year = silentYear3 - 2016;
        int month = silentMonth3;
        int day = silentDay3;

        byte[] alarmByte = new byte[5];
        int hour = silentHour3;
        int min = silentMinute3;
        int alarmID = alarm_index3;
        int dayFlags = silentWeekDay3;
        int a = isAlarm3;
        System.out.println("3.设置的闹钟..."+year+"/"+month+"/"+day +" 时:"+hour + "分"+min+"  重复日：" +dayFlags +" ID："+ alarmID+" 开关："+a);

        alarmByte[0] = (byte) ((year << 2) | (month >> 2 & 0b11));
        alarmByte[1] = (byte) (((month & 0b000011) << 6) | (day << 1) | (hour >> 4 & 0b1));
        alarmByte[2] = (byte) (((hour & 0b01111) << 4) | (min >> 2)) ;
        alarmByte[3] = (byte) ((min & 0b11) << 6 | (alarmID<<3));
        alarmByte[4] = (byte)  ((dayFlags &0b01111111)|((a & 0b00000001)<<7)) ;
        return alarmByte;
    }
    /**字符串转换为byte数组*/
    public static byte[] strToByteArray(String str){

        byte[] byBuffer = new byte[16];
        byBuffer = str.getBytes();
        return byBuffer;

    }
    /**
     * 通知栏监听权限
     * @return
     */
    public static boolean isEnabled(Activity activity) {
        String pkgName =activity.getPackageName();
        final String flat = Settings.Secure.getString(activity.getContentResolver(),
                ENABLED_NOTIFICATION_LISTENERS);
        if (!TextUtils.isEmpty(flat)) {
            final String[] names = flat.split(":");
            for (int i = 0; i < names.length; i++) {
                final ComponentName cn = ComponentName
                        .unflattenFromString(names[i]);
                if (cn != null) {
                    if (TextUtils.equals(pkgName, cn.getPackageName())) {
                        return true;
                    }
                }
            }
        }
        return false;
    }
    /**
     * 判断蓝牙是否开启，否则开启蓝牙
     */
    public static boolean enableBlue(Activity mActivity) {
        BluetoothManager manager = (BluetoothManager)
                mActivity.getSystemService(Context.BLUETOOTH_SERVICE);
      BluetoothAdapter  bluetoothAdapter = manager.getAdapter();
        if (!bluetoothAdapter.isEnabled()) {
            Intent intent = new Intent(BluetoothAdapter.ACTION_REQUEST_ENABLE);
            mActivity.startActivityForResult(intent, REQUEST_ENABLE_BLUETOOTH);
        }
        return bluetoothAdapter.isEnabled();
    }


}
