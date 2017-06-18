package com.android5source.administrator.testdemo2;

import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;


/**数据帮助类
 * Created by dengyangkang on 2017/5/17.
 */

public class MyApplication extends Application{
    public static Context context;
    @Override
    public void onCreate() {
        super.onCreate();
        context=getApplicationContext();
        CrashHandler.getInstance().init(getApplicationContext());
    }
    public static Context getContext() {
                 return context;
    }
    /**
     * 把应用的NotificationListenerService实现类disable再enable，即可触发系统rebind操作。
     * 当进程被干掉的时候会收不到信息，需要调用该方法重新注册服务
     */


}
