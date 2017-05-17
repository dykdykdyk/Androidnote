// (c) 2104 Don Coleman
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

package dyk.viewpagerdemo.ble.central;

import android.app.Activity;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCallback;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;
import android.bluetooth.BluetoothGattService;
import android.content.Context;
import android.content.Intent;
import android.content.res.AssetFileDescriptor;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.os.Vibrator;
import android.util.Log;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Timer;
import java.util.TimerTask;
import java.util.UUID;

import dyk.viewpagerdemo.R;
import dyk.viewpagerdemo.ble.message.BreatheMessageHandler;
import dyk.viewpagerdemo.ble.message.HealthMessageHandler;
import dyk.viewpagerdemo.ble.message.MessageManager;
import dyk.viewpagerdemo.ble.message.PhoneMessageHandler;
import dyk.viewpagerdemo.ble.message.SecurityMessageHandler;
import dyk.viewpagerdemo.ble.message.SettingMessage;
import dyk.viewpagerdemo.ble.message.SportsMessageHandler;
import dyk.viewpagerdemo.interfaces.CallbackData;
import dyk.viewpagerdemo.view.activity.Main_Activity;

/**
 * Peripheral wraps the BluetoothDevice and provides methods to convert to JSON.
 */
public class Peripheral extends BluetoothGattCallback {
	private static final String TAG = "Peripheral";

//	private byte[] advertisingData;
//	private int advertisingRSSI;
	private boolean connected = false;
	/** 绑定指令是否发送 */
	private boolean isSendBound = false;
	/** 历史体温 */
	private JSONArray sleepTimeArray;
	private JSONArray sleepArray;
	private ArrayList sleepArrayList;
	private ArrayList sleepTimeArrayList;
	private JSONObject jsonSleep;
	private boolean isSleepSends1 = true;
	public int step_count = 0;
	/**
	 * 数据是否已经发送结束 false 结束
	 * */

	/**
	 * 来电提醒 state 状态 str 号码
	 * */
	public String callNumber;
	public boolean isStepSends = true;
	/** 历史步数 */
	private JSONArray timeArray;
	private JSONArray stepArray;
	private ArrayList stepArrayList;
	private ArrayList timeArrayList;
	BluetoothGatt mGatt;
	int count = 0;
	// TODO 调试信息暂时展示
	public Activity mActivity;

	/** 开启notify的SERVICE的UUID */
	private static final UUID NOTIFY_SERVICE_UUID = UUIDHelper
			.uuidFromString("1803");

	/** 开启notify的CHARACTERISTIC的UUID */
	private static final UUID NOTIFY_CHARACTERISTIC_UUID = UUIDHelper
			.uuidFromString("2a06");

	/** 消息管理者 */
	private MessageManager mMessageManager;
	int moxygen;int mbreathe;String mblood_presses;
	/** 命令消息队列 */
	private BLECommandQueue mCommandQueue;

	public boolean isFirstConnect = true;
	private CallbackData callbackContext;
	/** 绑定指令是否发送 */
	// public AudioManager mAudioManager;

	// 取消绑定超时的回调
	private Timer delBoundOutTimer;
	// 连接超时的回调
	public Timer connectOutTimer;

	// 断开连接的回调
	public Timer disConnectOutTimer;

	// 定时器,定时获取设备的rssi
	public Timer checkRssiTimer;

	// 设备请求或落水请求报警的铃声
	// private MediaPlayer requestAlertPlayer;
	public int m_cmdItemAlert = 0;
	public int m_playcount = 0;
	public int m_cmdAlertTime = 1;

	/** 历史心率 */
	private JSONArray heartTimeArray;
	private JSONArray heartArray;
	private ArrayList heartArrayList;
	private ArrayList heartTimeArrayList;
	private JSONObject jsonHeart;
	public boolean isHeartSends = true;

	/** 历史体温 */
	private JSONArray temperatureTimeArray;
	private JSONArray temperatureArray;
	private ArrayList temperatureArrayList;
	private ArrayList temperatureTimeArrayList;
	private JSONObject jsonTemperature;
	public boolean isTemperatureSends = true;

	/** 接收次数 */
	public int get_dis = 0;
	// 关闭蓝牙
	private int opendBLE = 0;
	private boolean music = false;
	public boolean is_send = false;// 停止发送历史请求指令

	public boolean del_bond = false;
	public JSONObject jsonGN; // 设备特性json数据
	HealthMessageHandler mHealthMessageHandler;
	BreatheMessageHandler mBreatheMessageHandler;
	/**
	 * 连接正常的情况下，请求历史数据中途断开
	 * */
	private Timer send_dis_timer;
	int minScends =40;

	int isFallAlarm = 0;
	String number=null,message;
	public BluetoothDevice mDevice;
	public Peripheral(BluetoothDevice device){
		this.mDevice = device;
		mMessageManager = new MessageManager(this);
		mSportsMessageHandler = new SportsMessageHandler(this);
		mHealthMessageHandler = new HealthMessageHandler(this);
		mHealthMessageHandler = new HealthMessageHandler(this);
		mBreatheMessageHandler =new BreatheMessageHandler(this);
		stepArrayList = new ArrayList();
		timeArrayList = new ArrayList();
		timeArray = new JSONArray();
		stepArray = new JSONArray();
		sleepArrayList = new ArrayList();
		sleepTimeArrayList = new ArrayList();
		sleepArray = new JSONArray();
		sleepTimeArray = new JSONArray();
		heartTimeArrayList = new ArrayList();
		heartArrayList = new ArrayList();
		heartTimeArray = new JSONArray();
		heartArray = new JSONArray();
		temperatureArrayList = new ArrayList();
		temperatureTimeArrayList = new ArrayList();
		temperatureTimeArray = new JSONArray();
		temperatureArray = new JSONArray();
	}

	public Peripheral(BluetoothDevice device, int advertisingRSSI,
			byte[] scanRecord) {
//		this.device = device;
//		this.advertisingRSSI = advertisingRSSI;
//		this.advertisingData = scanRecord;
	}
	public void connect( Activity activity) {
		if (isConnected()) {
			return;
		}
		disconnect();
		Log.i(TAG, "开始连接");
		if(activity !=null)
	    	mActivity = activity;
		final  BluetoothDevice device = getDevice();
			mGatt = device.connectGatt(mActivity, false, this);
		int a = 1;
		setBle(a);
		if (connectOutTimer != null)
			connectOutTimer.cancel();
		connectOutTimer = new Timer();
		if (isFirstConnect) {
			connectOutTimer.schedule(new TimerTask() {
				@Override
				public void run() {
					Log.i(TAG, "----->>>>连接超时1");
					delBound();
				}
			}, 24 * 1000);
		} else {
			connectOutTimer.schedule(new TimerTask() {
				@Override
				public void run() {
					if (disConnectOutTimer == null)
						Log.i(TAG, "----->>>>连接超时2");
					disconnect();
					mGatt = mDevice.connectGatt(mActivity, false,
							Peripheral.this);
				}
			}, 24 * 1000);
		}

		// initAlert();
		Log.i("main", "-------connect");

		mCommandQueue = new BLECommandQueue(this);

	}

	public boolean getDel_bond() {
		return this.del_bond;
	}
	//设置监听接口
	public void setOnCallbackListent(CallbackData callback) {
		if (callback != null)
			this.callbackContext = callback;
	}
	/**
	 * 删除绑定并断开连接
	 */
	public void delBound() {
		del_bond = true;
		if (delBoundOutTimer != null)
			delBoundOutTimer.cancel();
		delBoundOutTimer = null;
		mActivity = null;
		disconnect();
	}

	/**
	 * 跌倒报警
	 */
	public void fallAlarm() {
		System.out.println(" 跌倒了哈哈。。。。。。。。" + isFallAlarm);
		if(isFallAlarm == 1){
		   reConnectAlert(1);
		   setNotificationVibrate(2);

		   if(!"".equals(number) && number !=null){
			   System.out.println("sendSMS。。。。。。|" + number);
			   sendSMS(number,message);
		   }
		}
	}
    /**
     * 直接调用短信接口发短信
     * @param phoneNumber
     * @param message
     */
	public void sendSMS(String phoneNumber,String message){
		 //获取短信管理器
        android.telephony.SmsManager smsManager = android.telephony.SmsManager.getDefault();

        //如果短信内容长度超过70则分为若干条发
        if (message.length() > 70) {
        	//拆分短信内容（手机短信长度限制）
            ArrayList<String> msgs = smsManager.divideMessage(message);
            for (String msg : msgs) {
                smsManager.sendTextMessage(phoneNumber, null, msg, null, null);
            }
        } else {
            smsManager.sendTextMessage(phoneNumber, null, message, null, null);
        }
	}

	/**
	 * 设置通知和振动
	 */
	@SuppressWarnings("deprecation")
	public void setNotificationVibrate(int type) {

			NotificationManager notifyManager = (NotificationManager) mActivity
					.getSystemService(Context.NOTIFICATION_SERVICE);
			int icon = R.drawable.icon;
			CharSequence tickerText = null;
			long when = System.currentTimeMillis(); // 立即发生此通知
			Vibrator vibrator = (Vibrator) mActivity
					.getSystemService(Context.VIBRATOR_SERVICE);
			long[] pattern = { 0, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500,
					500 }; // 停止 开启 停止 开启
			long[] pattern2 = { 0, 500, 500, 500 }; // 停止 开启 停止 开启
			if (type == 1) {
				// vibrateLong =new long[]{0,300};

				vibrator.vibrate(pattern2, -1);
				// tickerText ="手环断开连接了！" ;
				tickerText = mActivity.getResources().getString(
						R.string.ubond_disconnet);
			} else if (type == 2) {
				vibrator.vibrate(pattern, -1);
				tickerText = mActivity.getResources()
						.getString(R.string.ubond_fall);
			}
    Intent notificationIntent = new Intent(mActivity, Main_Activity.class);
    PendingIntent contentIntent = PendingIntent.getActivity(mActivity, 0,
      notificationIntent, 0);
			Notification notification = new Notification.Builder(mActivity)
        .setContentTitle(tickerText)
        .setContentText("")
        .setContentIntent(contentIntent)
        .setWhen(System.currentTimeMillis())
        .build();
			// 添加声音效果
			// notification.defaults |= Notification.DEFAULT_SOUND;
			// 添加震动,后来得知需要添加震动权限 : Virbate Permission
			// notification.defaults |= Notification.DEFAULT_VIBRATE ;
			notification.flags |= Notification.FLAG_AUTO_CANCEL;
			// 获取PendingIntent
			notifyManager.notify(type, notification);

	}

	private void removeNotification(int type) {
		NotificationManager notifyManager = (NotificationManager) mActivity
				.getSystemService(Context.NOTIFICATION_SERVICE);
		// 取消的只是当前Context的Notification
		notifyManager.cancel(type);
	}

	/**
	 * 删除手机配对并在成功删除时断开连接
	 *
	 */
	public void disconnectBound() {
		if (delBoundOutTimer != null)
			delBoundOutTimer.cancel();
		delBoundOutTimer = new Timer();
		delBoundOutTimer.schedule(new TimerTask() {
			@Override
			public void run() {
				// closeConnection();
				del_Bound(2);
				Log.w(TAG, "删除超时回调");
			}
		}, 10 * 1000);
		if (isConnected()) {
			mMessageManager.queueWrite(SecurityMessageHandler.TYPE,
					SecurityMessageHandler.STATE_PHONE_DEL_BOUND);
		}
		Log.i("main", "-----disconnectBound");
	}

	public void del_Bound(int st) {
		if (delBoundOutTimer != null)
			delBoundOutTimer.cancel();
		Log.i("peripheral", "解除绑定回调...." + st);
		if (st == 0) {
			Log.i("peripheral", "解除绑定成功");
			del_bond = true;
			reConnectAlert2();
			if (isConnected())
				mMessageManager.queueWrite(SecurityMessageHandler.TYPE,
						SecurityMessageHandler.STATE_DEVICE_DISCONNECT);
			delBound();

		} else {
			Log.i("peripheral", "解除绑定失败");
		}
	}

	/**
	 * 处理绑定
	 *
	 * @param isBound
	 *            是否绑定成功
	 */
	public void bound(int isBound) {
		Log.i(TAG, "请求绑定错误返回值->" + isBound);
		if (isBound == 0) {
			boundSuccess();
		} else if (isBound == 6) {
			isFirstConnect = false;
			disconnect();
		}

		if (connectOutTimer != null) {
			connectOutTimer.cancel();
			connectOutTimer = null;
		}
		if (disConnectOutTimer != null) {
			disConnectOutTimer.cancel();
			disConnectOutTimer = null;
		}
	}

	private void boundSuccess() {
		Log.i(TAG, "!isConnected()-------->" + !isConnected());
		if (!isConnected()) {
			new Thread() {
				public void run() {
					try {
						Thread.sleep(30);
						writeLogin();
					} catch (InterruptedException e) {
					}
				}
			}.start();
			connected = true;
		}
		if (checkRssiTimer != null)
			checkRssiTimer.cancel();
		checkRssiTimer = new Timer();

	}

	/**
	 * 登录成功， 同步时间， 发送用户基本信息
	 * */
	public void login(int state) {
		if (state != 0) {
			disconnect();
			isFirstConnect = true;
			Log.i(TAG, "登录失败" + isFirstConnect);
		} else {
			callbackContext.onConnectedCallBack(getAddress());//登录成功 对view设置了回调
			Log.i(TAG, "登录成功");
			connected = true;
			if (isFirstConnect) {
				isFirstConnect = false;
			}
			if (connectOutTimer != null) {
				connectOutTimer.cancel();
				connectOutTimer = null;
			}
			reConnectAlert2();
			del_bond = false;
		}
	}
	public String getAddress() {
		return this.mDevice.getAddress();
	}
	/**
	 * 重新连接的警告声音
	 */
	public void reConnectAlert(final int a) {
		count = 0;
		Log.i(TAG, "reConnectAlert");
		Context context = mActivity.getApplicationContext();
		final MediaPlayer mediaPlayer = new MediaPlayer();
		mediaPlayer.setAudioStreamType(AudioManager.STREAM_MUSIC);
		AssetFileDescriptor file = context.getResources().openRawResourceFd(
				R.raw.alert2);
		try {
			mediaPlayer.setDataSource(file.getFileDescriptor(),
					file.getStartOffset(), file.getLength());
			file.close();
			mediaPlayer.prepare();
		} catch (IOException ioe) {
			Log.w(TAG, "setDataSource failed");
		}
		mediaPlayer.setOnCompletionListener(new OnCompletionListener() {
			@Override
			public void onCompletion(MediaPlayer mp) {
				if (a == 1 & count < 4) {
					mediaPlayer.start();
					count++;
				}
			}
		});
		mediaPlayer.start();
		Log.i(TAG, "reConnectAlert");
	}

	public void reConnectAlert2() {
		Log.i(TAG, "reConnectAlert2");
		Context context = mActivity.getApplicationContext();
		MediaPlayer mediaPlayer = new MediaPlayer();
		mediaPlayer.setAudioStreamType(AudioManager.STREAM_MUSIC);
		AssetFileDescriptor file = context.getResources().openRawResourceFd(
				R.raw.reconnect);
		try {
			mediaPlayer.setDataSource(file.getFileDescriptor(),
					file.getStartOffset(), file.getLength());
			file.close();
			mediaPlayer.prepare();
		} catch (IOException ioe) {
			Log.w(TAG, "setDataSource failed");
			mediaPlayer = null;
		}
		mediaPlayer.start();
		Log.i(TAG, "reConnectAlert2");
	}

	public void write(byte type, byte state) {
		mMessageManager.queueWrite(type, state);
	}

	/**
	 * 蓝牙打开或者关闭
	 */
	public void setBle(int opend) {
		this.opendBLE = opend;
	}

	public int getBle() {
		return this.opendBLE;
	}

	/**
	 * 关闭设备连接
	 */

	public void disconnect() {
		if (disConnectOutTimer != null)
			disConnectOutTimer.cancel();
		connected = false;
		isSendBound = false;
		if (mGatt != null) {
			mGatt.close();
			Log.i(TAG, "关闭连接");
			mGatt = null;
		}
		// clearTime();
		stop_callback();
	}
	/** 发送历史请求时中途断开的回调 */
	public void  stop_callback() {
		if (send_dis_timer != null) {
			send_dis_timer.cancel();
		}
	}
	public void getRSSI() {
		if (mGatt != null) {
			mGatt.readRemoteRssi();
		} else {
			Log.e(TAG, "getRSSI failed: gatt is not exist");
		}
	}

//	public JSONObject asJSONObject() {
//
//		JSONObject json = new JSONObject();
//
//		try {
//			json.put("name", device.getName());
//			json.put("id", device.getAddress()); // mac address
//			json.put("advertising", byteArrayToJSON(advertisingData));
//			// TODO real RSSI if we have it, else
//			json.put("rssi", advertisingRSSI);
//		} catch (JSONException e) { // this shouldn't happen
//			e.printStackTrace();
//		}
//
//		return json;
//	}
//
//	static JSONObject byteArrayToJSON(byte[] bytes) throws JSONException {
//		JSONObject object = new JSONObject();
//		object.put("CDVType", "ArrayBuffer");
//		object.put("data", Base64.encodeToString(bytes, Base64.NO_WRAP));
//		return object;
//	}

	public boolean isConnected() {
		return connected;
	}

	public BluetoothDevice getDevice() {
		return mDevice;
	}

	public void enableNotify() {
		queueRegisterNotifyCallback(NOTIFY_SERVICE_UUID,
				NOTIFY_CHARACTERISTIC_UUID);
	}
	@Override
	public void onServicesDiscovered(BluetoothGatt gatt, int status) {
		super.onServicesDiscovered(gatt, status);
		for (BluetoothGattService service : gatt.getServices()) {
			Log.i(TAG, "service " + service.getUuid());
			for (BluetoothGattCharacteristic c : service.getCharacteristics()) {
				Log.i(TAG, "Characteristic " + c.getUuid());
			}
		}
		if (status == BluetoothGatt.GATT_SUCCESS) {
			Log.i(TAG, "发现蓝牙服务onServicesDiscovered GATT_SUCCESS");
			enableNotify();
		} else {
			disconnect();
			// disconnect();
		}
	}
  public JSONObject getconnectJson(String bloodpress){
    JSONObject  jsonObject = new JSONObject();
    try {
      jsonObject.put("status", bloodpress);
    } catch (JSONException e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    }
    return jsonObject;
  }
	@Override
	public void onConnectionStateChange(BluetoothGatt gatt, int status,
			int newState) {
		this.mGatt = gatt;
		Log.i(TAG, "连接状态改变onConnectionStateChange status:" + status
				+ "===> newSatet:" + newState);
		if (newState == BluetoothGatt.STATE_CONNECTED) { // 设备连接
			// reConnectAlert();
			// connected = true;
			if (disConnectOutTimer != null)
				disConnectOutTimer.cancel();
			int a = 1;
			setBle(a);

			music = true;
			if (gatt.getServices().size() == 0)
				gatt.discoverServices();
			else
				enableNotify();
			removeNotification(1);
		} else { // 设备断开
      if (isFirstConnect){
        return ;
      }
			if (music) {
				reConnectAlert(0);
				setNotificationVibrate(1);
				music = false;
			}
			connected = false;
			isSendBound = false;
			is_send = false;
			isStepSends = false;
			isTemperatureSends = false;
			isHeartSends = false;
			isSleepSends1 = false;

			// 发送断开的回调信息
			Log.i(TAG, "蓝牙断开....dyk2" + getBle());
			// gatt.connect();
			if (getBle() == 1) {
				disconnect();
				gatt.connect();
				if (disConnectOutTimer != null)
					disConnectOutTimer.cancel();
				disConnectOutTimer = new Timer();
				disConnectOutTimer.schedule(new TimerTask() {
					@Override
					public void run() {
						Log.i(TAG, "蓝牙一直开启着--蓝牙连接状态变化的重连");
						disconnect();
						mGatt = mDevice.connectGatt(mActivity, false,
								Peripheral.this);
					}
				}, 2 * 1000, 24 * 1000);

			} else if (getBle() == 2) {
				Log.i(TAG, "中途关闭再开启蓝牙连接不上.......");
			}
		}

	}

	@Override
	public void onCharacteristicChanged(BluetoothGatt gatt,
			BluetoothGattCharacteristic characteristic) {
		Log.i(TAG,
				"获取到数据包onCharacteristicChanged values = "
						+ Arrays.toString(characteristic.getValue()));
		mMessageManager.handlerDeviceMessage(characteristic.getValue());
		super.onCharacteristicChanged(gatt, characteristic);
	}

	@Override
	public void onCharacteristicRead(BluetoothGatt gatt,
			BluetoothGattCharacteristic characteristic, int status) {
		Log.i(TAG,
				"onCharacteristicRead value = "
						+ Arrays.toString(characteristic.getValue())
						+ " status = " + status);
		super.onCharacteristicRead(gatt, characteristic, status);
		Log.d(TAG, "onCharacteristicRead " + characteristic);
		mCommandQueue.commandCompleted();
	}

	@Override
	public void onCharacteristicWrite(BluetoothGatt gatt,
			BluetoothGattCharacteristic characteristic, int status) {
		super.onCharacteristicWrite(gatt, characteristic, status);
		Log.d(TAG, "onCharacteristicWrite " + characteristic);
		mCommandQueue.commandCompleted();
	}

	public void send(int state) {
		if (state != 0) {
			Log.i(TAG, "发送失败");
		} else {
			Log.i(TAG, "发送成功");
		}
	}

	@Override
	public void onDescriptorWrite(BluetoothGatt gatt,
			BluetoothGattDescriptor descriptor, int status) {
		if (!isSendBound) {
			if (isFirstConnect)
				mMessageManager.queueWrite(SecurityMessageHandler.TYPE,
						SecurityMessageHandler.STATE_PHONE_BOUND);
			// mMessageManager.queueWrite(SecurityMessageHandler.TYPE,SecurityMessageHandler.STATE_PHONE_UPSER_BOUND);
			else
				// mMessageManager.queueWrite(SecurityMessageHandler.TYPE,SecurityMessageHandler.STATE_PHONE_UPSER_BOUND);
				mMessageManager.queueWrite(SecurityMessageHandler.TYPE,
						SecurityMessageHandler.STATE_PHONE_USER_LOGIN);
			isSendBound = true;
		}

		super.onDescriptorWrite(gatt, descriptor, status);
		Log.d(TAG, "onDescriptorWrite " + descriptor);
		mCommandQueue.commandCompleted();
	}

	@Override
	public void onReadRemoteRssi(BluetoothGatt gatt, int rssi, int status) {
		Log.i(TAG, "onReadRemoteRssi rssi = " + rssi + " status = " + status);
		super.onReadRemoteRssi(gatt, rssi, status);
		if (status == BluetoothGatt.GATT_SUCCESS) {
//			updateRssi(rssi);
		} else {

		}

		mCommandQueue.commandCompleted();
	}
//
//	public void updateRssi(int rssi) {
//		advertisingRSSI = rssi;
//	}

	/**
	 * 来电提醒 state 状态 str 号码
	 * */

	public void callRemind(int state, String str) {
		Log.i(TAG, "call_______" + state);
		callNumber = str;
		switch (state) {
		case 0: // 电话挂断
			if (isConnected()) {
				mMessageManager.queueWrite(PhoneMessageHandler.TYPE,
						PhoneMessageHandler.STATE_DEVICE_CALL_REJECT);
			}
			break;
		case 1: // 等待接电话
			if (isConnected()) {
				mMessageManager.queueWrite(PhoneMessageHandler.TYPE,
						PhoneMessageHandler.STATE_DEVICE_CALL_REMIND);
			}
			break;
		case 2: // 通话中
			if (isConnected()) {
				mMessageManager.queueWrite(PhoneMessageHandler.TYPE,
						PhoneMessageHandler.STATE_DEVICE_CALL_ANSWER);
			}
			break;
		case 5: // 短信提醒
			if (isConnected()) {
				mMessageManager.queueWrite(PhoneMessageHandler.TYPE,
						PhoneMessageHandler.STATE_DEVICE_SMS_REJECT);
			}
			break;

		default:
			break;
		}
	}

	public String callNumber() {
		return callNumber;
	}

	public void writeLogin() {
		mMessageManager.queueWrite(SecurityMessageHandler.TYPE,
				SecurityMessageHandler.STATE_PHONE_USER_LOGIN);
	}

	/** 设置闹钟 */
	public void setAlarm() {
		Log.i(TAG, "设置闹钟 ------>" + isConnected());
		if (isConnected()) {
			mMessageManager.queueWrite(SettingMessage.TYPE,
					SettingMessage.STATE_DEVICE_SET_ALARM);
		}
	}

	public void getAlarm() {
		Log.i(TAG, "获取闹钟...");

		if (isConnected()) {
			mMessageManager.queueWrite(SettingMessage.TYPE,
					SettingMessage.STATE_DEVICE_GET_ALARM);
		}
	}

	/** 设置用户信息 */
	public void setUserDate() {
		Log.i(TAG, "设置用户信息 ------>" + isConnected());
		if (isConnected()) {
			mMessageManager.queueWrite(SettingMessage.TYPE,
					SettingMessage.USER_SET);
		}
	}

	/** 久坐提醒设置 */
	public void setLongSit() {
		Log.i(TAG, "久坐提醒设置 ------>" + isConnected());
		if (isConnected()) {
			mMessageManager.queueWrite(SettingMessage.TYPE,
					SettingMessage.LONG_SIT);
		}
	}

	/** 计步目标设置WALK */
	public void setWalk() {
		Log.i(TAG, "计步目标设置 ------>" + isConnected());
		if (isConnected()) {
			mMessageManager.queueWrite(SettingMessage.TYPE,
					SettingMessage.STATE_DEVICE_WALK);
		}
	}

	/** 出厂设置 */
	public void setFactorySettings() {
		Log.i(TAG, "出厂设置 ------>" + isConnected());
		if (isConnected()) {
			mMessageManager.queueWrite(SettingMessage.TYPE,
					SettingMessage.FactorySettings);
		}
	}

	/** 防丢设置 */
	public void setLost() {
		Log.i(TAG, "出厂设置 ------>" + isConnected());
		if (isConnected()) {
			mMessageManager.queueWrite(SettingMessage.TYPE,
					SettingMessage.STATE_DEVICE_LOST);
		}
	}

	/** 请求历史数据节点设置 */
	public void setRecord(int cmd) {
		Log.i(TAG, "请求历史数据节点 ------>" + cmd);
		if (isConnected()) {
			switch (cmd) {
			case 0x32: // 请求挪动历史运动数据指针(*)
				mMessageManager.queueWrite(SportsMessageHandler.TYPE,
						SportsMessageHandler.STATE_DEVICE_RUN_RECORD);
				break;
			case 0x39: // 请求挪动历史睡眠数据指针(*)
				mMessageManager.queueWrite(SportsMessageHandler.TYPE,
						SportsMessageHandler.STATE_DEVICE_SLEEP_RECORD);
				break;
			case 0x3C: // 请求挪动历史位置动作数据(*)

				break;
			case 0x49: // 请求挪动历史心率数据指针(*)
				mMessageManager.queueWrite(HealthMessageHandler.TYPE,
						HealthMessageHandler.STATE_DEVICE_HEART_RECORD);
				break;
			case 0x4A: // 请求挪动历史体温数据指针(*)
				mMessageManager.queueWrite(HealthMessageHandler.TYPE,
						HealthMessageHandler.STATE_DEVICE_TEMP_RECORD);
				break;

			default:
				break;
			}

		}
	}

	/** 请求获得设备特性 */
	public void setGN() {
		Log.i(TAG, "请求获得设备特性 ------>" + isConnected());
		if (isConnected()) {
			mMessageManager.queueWrite(SecurityMessageHandler.TYPE,
					SecurityMessageHandler.STATE_DEVICE_GONGNENG);
		}
	}

	public void getGN(int a, int b, int c, int d, int e, int f) {
		jsonGN = new JSONObject();
		try {
			jsonGN.put("oxygen", a);
			jsonGN.put("blood", b);
			jsonGN.put("temperature", c);
			jsonGN.put("heart", d);
			jsonGN.put("sleep", e);
			jsonGN.put("step", f);
			sendGN(jsonGN);
		} catch (JSONException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
	}

	public void sendGN(JSONObject json) {
	}

	/**
	 * 设置时间
	 * */

	public void setTime() {
		// timeCallbackContext = callbackContext;
		Log.i(TAG, "设置时间------->" + isConnected());
		if (isConnected()) {
			mMessageManager.queueWrite(SettingMessage.TYPE,
					SettingMessage.STATE_DEVICE_SET_TIME);
		}
	}

	public void sendTimeRsult() {
	}

	/**
	 * 实时数据请求 Real time data request
	 * **/
	public void realTimeRequest(String cmdTyp) {
		if (isConnected()) {
			switch (cmdTyp) {
			case "cmdStep":
				mMessageManager.queueWrite(SportsMessageHandler.TYPE,
						SportsMessageHandler.STATE_PHONE_RUN_DATE);
				break;
			case "cmdHeart":
				mMessageManager.queueWrite(HealthMessageHandler.TYPE,
						HealthMessageHandler.STATE_PHONE_RATE);
				break;
			case "cmdTemperature":
				mMessageManager.queueWrite(HealthMessageHandler.TYPE,
						HealthMessageHandler.STATE_PHONE_TEMP);

				break;
			case "cmdSleep":
				mMessageManager.queueWrite(SportsMessageHandler.TYPE,
						SportsMessageHandler.STATE_DEVICE_SLEEP_DATA);
				break;
			case "cmdAtmospheric":
				pressure_endCmd(0x01);
				break;
      case "cmdOxygen":
//        mMessageManager.queueWrite(BreatheMessageHandler.TYPEED,
//          BreatheMessageHandler.RAW_RAT);
        mMessageManager.queueWrite(HealthMessageHandler.TYPE,
          HealthMessageHandler.STATE_ALL_HEALTH_DATA);


        break;
        case "connectStatusdyk":
          if(!connected){

          }
          break;

			default:
				break;
			}
		} else {

		}

	}
  public void setOxygen() {
  }
  //血氧 数据保存
  public void setdata(int oxygen,int breathe, String  blood_presses){
    moxygen =oxygen;
    mbreathe =breathe;
    mblood_presses =blood_presses;

  }
	/**
	 * 实时步数
	 * */

	public void sleepData(JSONObject json) {
		Log.i(TAG, "最近总睡眠------->json");
	}

	/**
	 * 实时步数
	 * */
	SportsMessageHandler mSportsMessageHandler;

	public void sportData(JSONObject json) {
		Log.i(TAG, "实时步数1------->");
	}



	public void heartData(JSONObject json) {


	}

	/**
	 * 实时体温
	 * */

	public void temperatureData(JSONObject json) {
		Log.i(TAG, "实时体温1------->");

	}
    /**
     * 实时气压
     * */
	public void aTData(JSONObject json) {
		Log.i(TAG, "实时气压1------->");

	}

	/**
	 * 历史步数getStepEd
	 * */
	/**
	 * 数据是否已经发送结束 false 结束
	 * */

	public void stepSend(JSONObject json) {
		step_count = 0;
		get_dis = 0;
	}

	/** 发送历史步数数据给前端 */
	public void stepEdData(int[] st, long[] y, boolean isSend) {
		isStepSends = isSend;
		for (int tt = 0; tt < st.length; tt++) {
			if (y[tt] != 0) {
				stepArrayList.add(st[tt]);
				timeArrayList.add(y[tt]);
			} else {
				break;
			}
		}
		if (isStepSends) {

		} else {

		}

	}

	public void heartEdData(int[] st, long[] y, boolean isSend) {
		isHeartSends = isSend;
		for (int tt = 0; tt < st.length; tt++) {
			if (y[tt] != 0) {
				heartArrayList.add(st[tt]);
				heartTimeArrayList.add(y[tt]);
			}
		}
		if (isHeartSends) {

		} else {
		}

	}

	public void temperatureEdData(int[] st, long[] y, boolean isSend) {
		isTemperatureSends = isSend;
		for (int tt = 0; tt < st.length; tt++) {
			if (y[tt] != 0) {
				temperatureArrayList.add(st[tt]);
				temperatureTimeArrayList.add(y[tt]);
			}
		}
		if (isTemperatureSends) {
		} else {
		}
	}

	public void sleepEdData(int[] st, long[] y, boolean isSend) {
		isSleepSends1 = isSend;
		for (int tt = 0; tt < st.length; tt++) {
			if (y[tt] != 0) {
				sleepArrayList.add(st[tt]);
				sleepTimeArrayList.add(y[tt]);
			}
		}
		if (isSleepSends1) {
		} else {
		}
	}

  public JSONObject getJson(int oxygen,int breath,String bloodpress){
    JSONObject  jsonObject = new JSONObject();
    try {
      jsonObject.put("blood_oxygen", oxygen);
      jsonObject.put("breathe", breath);
      jsonObject.put("blood_pressure", bloodpress);
    } catch (JSONException e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    }
    return jsonObject;
  }


	public void set_dis(int i) {
		get_dis = i;
	}

	/**
	 * 连接正常的情况下，请求历史数据中途断开
	 * */


	public void send_dis(final int stats) {
		Log.i(TAG, "----->>>>判断连接正常的情况下中途数据是否断掉 ");
		if (send_dis_timer != null) {
			send_dis_timer.cancel();
		}
		send_dis_timer = new Timer();
		send_dis_timer.schedule(new TimerTask() {
			@Override
			public void run() {
				if (get_dis != step_count) {
					Log.i(TAG, "----->>>>连接正常的情况下中途数据断了" + "接收次数---" + get_dis
							+ " ，发送次数---" + step_count + " stats--" + stats);
					int i[] = { 0 };
					long b[] = { 0 };
					switch (stats) {
					case 1:
						stepEdData(i, b, false);
						break;
					case 2:
						heartEdData(i, b, false);
						break;
					case 3:
						temperatureEdData(i, b, false);
						break;
					case 4:
						sleepEdData(i, b, false);
						break;
          case 5:
            sleepEdData(i, b, false);
            break;
					}
					is_send = false;
					isStepSends = false;
					isTemperatureSends = false;
					isHeartSends = false;
					isSleepSends1 = false;
					if (send_dis_timer != null) {
						send_dis_timer.cancel();
					}
				}
			}
		}, 80 * 1000);
	}

	/**
	 * 历史数据 是否再次发送请求命令
	 * */


	public int getCount() {
		return this.step_count;
	}

	// 进度条json数据
	public JSONObject getProgressJson(int progress) {
		JSONObject json = new JSONObject();
		try {
			json.put("progress", progress);
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return json;
	}

	/**
	 * 发送结束实时数据
	 */
	public void step_endCmd() {

		final byte[] step_endCmd = { 0x20, 0x31, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
				0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
				0x00 };
		final byte[] heart_endCmd = { 0x20, 0x41, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
				0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
				0x00 };
//		final byte[] temp_endCmd = { 0x20, 0x44, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
//				0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
//				0x00 };
		final byte[] pressure_endCmd = { 0x20, 0x37, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
				0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
				0x00 };
		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				try {
//					if(Build.VERSION.SDK_INT < 24){
//
//					}else {
//
//					}
					Thread.sleep(2000);
					queueWrite(NOTIFY_SERVICE_UUID, NOTIFY_CHARACTERISTIC_UUID, step_endCmd,
							BluetoothGattCharacteristic.WRITE_TYPE_DEFAULT);
					Thread.sleep(4500);
					queueWrite(NOTIFY_SERVICE_UUID, NOTIFY_CHARACTERISTIC_UUID, heart_endCmd,
							BluetoothGattCharacteristic.WRITE_TYPE_DEFAULT);
//					Thread.sleep(7000);
//					queueWrite(NOTIFY_SERVICE_UUID, NOTIFY_CHARACTERISTIC_UUID, temp_endCmd,
//							BluetoothGattCharacteristic.WRITE_TYPE_DEFAULT);
//					Thread.sleep(7000);
//					queueWrite(NOTIFY_SERVICE_UUID, NOTIFY_CHARACTERISTIC_UUID, pressure_endCmd,
//							BluetoothGattCharacteristic.WRITE_TYPE_DEFAULT);
				} catch (InterruptedException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}).start();

	}

	/**
	 * 实时气压
	 * @param data
	 */
	public void pressure_endCmd(int data){
		final byte[] pressure_endCmd = { 0x20, 0x37, 0x00, 0x00, (byte) data, 0x00, 0x00, 0x00, 0x00,
				0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
				0x00 };
		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				try {
					Thread.sleep(600);
					queueWrite(NOTIFY_SERVICE_UUID, NOTIFY_CHARACTERISTIC_UUID, pressure_endCmd,
							BluetoothGattCharacteristic.WRITE_TYPE_DEFAULT);
				} catch (InterruptedException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}).start();
	}
    /**
     * 写入命令
     * @param length
     * @param cmd
     * @param data
     */
	public void writeCmd(int length,int cmd,byte[] data ){
		int v = 1;
		int t = 0;
		byte[] value = new byte[20];
		value[0] = (byte) ((v << 5) | ((length - 1) << 1) | t);
		value[1] = (byte) (cmd & 0xFF);
		value[2] = (byte) (0);
		value[3] = (byte) (0);
		System.arraycopy(data, 0, value, 4, data.length);
		queueWrite(NOTIFY_SERVICE_UUID, NOTIFY_CHARACTERISTIC_UUID, value,
				BluetoothGattCharacteristic.WRITE_TYPE_DEFAULT);
	}

	public void sen_step(boolean isSend) {
		if (is_send) {
			if (isConnected()) {
				new Thread() {
					public void run() {
						try {
							Thread.sleep(minScends);
							step_count++;
							Log.i(TAG, "请求历史步数次数----->" + step_count);
							write(SportsMessageHandler.TYPE,
									SportsMessageHandler.STATE_PHONE_SYNC);
						} catch (InterruptedException e) {
						}
					}
				}.start();
			} else { // 请求失败
			}
		}
		is_send = isSend;
		send_progress(step_count);
	}

	public void sen_heart(boolean isSend) {
		if (is_send) {
			if (isConnected()) {
				// write(SportsMessageHandler.TYPE,
				// SportsMessageHandler.STATE_PHONE_SYNC);
				new Thread() {
					public void run() {
						try {
							Thread.sleep(minScends);
							step_count++;
							Log.i(TAG, "请求历史心率次数----->" + step_count);
							write(HealthMessageHandler.TYPE,
									HealthMessageHandler.STATE_PHONE_SYNC);
						} catch (InterruptedException e) {
						}
					}
				}.start();
			} else { // 请求失败
			}
		}
		is_send = isSend;
		send_progress(step_count);
	}

	public void sen_temp(boolean isSend) {
		if (is_send) {
			if (isConnected()) {
				new Thread() {
					public void run() {
						try {
							Thread.sleep(minScends);
							step_count++;
							Log.i(TAG, "请求历史温度次数----->" + step_count);
							write(HealthMessageHandler.TYPE,
									HealthMessageHandler.STATE_DEVICE_TEMP_SYNC);
						} catch (InterruptedException e) {
						}
					}
				}.start();
			} else { // 请求失败
			}
		}
		is_send = isSend;
		send_progress(step_count);
	}


	// 发送进度条
	public void send_progress(int count) {
	}

	public void setStepEd() {
		isStepSends = true;
		is_send = true;
		step_count = 0;
		send_dis( 1);
		step_endCmd();
		new Thread() {
			public void run() {
				try {
					Thread.sleep(10000);
					sen_step(true);
				} catch (InterruptedException e) {
				}
			}
		}.start();
	}

	public void setHeartEd() {
		isHeartSends = true;
		is_send = true;
		step_count = 0;
		send_dis( 2);
		step_endCmd();
		new Thread() {
			public void run() {
				try {
					Thread.sleep(10000);
					sen_heart(true);
				} catch (InterruptedException e) {
				}
			}
		}.start();

	}

	public void setTemperatureEd() {
		isTemperatureSends = true;
		is_send = true;
		step_count = 0;

		send_dis(3);
		step_endCmd();
		new Thread() {
			public void run() {
				try {
					Thread.sleep(10000);
					sen_temp(true);
				} catch (InterruptedException e) {
				}
			}
		}.start();
	}


	public void setSleepEd() {
		isSleepSends1 = true;
		is_send = true;
		step_count = 0;
		send_dis(4);
		step_endCmd();
		new Thread() {
			public void run() {
				try {
					Thread.sleep(10000);
					sen_sleep(true);
				} catch (InterruptedException e) {
				}
			}
		}.start();
	}

	public void sen_sleep(boolean b) {
		if (is_send) {
			if (isConnected()) {
				new Thread() {
					public void run() {
						try {
							Thread.sleep(minScends);
							step_count++;
							Log.i(TAG, "请求历史睡眠次数----->" + step_count);
							write(SportsMessageHandler.TYPE,
									SportsMessageHandler.STATE_DEVICE_SLEEP_SETTING);
						} catch (InterruptedException e) {
						}
					}
				}.start();
			} else { // 请求失败
			}
		}
		is_send = b;
		send_progress(step_count);
	}

	/***
	 *
	 * @param serviceUUID
	 * @param characteristicUUID
	 */

	public void queueRead( UUID serviceUUID,
			UUID characteristicUUID) {
		BLECommand command = new BLECommand(serviceUUID, characteristicUUID,
				BLECommand.READ);
		queueCommand(command);
	}

	public void queueWrite(UUID serviceUUID, UUID characteristicUUID,
			byte[] data, int writeType) {
		BLECommand command = new BLECommand(serviceUUID, characteristicUUID,
				data, writeType);
		queueCommand(command);
	}

	public void queueRegisterNotifyCallback(UUID serviceUUID,
			UUID characteristicUUID) {
		BLECommand command = new BLECommand(serviceUUID, characteristicUUID,
				BLECommand.REGISTER_NOTIFY);
		queueCommand(command);
	}

	public void queueRemoveNotifyCallback(
			UUID serviceUUID, UUID characteristicUUID) {
		BLECommand command = new BLECommand(serviceUUID, characteristicUUID,
				BLECommand.REMOVE_NOTIFY);
		queueCommand(command);
	}

	public void queueReadRSSI() {
		BLECommand command = new BLECommand(null, null, BLECommand.READ_RSSI);
		queueCommand(command);
	}

	private void queueCommand(BLECommand command) {
		Log.d(TAG, "Queuing Command " + command);
		mCommandQueue.add(command);
		// mCommandQueue.processCommands();
	}

	@Override
	public boolean equals(Object o) {
		if (o == null)
			return false;
		if (o instanceof Peripheral) {
			Peripheral peripheral = (Peripheral) o;
			if (peripheral.getDevice().getAddress().equals(mDevice.getAddress()))
				return true;
			else
				return false;
		} else
			return false;
	}

	private String generateHashKey(BluetoothGattCharacteristic characteristic) {
		return generateHashKey(characteristic.getService().getUuid(),
				characteristic);
	}

	private String generateHashKey(UUID serviceUUID,
			BluetoothGattCharacteristic characteristic) {
		return String.valueOf(serviceUUID) + "|" + characteristic.getUuid()
				+ "|" + characteristic.getInstanceId();
	}

	/**
	 * 防丢设置
	 *
	 * @param lost
	 */
	public void setLost(int lost) {
//		振动次数  报警等级
		int index = 4;
		int data = (index<<2)|lost;
		System.out.println(" 防丢设置:"+data);
		int t = (1<<5)|(3<<1);
		if (!isConnected()) {
			return;
		}
			byte[] a = { (byte) t, 0x06, 0x00, 0x00, (byte) data, 0x00, 0x00, 0x00, 0x00,
					0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
					0x00 };
			queueWrite(NOTIFY_SERVICE_UUID, NOTIFY_CHARACTERISTIC_UUID, a,
					BluetoothGattCharacteristic.WRITE_TYPE_DEFAULT);
	}

}
