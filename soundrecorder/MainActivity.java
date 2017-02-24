package com.example.virtualcall;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Color;
import android.media.MediaRecorder;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.os.PowerManager;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.widget.Button;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Timer;
import java.util.TimerTask;

public class MainActivity extends Activity implements OnClickListener {
  public  String TAG="SoundRecorderActivity";
	private Button btnStop;
	PowerManager pm;
	boolean isScreenOn ;
	private MediaRecorder mMediaRecorder;
	private File recAudioFile;
  Intent intent;
	BroadcastReceiver mReceiverDestroyl;
	public Timer timer = new Timer();
	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		this.requestWindowFeature(Window.FEATURE_NO_TITLE);
		setContentView(R.layout.soundrecoder);
		setupViews();
		test();

		TimerTask task = new TimerTask(){
			@Override
			public void run() {

				String sdCard = Environment.getExternalStorageDirectory().getPath();
				String dirFilePath = sdCard + File.separator + "ustone" + File.separator;
				SimpleDateFormat formatter = new SimpleDateFormat ("yyyy年MM月dd日  HH时mm分 ss秒");
				Date curDate = new Date(System.currentTimeMillis());//获取当前时间
				String str = formatter.format(curDate);
				System.out.println(str);
				File dirFile = new File( dirFilePath );
		    	  if( !dirFile.exists() ){
		    	  dirFile.mkdir();
		    	  Log.v("ustone", "创建文件完成" );
		    	  }else{
		    	  Log.v("ustone", "文件存在，无需创建" );
		    	  }
				recAudioFile = new File(dirFilePath, str+".amr");
        sendBroadcast(new Intent(Intent.ACTION_MEDIA_SCANNER_SCAN_FILE, Uri.parse("file://" + dirFilePath+recAudioFile)));
				startRecorder();
			}

		};
			timer.schedule(task, 700);

	}


	private void test() {
		 mReceiverDestroyl=new BroadcastReceiver(){
			    public void onReceive(Context context, Intent intent) {
			    	System.out.println("接收到finish消息了吗？   SoundRecorderActivity");
			    	MainActivity.this.finish();
			    }
			};
			IntentFilter intentFilter = new IntentFilter("android.intent.action.soundrecorder.SoundRecorderActivity");
			MainActivity.this.registerReceiver(mReceiverDestroyl, intentFilter);
	}


	private void setupViews() {
		btnStop = (Button) findViewById(R.id.stop);
		btnStop.setOnClickListener(this);
		btnStop.setBackgroundColor(Color.TRANSPARENT);
	}

	@Override
	public void onClick(View v) {
		switch (v.getId()) {
//		case R.id.start:
//			startRecorder();
//			SimpleDateFormat formatter = new SimpleDateFormat ("yyyyMMddHHmmss");
//			Date curDate = new Date(System.currentTimeMillis());//获取当前时间
//			String str = formatter.format(curDate);
//			System.out.println(str);
//			break;
		case R.id.stop:
			stopRecorder();

//		case R.id.play:
//			mPlayer = new MusicPlayer(SoundRecorderActivity.this);
//			mPlayer.playMicFile(recAudioFile);
			break;
		default:
			break;
		}
	}

	private void startRecorder() {
		mMediaRecorder = new MediaRecorder();
		mMediaRecorder.setAudioSource(MediaRecorder.AudioSource.MIC);
		mMediaRecorder.setOutputFormat(MediaRecorder.OutputFormat.DEFAULT);
		mMediaRecorder.setAudioEncoder(MediaRecorder.AudioEncoder.DEFAULT);
		mMediaRecorder.setOutputFile(recAudioFile.getAbsolutePath());
		try {
			mMediaRecorder.prepare();
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		mMediaRecorder.start();
	}
	private void stopRecorder(){
		if (mMediaRecorder!=null) {
			mMediaRecorder.setOnErrorListener(null);
			mMediaRecorder.setOnInfoListener(null);
			mMediaRecorder.setPreviewDisplay(null);
			mMediaRecorder.reset();
			mMediaRecorder.release();
			mMediaRecorder = null;
		}
		finish();
	}
	@Override
    protected void onPause() {
		System.out.println("onPause");
		finish();
    	super.onPause();
    }
	@Override
	protected void onDestroy() {
		if (mMediaRecorder!=null) {
			mMediaRecorder.setOnErrorListener(null);
			mMediaRecorder.setOnInfoListener(null);
			mMediaRecorder.setPreviewDisplay(null);
			mMediaRecorder.reset();
			mMediaRecorder.release();
			mMediaRecorder = null;
		}
		System.out.println("onDestroy");
		 unregisterReceiver(mReceiverDestroyl);
		super.onDestroy();
	}
	@Override
    public void onStop() {
		System.out.println("onStop");
		finish();
    	super.onStop();
    }
}
