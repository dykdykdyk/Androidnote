package com.ustone.plugin.amap;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.hardware.Camera;
import android.hardware.Camera.Parameters;
import android.os.Bundle;
import android.util.Log;
import android.view.SurfaceHolder;
import android.widget.LinearLayout;

import com.ionicframework.ufind1210015.R;

/**
 * Created by Administrator on 2016/11/25 0025.
 */

public class lightActivity extends Activity{
  private Camera camera = null;
  private SurfaceHolder holder;
  private LinearLayout sosLayout;
  Parameters parameters ;
  SharedPreferences mySharedPreferences;
  SharedPreferences.Editor editor;
 String i="";
  BroadcastReceiver mReceiverDestroyl;
  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    setContentView(R.layout.light);
    mySharedPreferences = getSharedPreferences("test2", Activity.MODE_WORLD_READABLE);
    editor = mySharedPreferences.edit();
    initTest();
    initlight();
  }
  private void initTest() {
    mReceiverDestroyl=new BroadcastReceiver(){
      public void onReceive(Context context, Intent intent) {
        System.out.println("接收到finish消息了吗？   SoundRecorderActivity");
        if(camera != null){
          parameters.setFlashMode(Parameters.FLASH_MODE_OFF);//关闭
          camera.release();
          camera=null;
          lightActivity.this.finish();
        }
      }
    };
    IntentFilter intentFilter = new IntentFilter("android.intent.action.amap.lightActivity");
    lightActivity.this.registerReceiver(mReceiverDestroyl, intentFilter);
  }
  public void initlight(){
    Log.i("ligheActivity","initlight");
//    i=mySharedPreferences.getString("lighttest","");
//    if(i.equals("2")){
//      if(camera != null){
//        parameters.setFlashMode(Parameters.FLASH_MODE_OFF);//关闭
//        camera.release();
//        camera=null;
//        editor.putString("lighttest","");
//        editor.commit();
//        finish();
//     }
//    }else if(i.equals("")){
    if(isCameraCanUse()){
      camera = Camera.open() ;
      camera.startPreview();
      parameters = camera.getParameters();
      parameters.setFlashMode(Parameters.FLASH_MODE_TORCH);
      camera.setParameters(parameters);
      camera.startPreview();
      editor.putString("lighttest","2");
      editor.commit();
    }
//    }
  }
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

  @Override
  protected void onStop() {
    super.onStop();
    if (camera != null) {
      parameters.setFlashMode(Parameters.FLASH_MODE_OFF);//关闭
      camera.release();
      camera = null;
      finish();
    }
  }

  @Override
  protected void onDestroy() {
    super.onDestroy();
    unregisterReceiver(mReceiverDestroyl);
  }
}
