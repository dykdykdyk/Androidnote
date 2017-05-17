package dyk.viewpagerdemo.ble.message;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.util.Log;

import dyk.viewpagerdemo.ble.central.Peripheral;
import dyk.viewpagerdemo.utils.UtilTools;


public class PhoneMessageHandler extends MessageHandler{
	
	public final static String TAG = MessageManager.class.getSimpleName();
	
	/**类别*/
	public static final byte TYPE = 0x01;
	
	/** 请求报警 */
	public static final byte STATE_PHONE_ALERT = 0x01;
	
	/** 设备按键消息 */
	public static final byte STATE_DEVICE_KEY = 0x02;
	
	/** 设备电量通知 */
	public static final byte STATE_DEVICE_BATTERY = 0x03;
	
	/**来电提醒*/
	public static final byte STATE_DEVICE_CALL_REMIND = 0x04;
	
	/**来电已接听Answer */
	public static final byte STATE_DEVICE_CALL_ANSWER = 0x05;
	
	/**来电已拒接 Reject*/
	public static final byte STATE_DEVICE_CALL_REJECT = 0x06;
	
	/**短信提醒 Reject*/
	public static final byte STATE_DEVICE_SMS_REJECT = 0x07;
	
	/**跌倒报警*/
	public static final byte STATE_DEVICE_FALL_ALARM = 0x08;

	
	public static int alert;
	public PhoneMessageHandler(Peripheral peripheral) {
		super(peripheral);
		// TODO Auto-generated constructor stub
	}
	
	@Override
	public void handleMessage(byte[] data) {
		int state = data[1]& FITER_TO_STATE;
		switch(state){
		case STATE_DEVICE_BATTERY:
			Log.i(TAG, String.format("设备电量:%d", data[4]));
			System.out.println("电量：..."+ String.format("设备电量:%d", data[4]) +" / " +data[4]);
//			Log.i(TAG, String.format("设备电量:%d", data[4]));
			final AlertDialog.Builder builder = new AlertDialog.Builder(mPeripheral.mActivity);
			builder.setTitle("设备电量提示").setMessage("设备电量已不足,请及时更换电池").setNegativeButton("确认", new DialogInterface.OnClickListener() {
				@Override
				public void onClick(DialogInterface dialog, int which) {
					dialog.cancel();
				}
			});
			mPeripheral.mActivity.runOnUiThread(new Runnable() {
				@Override
				public void run() {
					builder.create().show();
				}
			});
			break;
			
		case STATE_PHONE_ALERT:
			int i = data[4];
			Log.i(TAG, " 返回手机请求设备报警------->"+i);

			break;
		case STATE_DEVICE_CALL_REMIND:
			Log.i(TAG," 返回来电提醒"+data[4]);
			break;
		case STATE_DEVICE_CALL_ANSWER:
			Log.i(TAG," 返回来电已接听"+data[4]);
			 
			break;
		case STATE_DEVICE_CALL_REJECT:
			Log.i(TAG," 返回来电已拒接"+data[4]);
		 
			break;	
		case STATE_DEVICE_SMS_REJECT:
			Log.i(TAG," 返回短信提醒"+data[4]);
			break;	
		case STATE_DEVICE_KEY:
			Log.i(TAG," 返回设备按键消息");
			for(int b = 0; b<5;b++){
				int push = data[4+b]>>3;
				int longPush = data[4+b] & 0b00000111 >> 2;
				int doubleClick = data[4+b] & 0b00000011>>1;
				int click = data[4+b] & 0b00000001;
				System.out.println("push = "+push+"，longPush = "+longPush+
						"，doubleClick = "+doubleClick+"，click = "+click);
			}
			break;
		case STATE_DEVICE_FALL_ALARM:
			Log.i(TAG," 跌倒报警");
			mPeripheral.fallAlarm();
			break;
 	
		}
		
	}
	
	@Override
	protected void contentBytes(int state, byte[] result) {
		result[1] = (byte) (state|(TYPE<<4));
		switch (state) {	
		case STATE_PHONE_ALERT:
			Log.i(TAG," 手机请求设备报警 ");  //----报错误指令10
			result[0] = getDataHeader(0);
			result[4] = 0x02;//0:t停止报警；1:声音报警；02：声音+灯光报警
			System.out.println("-------------->"+result[4]);
			break;
			
		case STATE_DEVICE_CALL_REMIND:  
			Log.i(TAG," 来电提醒");       
			result[0] = getDataHeader(15);
			String str ="+"+ mPeripheral.callNumber();
			System.arraycopy(UtilTools.strToByteArray(str), 0, result, 4, UtilTools.strToByteArray(str).length);
			System.out.println("来电-------------->"+UtilTools.strToByteArray(str));
			break;
			
		case STATE_DEVICE_CALL_ANSWER:
			Log.i(TAG," 来电已接听");
			result[0] = getDataHeader(0);
			result[4] = 0x00;
			System.out.println("-------------->"+result[4]);
			break;
			
		case STATE_DEVICE_CALL_REJECT:
			Log.i(TAG," 来电已拒接");
			result[0] = getDataHeader(0);
			result[4] = 0x00;
			System.out.println("-------------->"+result[4]);
			break;
			
		case STATE_DEVICE_SMS_REJECT:
			
			result[0] = getDataHeader(15);
			String sms =mPeripheral.callNumber();
			System.arraycopy(UtilTools.strToByteArray(sms), 0, result, 4, UtilTools.strToByteArray(sms).length);
			Log.i(TAG,"来短信提醒------->"+UtilTools.strToByteArray(sms));
			break;
	 	}
		
		
	}
	
}
