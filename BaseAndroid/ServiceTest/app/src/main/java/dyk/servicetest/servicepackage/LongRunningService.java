package dyk.servicetest.servicepackage;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.SystemClock;
import android.support.annotation.Nullable;
import android.util.Log;

import java.util.Date;

import dyk.servicetest.broadcastpackage.AlarmReceiver;

/**
 * Created by Dengyangkang on 2017/4/16.
 */

public class LongRunningService extends Service{
    private final String TAG="LongRunningService";
    @Nullable
    @Override
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override
    public int onStartCommand(Intent intent, int flags, int startId) {
          new Thread(new Runnable() {
              @Override
              public void run() {
                  Log.d(TAG,"executed at "+new Date().toString());
              }
          }).start();
        AlarmManager alarmManager =(AlarmManager)getSystemService(ALARM_SERVICE);
        int alarmtime=1*20*1000;//一分钟毫秒数
        long triggerAtTime = SystemClock.elapsedRealtime()+alarmtime;
        Intent i =new Intent(this,AlarmReceiver.class);
        PendingIntent pi =PendingIntent.getBroadcast(this,0,i,0);
        alarmManager.set(AlarmManager.ELAPSED_REALTIME_WAKEUP,triggerAtTime,pi);
        return super.onStartCommand(intent, flags, startId);
    }
}
