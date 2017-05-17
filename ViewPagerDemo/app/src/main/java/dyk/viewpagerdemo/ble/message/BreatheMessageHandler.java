package dyk.viewpagerdemo.ble.message;

import android.util.Log;

import dyk.viewpagerdemo.ble.central.Peripheral;

/**
 * Created by dengyangkang on 2017/4/21.
 */

public class BreatheMessageHandler extends MessageHandler{

  public static final String TAG = BreatheMessageHandler.class.getSimpleName();
  /**类别*/
  public static final byte TYPEED = 0x07;

  /** 手机请求加速度裸数据 */
  public static final byte RAW_RAT = 0x01;

  /** 加速度裸数据返回  */
  public static final byte RAW_RAT_KEY = 0x02;

  /** 手机请求心率裸数据 */
  public static final byte RAW_HEART_RAT = 0x03;

  /**心率裸数据返回*/
  public static final byte RAW_HEART_RAT_KEY = 0x04;

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
    Log.i(TAG, " DYK 请求心率裸数据返回------->" );
    int state = data[1]& FITER_TO_STATE;
    switch(state) {
      case RAW_HEART_RAT_KEY:
        Log.i(TAG, " 请求心率裸数据返回------->" );
//			Log.i(TAG, String.format("设备电量:%d", data[4]));
        break;

      case RAW_RAT_KEY:
        int i = data[4];
        Log.i(TAG, " 请求加速度裸数据返回------->" + i);

        break;
    }
  }

  @Override
  protected void contentBytes(int state, byte[] result) {
    result[1] = (byte) (state|(TYPEED<<4));
    switch (state) {
      case RAW_RAT:
        Log.i(TAG, " 手机请求加速度裸数据");  //----报错误指令10
        result[4] = 0x01;//0:t停止报警；1:声音报警；02：声音+灯光报警
        System.out.println("-------------->" + result[4]);
        break;

      case RAW_HEART_RAT:
        Log.i(TAG, "手机请求心率裸数据");
        result[0] = 0x02;
        break;
    }
  }
}
