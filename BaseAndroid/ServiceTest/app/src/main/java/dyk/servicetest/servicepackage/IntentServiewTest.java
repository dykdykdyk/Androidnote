package dyk.servicetest.servicepackage;

import android.app.IntentService;
import android.content.Intent;
import android.util.Log;

/**
 * Created by Dengyangkang on 2017/4/16.
 */

public class IntentServiewTest extends IntentService{
    private final  String TAG="IntentServiewTest";
    public IntentServiewTest() {
        super("name");
    }

    @Override
    protected void onHandleIntent(Intent intent) {
        //打印当前线程ID
        Log.d(TAG,"Thread id id "+Thread.currentThread().getId());
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        Log.d(TAG,"onDestroy executed");
    }
}
