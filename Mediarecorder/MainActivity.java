package com.example.virtualcall;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Color;
import android.hardware.Camera;
import android.hardware.Camera.CameraInfo;
import android.media.CamcorderProfile;
import android.media.MediaRecorder;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.os.PowerManager;
import android.util.Log;
import android.view.SurfaceView;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.ImageView;


import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Timer;
import java.util.TimerTask;

public class MainActivity extends Activity implements OnClickListener {
	 Button stop;
	 ImageView camera_change;
	 // 系统视频文件
	 MediaRecorder mRecorder;
	 // 显示视频的SurfaceView
	 SurfaceView sView;
	 // 记录是否正在进行录制
	 boolean isRecording = false;
	 boolean isFront = false;
	 String str;
	 int cameraPosition=0;
	 PowerManager pm;
	 boolean isScreenOn ;
	 Camera camera;
	 public Timer timer = new Timer();
	 private File viodFile;
  Intent intent;
	 int cameraCount = 0;
	 BroadcastReceiver ReceiverDestroyl;
		 @Override
		 protected void onCreate(Bundle savedInstanceState) {
		  super.onCreate(savedInstanceState);
		  requestWindowFeature(Window.FEATURE_NO_TITLE);
		  getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN, WindowManager.LayoutParams.FLAG_FULLSCREEN);
		  setContentView(R.layout.activity_main);
		  camera_change = (ImageView) findViewById(R.id.camera_change);
		  camera_change.setBackgroundColor(Color.TRANSPARENT);
		  stop=(Button)findViewById(R.id.stop);
		  stop.setBackgroundColor(Color.TRANSPARENT);
		  sView = (SurfaceView) findViewById(R.id.dView);
		  // 设置该组件不会让屏幕自动关闭
		  sView.getHolder().setKeepScreenOn(true);
		  stop.setOnClickListener(this);
		  camera_change.setOnClickListener(this);
		  pm = (PowerManager) MainActivity.this.getSystemService(Context.POWER_SERVICE);
	      isScreenOn = pm.isScreenOn();//
	     	if(!isScreenOn){
	     		 if (isRecording && mRecorder!=null) {
	     		    // 停止录制
	     		    mRecorder.setOnErrorListener(null);
	     		   mRecorder.setPreviewDisplay(null);
	     		    mRecorder.reset();
	     		    mRecorder.release();
	     		    mRecorder = null;
	     	    	if(camera !=null){
	     	    		camera.release();//释放资源
	     	            camera = null;//取消原来摄像头
	     	    	}
	     		// 释放资源
	     		    isRecording = false;
	     		  }
			finish();
	      	}
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
			    	  Log.v("ustone","创建文件完成");
			    	  }else{
			    	  Log.v("ustone","文件存在，无需创建");
			    	  }
			    	  viodFile = new File(dirFilePath, str+".mp4");
          sendBroadcast(new Intent(Intent.ACTION_MEDIA_SCANNER_SCAN_FILE, Uri.parse("file://" + dirFilePath+viodFile)));

					if(camera==null){
						  CameraInfo cameraInfo = new CameraInfo();
			              cameraCount = Camera.getNumberOfCameras();
						   camera = Camera.open(0);
						   }
						   camera.setDisplayOrientation(90);
						   camera.unlock();
						   mRecorder = new MediaRecorder();
						   mRecorder.setCamera(camera);
						   mRecorder.setPreviewDisplay(sView.getHolder().getSurface());
						   // 设置从麦克风采集声音
						   mRecorder.setAudioSource(MediaRecorder.AudioSource.MIC);
						   // 设置从摄像头采集图像
						   mRecorder.setVideoSource(MediaRecorder.VideoSource.CAMERA);

					//	   mRecorder.setAudioSource(MediaRecorder.AudioSource.DEFAULT);
						   mRecorder.setProfile(CamcorderProfile.get(CamcorderProfile.QUALITY_HIGH));
						   // 创建保存录制视频的视频文件

						   mRecorder.setOutputFile(viodFile.getAbsolutePath());
						   // 指定SurfaceView来预览视频
						   if(!isRecording && camera != null){
							   try {
							 	mRecorder.prepare();
							 } catch (IllegalStateException | IOException e) {
							 	// TODO Auto-generated catch block
						 	e.printStackTrace();
						 }
								   // 开始录制
										   mRecorder.start();

						   // 让record按钮不可用
						   // 让stop按钮可用
								   isRecording = true;
						   }
				}
			};
				timer.schedule(task, 500);

		 }
		 private void test() {
			 ReceiverDestroyl=new BroadcastReceiver(){
				    public void onReceive(Context context, Intent intent) {
				    	System.out.println("接收到finish消息了吗？   MediaRecorderActivity");
				    	MainActivity.this.finish();
				    }
				};
				IntentFilter intentFilter = new IntentFilter("android.intent.action.mediarecorder.MediaRecorderActivity");
				MainActivity.this.registerReceiver(ReceiverDestroyl, intentFilter);
		}
		@Override
		 public void onClick(View v) {
		  switch (v.getId()) {
		  case R.id.camera_change:
                  if(!isFront) {
                     //代表摄像头的方位，CAMERA_FACING_FRONT前置      CAMERA_FACING_BACK后置
                    	  if (isRecording) {
                    		    // 停止录制
                    		  mRecorder.setOnErrorListener(null);
                   		   mRecorder.setPreviewDisplay(null);
                   		   mRecorder.setOnInfoListener(null);
                   		   mRecorder.reset();
                   		   mRecorder.release();
                   		   mRecorder = null;
                   	    	camera.release();//释放资源
                               camera = null;//取消原来摄像头
                    		isRecording=false;
                            }
               camera = Camera.open(1);//打开前置
               camera.setDisplayOrientation(90);
			   camera.unlock();
			   mRecorder = new MediaRecorder();
			   mRecorder.setOrientationHint(270);
			   mRecorder.setCamera(camera);
			   mRecorder.setPreviewDisplay(sView.getHolder().getSurface());

			   // 设置从麦克风采集声音
			   mRecorder.setAudioSource(MediaRecorder.AudioSource.MIC);
			   // 设置从摄像头采集图像
			// 设置视频录制的分辨率。必须放在设置编码和格式的后面，否则报错
			   mRecorder.setVideoSource(MediaRecorder.VideoSource.CAMERA);
			   mRecorder.setProfile(CamcorderProfile.get(CamcorderProfile.QUALITY_HIGH));
			   // 创建保存录制视频的视频文件

			   mRecorder.setOutputFile(viodFile.getAbsolutePath());
			   // 指定SurfaceView来预览视频
			   if(!isRecording){
						   try {
						 	mRecorder.prepare();

						 } catch (IllegalStateException | IOException e) {
						 	// TODO Auto-generated catch block
						e.printStackTrace();
			 }
			   // 开始录制
			   mRecorder.start();
			   // 让record按钮不可用
			   // 让stop按钮可用

							   isRecording = true;
							   isFront=true;
			   }
                          break;

                  } else if(isFront){
                      //现在是前置， 变更为后置
                    	  if (isRecording) {
                  		    // 停止录制
                  		    mRecorder.reset();
                  		    mRecorder.release();
                  		    mRecorder = null;
                  		isRecording=false;
                          }
                          camera.release();//释放资源
                          camera = null;//取消原来摄像头
               if(camera ==null){
            	   camera = Camera.open(0);//打开当前选中的摄像头
                   camera.setDisplayOrientation(90);
     			   camera.unlock();
               }

			   mRecorder = new MediaRecorder();
			   mRecorder.setCamera(camera);
			   mRecorder.setPreviewDisplay(sView.getHolder().getSurface());
			   // 设置从麦克风采集声音
			   mRecorder.setAudioSource(MediaRecorder.AudioSource.MIC);
			   // 设置从摄像头采集图像
			   mRecorder.setVideoSource(MediaRecorder.VideoSource.CAMERA);
			   mRecorder.setProfile(CamcorderProfile.get(CamcorderProfile.QUALITY_HIGH));
			   // 创建保存录制视频的视频文件

			   mRecorder.setOutputFile(viodFile.getAbsolutePath());
			   // 指定SurfaceView来预览视频
			   if(!isRecording){
						   try {
						 	mRecorder.prepare();
						 } catch (IllegalStateException | IOException e) {
						 	// TODO Auto-generated catch block
						e.printStackTrace();
			 }
			   // 开始录制
			   mRecorder.start();
			   // 让record按钮不可用
			   // 让stop按钮可用
							   isRecording = true;
							   isFront=false;
			   }
              }
		   break;
		  case R.id.stop:
		   // 如果正在录制
		   if (isRecording && mRecorder!=null) {
		    // 停止录制
		    mRecorder.setOnErrorListener(null);
		    mRecorder.setOnInfoListener(null);
		    mRecorder.setPreviewDisplay(null);
		    mRecorder.reset();
		    mRecorder.release();
		    mRecorder = null;
	    	if(camera != null){
	    		camera.release();//释放资源
	            camera = null;//取消原来摄像头
	    	}
		// 释放资源
		    isRecording = false;
		   }
		   finish();
		   break;
		  default:
		   break;
		  }
		 }
	@Override
	protected void onStop() {
		if (isRecording && mRecorder!=null ) {
		    // 停止录制
		    mRecorder.setOnErrorListener(null);
		   mRecorder.setPreviewDisplay(null);
		   mRecorder.setOnInfoListener(null);
		   mRecorder.reset();
		   mRecorder.release();
		   mRecorder = null;
	    	camera.release();//释放资源
            camera = null;//取消原来摄像头
		// 释放资源

		    isRecording = false;
		   }
		Log.i("onStop", "onStop");
		    finish();
		super.onStop();
	}
	@Override
    protected void onPause() {
		Log.i("onPause", "onPause");
		    finish();
    	super.onPause();
    }
	@Override
	protected void onDestroy() {
		Log.i("onDestroy", "onDestroy");
		  if (isRecording && mRecorder!=null) {
		    // 停止录制
			 mRecorder.setOnErrorListener(null);
			   mRecorder.setPreviewDisplay(null);
			   mRecorder.setOnInfoListener(null);
			   mRecorder.reset();
			   mRecorder.release();
			   mRecorder = null;
	    	if(camera !=null){
	    		camera.release();//释放资源
	            camera = null;//取消原来摄像头
	    	}
		// 释放资源

		    isRecording = false;
		  }
		 unregisterReceiver(ReceiverDestroyl);
		super.onDestroy();
	}
}
