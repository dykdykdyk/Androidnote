package com.megster.cordova.ble.central;

import com.ionicframework.urfdemo.BLEInfoActivity;
public class LogUpdate{
	public static BLEInfoActivity infoActivity;
	public static final void i(final String tag, final String key ,final String content,final int value, final int type) {
		new Thread(){
            public void run(){
            	if(type == 1){
            		android.util.Log.i(tag, key+":"+content);
            	}
			   infoActivity.updateInfo(key,content,value,type);
            }
         }.start();
	
	}
}
