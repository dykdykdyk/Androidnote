package com.example.virtualcall;

import java.util.Timer;
import java.util.TimerTask;


import android.app.Activity;
import android.app.admin.DevicePolicyManager;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.PowerManager;
import android.view.Menu;

public class MainActivity extends Activity {
	PowerManager pm;
    boolean isScreenOn;
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		pm = (PowerManager) MainActivity.this.getSystemService(Context.POWER_SERVICE);
		isScreenOn = pm.isScreenOn();//如果为true，则表示屏幕“亮”了，否则屏幕“暗”了。
		if(isScreenOn){
			Intent	intent=new Intent(MainActivity.this,LockScreenActivity.class);
			MainActivity.this.startActivity(intent);
		}else {
			 //获取电源管理器对象
	        PowerManager pm2=(PowerManager) MainActivity.this.getSystemService(Context.POWER_SERVICE);
	        //获取PowerManager.WakeLock对象,后面的参数|表示同时传入两个值,最后的是LogCat里用的Tag
	        PowerManager.WakeLock wl = pm.newWakeLock(PowerManager.ACQUIRE_CAUSES_WAKEUP | PowerManager.SCREEN_DIM_WAKE_LOCK,"bright");
	        //点亮屏幕
	        wl.acquire();
	        //释放
	        wl.release();
			System.out.println("....");
		}
	}

	    
}
