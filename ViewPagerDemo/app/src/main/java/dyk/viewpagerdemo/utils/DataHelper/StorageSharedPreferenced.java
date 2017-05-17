package dyk.viewpagerdemo.utils.DataHelper;

import android.app.Activity;
import android.content.SharedPreferences;

import dyk.viewpagerdemo.utils.ToastUtil;

import static android.content.Context.MODE_PRIVATE;
import static android.content.Context.MODE_WORLD_READABLE;

/**
 * Created by dengyangkang on 2017/5/17.
 * 使用SharedPreferences存储数据
 * 保存简单数据类  :运动目标(步数)
 */

public class StorageSharedPreferenced {
    private static Activity activity;
    private static SharedPreferences.Editor editor;
    private static SharedPreferences read ;
    private final String FILENAME="doubishan";
    public StorageSharedPreferenced (Activity mActivity){
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
        ToastUtil.Short(activity, "存入值为: "+value);
    }
    public static void putDataint(String key,int value){
        //步骤2-1：创建一个SharedPreferences.Editor接口对象，lock表示要写入的XML文件名，MODE_WORLD_WRITEABLE写操作
        //步骤2-2：将值放入文件
        editor.putInt(key,value);
        //步骤3：提交
        editor.commit();
        ToastUtil.Short(activity, "存入值为: "+value);
    }
    public static String getDataString(String key){
        //步骤1：创建一个SharedPreferences接口对象
        //步骤2：获取文件中的值
        String TempValue =read.getString(key,"");
        ToastUtil.Short(activity, "获取值为: "+TempValue);
        return TempValue;
    }
    public static int getDataint(String key){
        //步骤1：创建一个SharedPreferences接口对象
        //步骤2：获取文件中的值
        int TempValue =read.getInt(key,0);
        ToastUtil.Short(activity, "获取值为: "+TempValue);
        return TempValue;
    }

}
