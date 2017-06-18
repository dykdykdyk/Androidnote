package com.android5source.administrator.testdemo2;
import android.util.Log;

/**
 * Created by dengyangkang on 2017/5/10.
 * 日志工具类
 * 在软件上线后，让LEVEL 等于 NOTHING就要行了
 * 调试的时候 让LEVEL  =VERBOSE 就可以了
 */

public class LogUtil {
    public static final int VERBOSE =1;
    public static final int DEBUG =2;
    public static final int INFO =3;
    public static final int WARN =4;
    public static final int ERROR =5;
    public static final int NOTHING =6;
    public static final int LEVEL =VERBOSE;

    public static void v(String tag,String msg){
        if(LEVEL<=VERBOSE){
            Log.v(tag,msg);
        }
    }
    public static void d(String tag,String msg){
        if(LEVEL<=DEBUG){
            Log.d(tag,msg);
        }
    }
    public static void i(String tag,String msg){
        if(LEVEL<=INFO){
            Log.i(tag,msg);
        }
    }
    public static void w(String tag,String msg){
        if(LEVEL<=WARN){
            Log.w(tag,msg);
        }
    }
    public static void e(String tag,String msg){
        if(LEVEL<=ERROR){
            Log.e(tag,msg);
        }
    }


}
