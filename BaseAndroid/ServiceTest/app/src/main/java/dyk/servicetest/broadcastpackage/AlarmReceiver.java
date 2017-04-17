package dyk.servicetest.broadcastpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

import dyk.servicetest.servicepackage.LongRunningService;

/**
 * Created by Dengyangkang on 2017/4/16.
 */

public class AlarmReceiver extends BroadcastReceiver{
    @Override
    public void onReceive(Context context, Intent intent) {
        intent =new Intent(context, LongRunningService.class);
        context.startService(intent);
    }
}
