package com.ble.message;

import android.util.Log;

import com.megster.cordova.ble.central.Peripheral;

/**
 * Created by dengyangkang on 2017/4/21.
 */

public class BreatheMessageHandler extends MessageHandler{

  public static final String TAG = BreatheMessageHandler.class.getSimpleName();
  /**类别*/
  public static final byte TYPE = 0x07;

  /** 请求报警 */
  public static final byte STATE_PHONE_ALERT = 0x01;

  /** 设备按键消息 */
  public static final byte STATE_DEVICE_KEY = 0x02;

  /** 设备电量通知 */
  public static final byte STATE_DEVICE_BATTERY = 0x03;

  /**来电提醒*/
  public static final byte STATE_DEVICE_CALL_REMIND = 0x04;

  public BreatheMessageHandler(Peripheral peripheral) {
    super(peripheral);
  }

  /**
   * 处理字节包
   *
   * @param data 字节包
   */
  @Override
  public void handleMessage(byte[] data) {
    int state = data[1]& FITER_TO_STATE;
    switch(state) {
      case STATE_DEVICE_CALL_REMIND:
        Log.i(TAG, String.format("设备电量:%d", data[4]));
        System.out.println("电量：..." + String.format("设备电量:%d", data[4]) + " / " + data[4]);
//			Log.i(TAG, String.format("设备电量:%d", data[4]));
        break;

      case STATE_DEVICE_KEY:
        int i = data[4];
        Log.i(TAG, " 返回手机请求设备报警------->" + i);

        break;
    }
  }

  @Override
  protected void contentBytes(int state, byte[] result) {
    result[1] = (byte) (state|(TYPE<<4));
    switch (state) {
      case STATE_PHONE_ALERT:
        Log.i(TAG, " 手机请求设备报警 ");  //----报错误指令10
        result[0] = getDataHeader(0);
        result[4] = 0x02;//0:t停止报警；1:声音报警；02：声音+灯光报警
        System.out.println("-------------->" + result[4]);
        break;

      case STATE_DEVICE_BATTERY:
        Log.i(TAG, " 来电提醒");
        result[0] = getDataHeader(15);
        String str = "+" + mPeripheral.callNumber();
        System.arraycopy(Util.strToByteArray(str), 0, result, 4, Util.strToByteArray(str).length);
        System.out.println("来电-------------->" + Util.strToByteArray(str));
        break;
    }
  }
}
