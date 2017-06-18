package com.android5source.administrator.testdemo2;

import android.app.Activity;
import android.content.SharedPreferences;
import android.text.TextUtils;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;


import static android.content.Context.MODE_PRIVATE;
import static android.content.Context.MODE_WORLD_READABLE;

/**
 * Created by dengyangkang on 2017/5/17.
 * 使用SharedPreferences存储数据
 * 保存简单数据类  :运动目标(步数)
 */

public class StorageSharedPreferenced {
    private static String TAG ="StorageSharedPreferenced";
    private static Activity activity;
    private static SharedPreferences.Editor editor;
    private static SharedPreferences read ;
    private final String FILENAME="doubishan";
    public StorageSharedPreferenced(Activity mActivity){
        editor =mActivity.getSharedPreferences(FILENAME,MODE_PRIVATE).edit();
        read =mActivity.getSharedPreferences(FILENAME,MODE_WORLD_READABLE);
        activity =mActivity;
    }
    public static void putDataString(String key,String value){
        //步骤2-1：创建一个SharedPreferences.Editor接口对象，lock表示要写入的XML文件名，MODE_WORLD_WRITEABLE写操作
        //步骤2-2：将值放入文件
        editor.putString(key,value);
        //步骤3：提交
        editor.commit();
        LogUtil.i(TAG, "存入值为: "+value);
    }
    public static void putDataint(String key,int value){
        //步骤2-1：创建一个SharedPreferences.Editor接口对象，lock表示要写入的XML文件名，MODE_WORLD_WRITEABLE写操作
        //步骤2-2：将值放入文件
        editor.putInt(key,value);
        //步骤3：提交
        editor.commit();
        LogUtil.i(TAG, "存入值为: "+value);
    }
    public static String getDataString(String key){
        //步骤1：创建一个SharedPreferences接口对象
        //步骤2：获取文件中的值
        if (read.contains(key)) {
            String TempValue = read.getString(key, "");
            LogUtil.i(TAG,"获取值为: " + TempValue);
            return TempValue;
        }
        return "";
    }
    public static int getDataint(String key){
        //步骤1：创建一个SharedPreferences接口对象
        //步骤2：获取文件中的值
        if (read.contains(key)) {
            int TempValue =read.getInt(key,0);
            LogUtil.i(TAG, "获取值为: "+TempValue);
            return TempValue;
        }
        return -1;
    }
    public static void clearAllData(){
        editor.clear();
        editor.commit();
    }
    /**
     * 保存序列化对象到本地
     *
     * @param key
     * @param object
     */
    public static void saveSerializableObject(String key, Object object) throws IOException {
        //先将序列化结果写到byte缓存中，其实就分配一个内存空间
        ByteArrayOutputStream bos = new ByteArrayOutputStream();
        ObjectOutputStream os = new ObjectOutputStream(bos);
        os.writeObject(object);//将对象序列化写入byte缓存
        //将序列化的数据转为16进制保存
        String bytesToHexString = bytesToHexString(bos.toByteArray());
        //保存该16进制数组
        editor.putString(key, bytesToHexString);
        editor.commit();
    }
    /**
     * desc:将数组转为16进制
     *
     * @param bArray
     * @return
     */
    public static String bytesToHexString(byte[] bArray) {
        if (bArray == null) {
            return null;
        }
        if (bArray.length == 0) {
            return "";
        }
        StringBuffer sb = new StringBuffer(bArray.length);
        String sTemp;
        for (int i = 0; i < bArray.length; i++) {
            sTemp = Integer.toHexString(0xFF & bArray[i]);
            if (sTemp.length() < 2)
                sb.append(0);
            sb.append(sTemp.toUpperCase());
        }
        return sb.toString();
    }

    /**
     * 从本地反序列化获取对象
     *
     * @param key
     * @return
     */
    public static Object getSerializableObject(String key) throws IOException, ClassNotFoundException {
        if (read.contains(key)) {
            String string = read.getString(key, "");
            if (TextUtils.isEmpty(string)) {
                return null;
            } else {
                //将16进制的数据转为数组，准备反序列化
                byte[] stringToBytes = StringToBytes(string);
                ByteArrayInputStream bis = new ByteArrayInputStream(stringToBytes);
                ObjectInputStream is = new ObjectInputStream(bis);
                //返回反序列化得到的对象
                Object readObject = is.readObject();
                return readObject;
            }
        }
        return null;
    }
    /**
     * desc:将16进制的数据转为数组
     *
     * @param data
     * @return
     */
    public static byte[] StringToBytes(String data) {
        String hexString = data.toUpperCase().trim();
        if (hexString.length() % 2 != 0) {
            return null;
        }
        byte[] retData = new byte[hexString.length() / 2];
        for (int i = 0; i < hexString.length(); i++) {
            int int_ch;  // 两位16进制数转化后的10进制数
            char hex_char1 = hexString.charAt(i); //两位16进制数中的第一位(高位*16)
            int int_ch1;
            if (hex_char1 >= '0' && hex_char1 <= '9')
                int_ch1 = (hex_char1 - 48) * 16;   // 0 的Ascll - 48
            else if (hex_char1 >= 'A' && hex_char1 <= 'F')
                int_ch1 = (hex_char1 - 55) * 16; // A 的Ascll - 65
            else
                return null;
            i++;
            char hex_char2 = hexString.charAt(i); //两位16进制数中的第二位(低位)
            int int_ch2;
            if (hex_char2 >= '0' && hex_char2 <= '9')
                int_ch2 = (hex_char2 - 48); // 0 的Ascll - 48
            else if (hex_char2 >= 'A' && hex_char2 <= 'F')
                int_ch2 = hex_char2 - 55; // A 的Ascll - 65
            else
                return null;
            int_ch = int_ch1 + int_ch2;
            retData[i / 2] = (byte) int_ch;//将转化后的数放入Byte里
        }
        return retData;
    }
}
