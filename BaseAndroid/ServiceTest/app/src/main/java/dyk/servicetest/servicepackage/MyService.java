package dyk.servicetest.servicepackage;

import android.app.Notification;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.support.annotation.Nullable;
import android.util.Log;

import dyk.servicetest.R;
import dyk.servicetest.view.MainActivity;

/**
 * Created by Dengyangkang on 2017/4/16.
 */

public class MyService extends Service{
    private final String TAG="MyService";
    private DownloadBinder mBinder =new DownloadBinder();
    @Nullable
    @Override
    public IBinder onBind(Intent intent) {
//        return null;
        return mBinder;
    }
   public class DownloadBinder extends Binder {
       public void startDowvload(){
           Log.d(TAG,"startDowvload executed");
       }
       public void finishDowvload(){
           Log.d(TAG,"finishDowvload executed");
       }
   }

    @Override
    public void onCreate() {
        super.onCreate();
        Log.d(TAG,"onCreate executed");
        setForgroundService();

    }
    //设置前台服务
    private void setForgroundService(){



        Notification mBuilder =new Notification.Builder(this)
       .setContentTitle("This is ForgroundService")
                .setContentText("content~~")
                .setWhen(System.currentTimeMillis())
                .setSmallIcon(R.mipmap.ic_launcher)
                .build();
        Intent serviceIntent =new Intent(this,MainActivity.class);
        PendingIntent mPendingIntent = PendingIntent.getActivity(this,0,serviceIntent,0);
        startForeground(1,mBuilder);
    }
    @Override
    public int onStartCommand(Intent intent, int flags, int startId) {
        Log.d(TAG,"onStartCommand executed");
        new Thread(new Runnable() {
            @Override
            public void run() {
                //在这里面去处理耗时逻辑
            }
        }).start();
        return super.onStartCommand(intent, flags, startId);
    }

    @Override
    public void onDestroy() {
        Log.d(TAG,"onDestroy executed");
        super.onDestroy();
    }
}
