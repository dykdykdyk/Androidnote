package com.example.virtualcall;

import java.io.IOException;


import android.app.Activity;
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
import android.telephony.TelephonyManager;
import android.util.Log;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.TextView;

public class MainActivity extends Activity implements OnClickListener{
	ImageView imgAccept,imgReject,imgcallfinish;
	TextView tvCallingCaller,tvCallingPhone,fen,miao;
	 MediaPlayer mMediaPlayer;
	 final static int tmp1 = 1;
	 private int timeUsedInsec;
	 private String timeUsed;
  Intent intent;
	 AudioManager	audioManager;
	 BroadcastReceiver mReceiverDestroyl;
	 boolean testplaying=false;
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		this.requestWindowFeature(Window.FEATURE_NO_TITLE);
		getWindow().addFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON);
		setContentView(R.layout.activity_calling);
		Bundle bundle=getIntent().getExtras();
//		String caller=bundle.getString("caller");
//		String phone=bundle.getString("phone");
    tvCallingCaller = (TextView)findViewById(R.id.tvCallingCaller);
		tvCallingPhone = (TextView)findViewById(R.id.tvCallingPhone);
		fen=(TextView)findViewById(R.id.fen);
		miao=(TextView)findViewById(R.id.miao);
		imgAccept=(ImageView)findViewById(R.id.imgAccept);
		imgReject=(ImageView)findViewById(R.id.imgReject);
		imgcallfinish=(ImageView)findViewById(R.id.imgcallfinish);
//		tvCallingCaller.setText(caller);
//		tvCallingPhone.setText(phone);
		tvCallingCaller.setText("Boss");
		tvCallingPhone.setText("15989483212");
		setMyRingtone(this);
		imgAccept.setOnClickListener(this);
		imgReject.setOnClickListener(this);
		imgcallfinish.setOnClickListener(this);
		test();

	}
	public void test(){
		mReceiverDestroyl=new BroadcastReceiver(){
		    public void onReceive(Context context, Intent intent) {
		    	if(mMediaPlayer !=null){
		    		mMediaPlayer.stop();
		    		mMediaPlayer.release();
		    		mMediaPlayer=null;
		    		}
		    	MainActivity.this.finish();
		    }
		};
		IntentFilter intentFilter = new IntentFilter("android.intent.action.Fakecall.getVirtualCallworks");
		MainActivity.this.registerReceiver(mReceiverDestroyl, intentFilter);

	}
	public void setMyRingtone(Context mContext)
	{
		  Uri alert = RingtoneManager.getDefaultUri(RingtoneManager.TYPE_RINGTONE);
	        mMediaPlayer = new MediaPlayer();

	        try {
	   mMediaPlayer.setDataSource(this, alert);  //�������try ��catch ���Զ���ӵ�
	  } catch (IllegalArgumentException e1) {
	   // TODO Auto-generated catch block
	   e1.printStackTrace();
	  } catch (SecurityException e1) {
	   // TODO Auto-generated catch block
	   e1.printStackTrace();
	  } catch (IllegalStateException e1) {
	   // TODO Auto-generated catch block
	   e1.printStackTrace();
	  } catch (IOException e1) {
	   // TODO Auto-generated catch block
	   e1.printStackTrace();
	  }
	         mMediaPlayer.setAudioStreamType(AudioManager.STREAM_RING);
	         mMediaPlayer.setLooping(true);    //ѭ�����ſ�
	         try {
	    mMediaPlayer.prepare();
	    mMediaPlayer.start();//��ʼ����//�������try ��catch ���Զ���ӵ�
	    testplaying=true;
	   } catch (IllegalStateException e) {
	    // TODO Auto-generated catch block
	    e.printStackTrace();
	   } catch (IOException e) {
	    // TODO Auto-generated catch block
	    e.printStackTrace();
	   }
	}
	@Override
	protected void onDestroy() {
		if(testplaying  && mMediaPlayer!=null){
		mMediaPlayer.stop();
		mMediaPlayer.release();
		mMediaPlayer=null;
		}
		 unregisterReceiver(mReceiverDestroyl);
		super.onDestroy();
	}
	@Override
	protected void onPause() {
		finish();
		super.onPause();
	}
	//����͹Ҷϵļ���
	@Override
	public void onClick(View v) {
		switch (v.getId()) {
		case R.id.imgAccept:
			mMediaPlayer.stop();
			mMediaPlayer.release();
			mMediaPlayer=null;
			testplaying=false;
			//img����
			imgAccept.setVisibility(View.INVISIBLE);
			imgReject.setVisibility(View.INVISIBLE);
			imgcallfinish.setVisibility(View.VISIBLE);
			fen.setVisibility(View.VISIBLE);
			miao.setVisibility(View.VISIBLE);
			timeUsedInsec=0;
			uiHandle.sendEmptyMessageDelayed(tmp1, 1000);
			break;
		case R.id.imgReject:
			mMediaPlayer.stop();
			mMediaPlayer.release();
			mMediaPlayer=null;
			testplaying=false;
			imgReject.setVisibility(View.INVISIBLE);
			imgReject.setVisibility(View.INVISIBLE);
			MainActivity.this.finish();
//      if(MainActivity.instance ==null){
//        intent=new Intent(MainActivity.this,MainActivity.class);
//        intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
//        startActivity(intent);
//      }
			break;
		case R.id.imgcallfinish:
			MainActivity.this.finish();
//      if(MainActivity.instance ==null){
//        intent=new Intent(MainActivity.this,MainActivity.class);
//        intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
//        startActivity(intent);
//      }
			break;
		default:
			break;
		}
	}
	//ͨ��ʱ����ʾ�Լ�����
	private Handler uiHandle = new Handler() {
		public void handleMessage(android.os.Message msg) {
			switch (msg.what) {
			case 1:

				addTimeUsed();
				updateClockUI();

				uiHandle.sendEmptyMessageDelayed(tmp1, 1000);
				break;
			default:
				break;
			}
		}
	};
	private void updateClockUI() {
		fen.setText(getMin() + ":");
		miao.setText(getSec());
	}

	public void addTimeUsed() {
		timeUsedInsec = timeUsedInsec + 1;
		timeUsed = this.getMin() + ":" + this.getSec();
	}

	public CharSequence getMin() {
		int min = timeUsedInsec / 60;
		return min < 10 ? "0" + min : String.valueOf(min);
	}

	public CharSequence getSec() {
		int sec = timeUsedInsec % 60;
		return sec < 10 ? "0" + sec : String.valueOf(sec);
	}


}
