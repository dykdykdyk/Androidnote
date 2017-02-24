package com.example.virtualcall;

import java.io.IOException;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

import android.app.Activity;
import android.app.Instrumentation;
import android.app.PendingIntent;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.hardware.Camera;
import android.hardware.Camera.Parameters;
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
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;


public class MainActivity extends Activity {
	public boolean FlashlightOpenorDown=false;
	Camera camera;
	  Parameters parameters ;
		private String flashMode;
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		test2();
	}
	public void test2(){
		 if(!FlashlightOpenorDown){
	          if(isCameraCanUse()){
	            camera = Camera.open();
	            parameters = camera.getParameters();
	            List<String> flashModes = parameters.getSupportedFlashModes();
	            flashMode = parameters.getFlashMode();
	            if (!Parameters.FLASH_MODE_TORCH.equals(flashMode)) {
	              if (flashModes.contains(Parameters.FLASH_MODE_TORCH)) {
	                parameters.setFlashMode(Parameters.FLASH_MODE_TORCH);
	                camera.setParameters(parameters);
	                camera.startPreview(); // 开始亮灯
	                FlashlightOpenorDown=true;
	              }
	            }
	          }
	        }else {
	          if(camera != null){
	            parameters.setFlashMode(Parameters.FLASH_MODE_OFF);//关闭
	            //      camera.setParameters(parameters);
	            camera.release();
	            camera=null;
	            FlashlightOpenorDown=false;
	          }
	        }
    	//
	}
	//判断摄像头是否可用，录像，闪拍，拍照，录音
		 public static boolean isCameraCanUse() {
	         boolean canUse = true;
	         Camera mCamera = null;
	         try {
	             // TODO camera驱动挂掉,处理??
	             mCamera = Camera.open();
	         } catch (Exception e) {
	             canUse = false;
	         }
	         if (canUse) {
	             mCamera.release();
	             mCamera = null;
	         }
	         return canUse;
	   }
	
}
