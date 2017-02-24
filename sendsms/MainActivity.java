package com.example.virtualcall;

import java.io.IOException;
import java.util.List;

import android.app.Activity;
import android.app.PendingIntent;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.telephony.PhoneStateListener;
import android.telephony.SmsManager;
import android.telephony.TelephonyManager;
import android.util.Log;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

public class MainActivity extends Activity {

	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
	
		test();

	}
	public void test(){
		String SENT_SMS_ACTION = "SENT_SMS_ACTION";
		Intent sentIntent = new Intent(SENT_SMS_ACTION);
		final PendingIntent sentPI = PendingIntent.getBroadcast(MainActivity.this, 0, sentIntent,
		0);
		MainActivity.this.registerReceiver(new BroadcastReceiver() {
		@Override
		public void onReceive(Context _context, Intent _intent) {
		switch (getResultCode()) {
				case Activity.RESULT_OK:
				Toast.makeText(MainActivity.this,
				"短信发送成功", Toast.LENGTH_SHORT)
				.show();
				break;
				case SmsManager.RESULT_ERROR_GENERIC_FAILURE:
					Toast.makeText(MainActivity.this,
							"短信发送成功", Toast.LENGTH_SHORT)
							.show();
				break;
				case SmsManager.RESULT_ERROR_RADIO_OFF:
					Toast.makeText(MainActivity.this,
							"短信发送成功", Toast.LENGTH_SHORT)
							.show();
				break;
				case SmsManager.RESULT_ERROR_NULL_PDU:
				break;
	     	}
		}
	        	}, new IntentFilter(SENT_SMS_ACTION));
		String DELIVERED_SMS_ACTION = "DELIVERED_SMS_ACTION";
		Intent deliverIntent = new Intent(DELIVERED_SMS_ACTION);
		final PendingIntent deliverPI = PendingIntent.getBroadcast(MainActivity.this, 0,
		deliverIntent, 0);
		MainActivity.this.registerReceiver(new BroadcastReceiver() {
		@Override
		public void onReceive(Context _context, Intent _intent) {
		}
		}, new IntentFilter(DELIVERED_SMS_ACTION));

		//发送短信的处理事件
		SmsManager smsManager = SmsManager.getDefault();
		List<String> divideContents = smsManager.divideMessage("南音，好久不见");
		for (String text : divideContents) {
		smsManager.sendTextMessage("15989483180", null, text, sentPI, deliverPI);
       }


	}
	
}
