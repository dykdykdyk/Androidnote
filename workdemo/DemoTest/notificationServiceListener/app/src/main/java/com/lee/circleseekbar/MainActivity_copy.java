package com.lee.circleseekbar;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;

public class MainActivity_copy extends Activity {
    private final boolean DEBUG = true;
    private final String TAG = "MainActivity";
    PhoneStateReceiver phoneStateReceiver;
    NotificationReceiver notificationReceiver;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        initNotification();
        toggleNotificationListenerService();
        intiReceiver();
    }
    public void intiReceiver(){
        phoneStateReceiver =new PhoneStateReceiver();
        notificationReceiver =new NotificationReceiver();
        IntentFilter phoneStateFilter = new IntentFilter();
        IntentFilter smsStateFilter = new IntentFilter();
        phoneStateFilter.addAction("android.intent.action.PHONE_STATE");
        smsStateFilter.addAction("android.provider.Telephony.SMS_RECEIVED");
        registerReceiver(phoneStateReceiver, phoneStateFilter);
        registerReceiver(notificationReceiver, smsStateFilter);
        phoneStateReceiver.getAllContacts(this);
        notificationReceiver.getAllContacts(this);
    }
    private void  initNotification(){
        if(!UtilTools.isEnabled(MainActivity_copy.this)){
            DialogUtils.build().showDialog("提示", "Uwrist需要通知栏权限,请务必开启.", 0, this, new DialogUtils.OnClickback() {
                @Override
                public void onOk() {
                    if (!UtilTools.isEnabled(MainActivity_copy.this)) { //打开通知栏权限设置
                        Intent intent = new Intent(
                                "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS");
                        startActivity(intent);
                    } else {
//   			Toast.makeText(this, "已开启通知栏监听权限", Toast.LENGTH_LONG).show();
                        System.out.println("已开启通知栏监听权限...");
                    }
                }
                @Override
                public void onCancel() {
                    super.onCancel();
                    Log.i(TAG, "未能开启通知栏权限,消息将无法推送到手环.");
                }
            });
        }
    }

    /**
     * 把应用的NotificationListenerService实现类disable再enable，即可触发系统rebind操作。
     * 当进程被干掉的时候会收不到信息，需要调用该方法重新注册服务
     */
    private void toggleNotificationListenerService() {
        PackageManager pm = getPackageManager();
        pm.setComponentEnabledSetting(new ComponentName(this, NotificationService.class),
                PackageManager.COMPONENT_ENABLED_STATE_DISABLED, PackageManager.DONT_KILL_APP);
        pm.setComponentEnabledSetting(new ComponentName(this, NotificationService.class),
                PackageManager.COMPONENT_ENABLED_STATE_ENABLED, PackageManager.DONT_KILL_APP);
    }
}