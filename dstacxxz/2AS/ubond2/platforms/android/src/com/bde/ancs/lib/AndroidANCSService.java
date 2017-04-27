package com.bde.ancs.lib;
import android.app.Service;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;
import android.bluetooth.BluetoothGattServer;
import android.bluetooth.BluetoothGattServerCallback;
import android.bluetooth.BluetoothGattService;
import android.bluetooth.BluetoothManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.XmlResourceParser;
import android.database.Cursor;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.provider.ContactsContract;
import android.telephony.PhoneNumberUtils;
import android.telephony.SmsMessage;
import android.telephony.TelephonyManager;
import android.util.Log;

import com.common.utils.L;
import com.ionicframework.uband22016.R;

import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.util.ByteArrayBuffer;
import org.xmlpull.v1.XmlPullParserException;

import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Set;
import java.util.UUID;

//import android.service.notification.StatusBarNotification;

public class AndroidANCSService/* extends Service */{

	private final static String TAG = "AndroidANCSService";
	public UUID ANCS_SERVICE = UUID
			.fromString("7905F431-B5CE-4E99-A40F-4B1E122D00D0");
	public UUID ANCS_NOTIFICATION_SOURCE = UUID
			.fromString("9FBF120D-6301-42D9-8C58-25E699A21DBD");
	public UUID ANCS_CONTROL_POINT = UUID
			.fromString("69D1D8F3-45E1-49A8-9821-9BBDFDAAD9D9"); // ANCS控制CharacteristicUUid
	public UUID ANCS_DATA_SOURCE = UUID
			.fromString("22EAC6E9-24D6-4BB5-BE44-B36ACE7C7BFB"); // ANCS发送具体信息数据UUid
	public UUID CCC = UUID.fromString("00002902-0000-1000-8000-00805f9b34fb");

	public UUID BATTERY_SERVICE = UUID
			.fromString("0000180f-0000-1000-8000-00805f9b34fb"); // 电池的服务
	public UUID BATTERY_LEVEL = UUID
			.fromString("00002a19-0000-1000-8000-00805f9b34fb"); // 电池级别

	public static final int CONNECTED = 0; // 连接
	public static final int DISCONNECTED = 1; // 断开连接
	public static final int NOTIFICATION_ENABLED = 2; // 启用通知
	// private ArrayList<StatusBarNotification> notifications = new
	// ArrayList<StatusBarNotification>();
	private ArrayList<ANCSNotification> notifications = new ArrayList<ANCSNotification>();
	private Context mContext;
	private BluetoothGattServer mGattServer;
	// private ArrayList<BluetoothGattCharacteristic> mCharacteristics = new
	// ArrayList<BluetoothGattCharacteristic>();
	private BluetoothAdapter mBluetoothAdapter;
	private BluetoothDevice mDevice;
	private BroadcastReceiver mReceiver ;
	private BroadcastReceiver mPhoneStateReceiver; // 电话状态接收器
  private int qqpush =1;
  private int chat =1;

  public void setqqpush(int qq){
    qqpush =qq;
    Log.i(TAG,"qqpush: "+qqpush);
  }
  public void setchat(int qq){
    chat =qq;
    Log.i(TAG,"chat: "+chat);
  }
	/**
	 * 发送本地特性已更新的通知或指示。 向远程设备发送通知或指示以用信号通知特性已经被更新。
	 * 应通过写入给定特性的“客户端配置”描述符来为请求通知/指示的每个客户端调用此函数。
	 *
	 * @param device
	 *            * device远程设备接收通知/指示
	 * @param characteristic
	 *            特性已更新的本地特性
	 * @param value
	 * @param confirm
	 *            确认true以请求来自客户端的确认（指示），false以发送通知
	 * @return
	 * @throws IOException
	 */
	public boolean gattServerNotifyCharacteristicChanged(
			BluetoothDevice device, BluetoothGattCharacteristic characteristic,
			byte[] value, boolean confirm) throws IOException {
		// byte []value = characteristic.getValue();
		if (mGattServer == null || value == null) {
			return false;
		}
		int sended = 0;

		ByteArrayEntity bae = new ByteArrayEntity(value);
		InputStream in = bae.getContent();

		while (sended < value.length) {
			byte[] dataPerTime;
			if (value.length - sended > 20) {
				dataPerTime = new byte[20];
			} else {
				dataPerTime = new byte[(value.length - sended)+1];
			}
			in.read(dataPerTime);
			L.i(TAG, "NotifyCharacteristicChanged="+Arrays.toString(dataPerTime));
			characteristic.setValue(dataPerTime);

			// 发送本地特性已更新的通知或指示。
			// 向远程设备发送通知或指示以用信号通知特性已经被更新。
			// 应通过写入给定特性的“客户端配置”描述符来为请求通知/指示的每个客户端调用此函数。
			if (!(mGattServer.notifyCharacteristicChanged(device,
					characteristic, confirm))) {
				System.out.println("notifyCharacteristicChanged is failed...");
				return false;
			}
			sended += dataPerTime.length;
		}
		return true;
	}

	public boolean addNotificationToArray(ANCSNotification sbn) {
		if (sbn.getPostTime() == MISSING_CALL_POST_TIME) {
			int i = 0;
			i++;
		}
		if (notifications.size() > 0
				&& notifications.get(notifications.size() - 1).getPostTime() == INCOMMING_CALL_POST_TIME) {
			// 当前只能有一个incomming call notification
			System.out.println("add failed");
			return false;
		}
		return notifications.add(sbn);
	}

	public boolean removeNotificationFromArray(ANCSNotification sbn) {
		if (!notifications.remove(sbn)) {
			ANCSNotification ANCSNotificationToDelete = null;
			for (ANCSNotification noti : notifications) {
				if (noti.getPostTime() == sbn.getPostTime()) {
					ANCSNotificationToDelete = noti;
				}
			}
			if (ANCSNotificationToDelete != null) {
				return notifications.remove(ANCSNotificationToDelete);
			}
		}
		return true;
	}

	public static int statusOk = 0x0000;
	public static int statusNotOk = 0x0006;
	private BluetoothGattServerCallback mServerCallback = new BluetoothGattServerCallback() {

		private BluetoothGattCharacteristic getGattServerCharacteristicFromCharacteristic(
				BluetoothGattCharacteristic characteristic) {
			UUID serviceUuid = characteristic.getService().getUuid();
			UUID characUuid = characteristic.getUuid();
			BluetoothGattService service = mGattServer.getService(serviceUuid);
			if (service == null) {
				System.out
						.println("Service is null...so characteristic write failed");
				return null;
			}
			BluetoothGattCharacteristic charac = service
					.getCharacteristic(characUuid);
			return charac;
		}

		private BluetoothGattDescriptor getGattServerDescriptorFromDescriptor(
				BluetoothGattDescriptor descriptor) {
			UUID serviceUuid = descriptor.getCharacteristic().getService()
					.getUuid();
			UUID characUuid = descriptor.getCharacteristic().getUuid();
			UUID descriptorUuid = descriptor.getUuid();
			BluetoothGattService service = mGattServer.getService(serviceUuid);
			if (service == null) {
				System.out
						.println("Service is null...so characteristic write failed");
				return null;
			}
			BluetoothGattCharacteristic charac = service
					.getCharacteristic(characUuid);
			if (charac == null) {
				System.out
						.println("Characteristic is null...so characteristic write failed");
				return null;
			}
			BluetoothGattDescriptor desc = charac.getDescriptor(descriptorUuid);
			return desc;
		}


		@Override
		public void onCharacteristicReadRequest(BluetoothDevice device,
				int requestId, int offset,
				BluetoothGattCharacteristic characteristic) {
			System.out.println("onCharacteristicReadRequest"
					+ characteristic.getUuid());
			L.i("onCharacteristicReadRequest", "onCharacteristicRead = "
					+ characteristic.getUuid());
			L.i("onCharacteristicReadRequest", " requestId =" + requestId
					+ ",offset=" + offset);
			L.i("onCharacteristicReadRequest",
					"value =" + Arrays.toString(characteristic.getValue()));
			BluetoothGattCharacteristic charac = getGattServerCharacteristicFromCharacteristic(characteristic);
			if (charac == null || offset != 0) {
				mGattServer.sendResponse(device, requestId, statusNotOk,
						offset, null);
				return;
			}
			mGattServer.sendResponse(device, requestId, statusOk, offset,
					charac.getValue());
		}
    //手环返回数据 他是否需要通知,当前版本默认我们都是确定手环是需要这个通知的
		@Override
		public void onCharacteristicWriteRequest(BluetoothDevice device,
				int requestId, BluetoothGattCharacteristic characteristic,
				boolean preparedWrite, boolean responseNeeded, int offset,
				byte[] value) {
			System.out.println("onCharacteristicWriteRequest");
			BluetoothGattCharacteristic charac = getGattServerCharacteristicFromCharacteristic(characteristic);
			L.i("onCharacteristicWrite", "设备请求的UUid = " + charac.getUuid());
			L.i("onCharacteristicWrite", " preparedWrite =" + preparedWrite
					+ ",responseNeeded =" + responseNeeded + ",offset="
					+ offset);
			L.i("onCharacteristicWrite", "value =" + Arrays.toString(value));

			int status = statusNotOk;
			if (charac != null && offset == 0) {
				charac.setValue(value);
				status = statusOk;
			}
			if (responseNeeded) {
				System.out.println("sendResponse...");
				mGattServer.sendResponse(mDevice, requestId, status, offset,
						value);
			}
			System.out.println("status == statusOk ? " + (status == statusOk));
			System.out
					.println("characteristic.getUuid().equals(ANCS_CONTROL_POINT) ? "
							+ (characteristic.getUuid()
									.equals(ANCS_CONTROL_POINT)));
			if (status == statusOk
					&& characteristic.getUuid().equals(ANCS_CONTROL_POINT)) {
				System.out.println("Control point");
				Message msg = Message.obtain(mHandler);
				msg.what = EVENT_CONTROL_POINT;
				msg.obj = value;
				msg.sendToTarget();
				System.out.println("control point value is "
						+ Arrays.toString(value));
			}
		}

		@Override
		public void onConnectionStateChange(BluetoothDevice device, int status,
				int newState) {
			// TODO Auto-generated method stub
			System.out.println("onConnectionStateChange"+ status);
			if (newState == BluetoothGatt.STATE_CONNECTED) {
				System.out.println("connected...");
//				Message msg = Message.obtain(mActivityHandler, CONNECTED);
				mDevice = device;
				System.out.println("mDevice is " + mDevice);
				isConnected = true;
//				msg.sendToTarget();

			} else if (newState == BluetoothGatt.STATE_DISCONNECTED) {
				mDevice = null;
//				Message msg = Message.obtain(mActivityHandler, DISCONNECTED);

				System.out.println("disconnected...");
				System.out.println("mDevice is null");
				isConnected = false;
//				msg.sendToTarget();
			}
		}

		@Override
		public void onDescriptorReadRequest(BluetoothDevice device,
				int requestId, int offset, BluetoothGattDescriptor descriptor) {
			// TODO Auto-generated method stub
			System.out.println("onDescriptorReadRequest ..."
					+ descriptor.getUuid());
			System.out.println("requestId = " + requestId + ",offset ="
					+ offset);
			System.out.println("descriptor getValue= " + descriptor.getValue());
			BluetoothGattDescriptor desc = getGattServerDescriptorFromDescriptor(descriptor);
			if (desc == null || offset != 0) {
				// status = statusNotOk;
				mGattServer.sendResponse(mDevice, requestId, statusNotOk,
						offset, null);
				return;
			}
			mGattServer.sendResponse(mDevice, requestId, statusOk, offset,
					desc.getValue());
		}

		@Override
		public void onDescriptorWriteRequest(BluetoothDevice device,
				int requestId, BluetoothGattDescriptor descriptor,
				boolean preparedWrite, boolean responseNeeded, int offset,
				byte[] value) {
			System.out.println("onDescriptorWriteRequest....."
					+ "preparedWrite =" + preparedWrite + ",responseNeeded ="
					+ responseNeeded);
			System.out.println("onDescriptorWriteRequest....." + "offset ="
					+ offset + ",value =" + Arrays.toString(value));
			BluetoothGattDescriptor desc = getGattServerDescriptorFromDescriptor(descriptor);

			int status = statusOk;
			if (desc == null || offset != 0) {
				System.out.println("descriptor is null");
				status = statusNotOk;
			} else {
				desc.setValue(value);
//				Message msg = Message.obtain(mActivityHandler,
//						NOTIFICATION_ENABLED);
//				msg.sendToTarget();
				System.out.println("descriptor value is ");
			}
			if (responseNeeded/* && isWritten */) {
				System.out.println("sending Response");
				mGattServer.sendResponse(mDevice, requestId, status, offset,
						value);
			}
		}

		@Override
		public void onExecuteWrite(BluetoothDevice device, int requestId,
				boolean execute) {
			System.out.println("onExecuteWrite:" + requestId);
		}

		@Override
		public void onServiceAdded(int status, BluetoothGattService service) {
			System.out.println("onServiceAdded.." + status);
		}

	};

//	private Handler mActivityHandler;

//	public void setHandler(Handler handler) {
//		mActivityHandler = handler;
//	}

	private static AndroidANCSService mService;
	private boolean isConnected = false;

	public static AndroidANCSService getInstance(Context context) {
		if (mService == null) {
			mService = new AndroidANCSService(context);
		}
		return mService;
	}

	public static void reset() {
		mService = null;
	}

	/** 联系人HashMap */
	private HashMap<String, ArrayList<String>> contacts = new HashMap<String, ArrayList<String>>();



	private AndroidANCSService(Context context) {
		mContext = context;
		registerBoradcastReceiver();
		initGattServer();
		generateServer();
		System.out.println("generateAttributeMap...");
		try {
			generateAttributeMap();
		} catch (XmlPullParserException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		System.out.println("android.os.Build.MODEL is "
				+ android.os.Build.MODEL);
		getAllContacts();
	}

	public void close() {
		unregisterBoradcastReceiver();
		notifications.clear();
		System.out.println("disconnect");
		if (mDevice != null && mGattServer != null) {
			mGattServer.cancelConnection(mDevice);
			System.out.println("disconnect mDevice");
		}
		if (mGattServer != null) {
			mGattServer.clearServices();
			mGattServer.close();
			mGattServer = null;
			System.out.println("close mGattServer");
		}
		if (mService != null) {
			mService = null;
		}
	}

	private HashMap<String, Attribute> mAttributes;
	private final static int EVENT_CONTROL_POINT = 1; // 事件控制点
	private final static int EVENT_NOTIFICATION_RECEIVED = 2; // 收到通知事件
	private final static int EVENT_BATTERY_NOTIFICATION_RECEIVED = 3; // 接收电池通知事件
	public final static int INCOMMING_CALL_POST_TIME = 1000; // 呼入后时间
	public final static int MISSING_CALL_POST_TIME = 10000; // 未接来电时间
	// 处理DataSource的事情
	private Handler mHandler = new Handler() {

		@Override
		public void handleMessage(Message msg) {
			switch (msg.what) {
        //把手环发的数据解析出来,根本、据请求发送数据给手环
			case EVENT_CONTROL_POINT: // 控制特性
				System.out.println("Get command from control point...");
				if (mGattServer == null) {
					return;
				}
				byte[] value;
				try {
					value = doCommand((byte[]) msg.obj);//解析
					BluetoothGattCharacteristic charac = mGattServer
							.getService(ANCS_SERVICE).getCharacteristic(
									ANCS_DATA_SOURCE);
					if (charac == null) {
						System.out
								.println("charc is null,it't not send notification to device");
						return;
					}
					try {
						if (!gattServerNotifyCharacteristicChanged(mDevice,
								charac, value, false)) {
							System.out.println("notify failed...");
						}
					} catch (IOException e) {
						e.printStackTrace();
					}
				} catch (NameNotFoundException e) {
					e.printStackTrace();
				}
				break;
			case EVENT_NOTIFICATION_RECEIVED:

				System.out.println("Got Notification");
				if (mService == null || mDevice == null) {
					return;
				}
				Bundle data = msg.getData();
				ANCSNotification sbn = new ANCSNotification();
				// sbn.setNotification((Notification)
				// data.getParcelable(ANCSNotification.NOTIFICATION));
				sbn.setTitle(data.getString(ANCSNotification.TITLE));
				sbn.setText(data.getString(ANCSNotification.TEXT));
				sbn.setPackageName(data
						.getString(ANCSNotification.PACKAGE_NAME));
				sbn.setPostTime(data.getLong(ANCSNotification.POST_TIME));
				if (!mAttributes.containsKey(sbn.getPackageName())) {
					// 过滤其他不支持的应用通知
					System.out.println("Notificaiton From Not Supported App");
					return;
				}
				System.out.println("发送的通知信息："+ sbn.toString());
				if (msg.arg1 == 1&& (System.currentTimeMillis() - lastNotificationTime) > 500) {
					if (sbn.getPackageName()
							.equals("com.google.android.dialer")) {
						sbn.setPostTime(INCOMMING_CALL_POST_TIME);
					}
					dialerNotiTimes = 0;
					lastNotificationTime = System.currentTimeMillis();
					System.out.println("adding sbn to array...");
					if (addNotificationToArray(sbn)) {
						System.out.println("sending add notification");
						sendAddNotification(sbn);
					} else {
						System.out.println("add failed");
					}
				} else if (msg.arg1 == 2) {
					System.out.println("removing sbn to array...");

					if (sbn.getPackageName()
							.equals("com.google.android.dialer")) {
						sbn.setPostTime(INCOMMING_CALL_POST_TIME);
					}
					if (removeNotificationFromArray(sbn)) {
						System.out.println("sending remove notification");
						sendRemoveNotification(sbn);
					}
				}
				break;
			case EVENT_BATTERY_NOTIFICATION_RECEIVED:
				sendBatteryNotification(batteryPercentage);
				break;
			}

		}

	};
	int batteryPercentage = 0;

	/**
	 * 解析xml文件
	 * @throws XmlPullParserException
	 * @throws IOException
	 */
	private void generateAttributeMap() throws XmlPullParserException,
			IOException {
		XmlResourceParser parser = mContext.getResources().getXml(
				R.xml.attribute);
		int eventType = parser.getEventType();
		Attribute attribute = null;
		HashMap<String, Attribute> attributes = null;
		while (/* ( */eventType/* = parser.getEventType()) */!= XmlResourceParser.END_DOCUMENT) {
			switch (eventType) {
			case XmlResourceParser.START_DOCUMENT:

				break;
			case XmlResourceParser.START_TAG:
				String name = parser.getName();
				if (name.equalsIgnoreCase("AttributeSet")) {
					attributes = new HashMap<String, Attribute>();
				} else if (name.equalsIgnoreCase("attribute")) {
					attribute = new Attribute();
					attribute.setName(parser.getAttributeValue(null, "name"));
				} else if (attribute != null) {

					if (name.equalsIgnoreCase("appIdentifier")) {
						attribute.setAppIdentifier(parser.getAttributeValue(
								null, "name"));/*
												 * parser.nextText());//
												 * 如果后面是Text元素,即返回它的值
												 */
					} else if (name.equalsIgnoreCase("categoryID")) {
						attribute.setCategoryID(Integer.valueOf(parser
								.getAttributeValue(null, "name")));
					}
				}
				break;
			case XmlResourceParser.END_TAG:
				if (parser.getName().equalsIgnoreCase("attribute")
						&& attribute != null) {
					String[] names = attribute.getName().split("\\|");
					for (String attributeName : names) {
						Attribute newAttribute = new Attribute(attribute);
						attributes.put(attributeName, newAttribute);
					}
					// attributes.put(attribute.getName(), attribute);
					attribute = null;
					break;
				}
			}
			eventType = parser.next();
		}
		mAttributes = attributes;
	}

	/**
	 * 注册广播
	 */
	private void registerBoradcastReceiver() {
		if(mReceiver ==null){
			mReceiver = new NotificationReceiver();
		}
		if(mPhoneStateReceiver ==null){
			mPhoneStateReceiver = new PhoneStateReceiver();
		}
		IntentFilter intentFilter = new IntentFilter();
		intentFilter.addAction("ANCSAddNotification");
		intentFilter.addAction("ANCSRemoveNotification");
		// intentFilter.addAction(Intent.ACTION_BATTERY_CHANGED);
		// //充电状态，或者电池的电量发生变化广播。

		// 接电话的广播
		// intentFilter.addAction(Intent.ACTION_ANSWER);

		/*
		 * 三星来电的广播 intentFilter.addAction("android.intent.action.WB_AMR");
		 * intentFilter.addAction("android.intent.action.pcmclkctrl"); 三星未接来电的广播
		 * intentFilter
		 * .addAction("android.intent.action.PHONE_EXSTATE_CHANGED");
		 */
		// 注册广播
		intentFilter.addAction(SMS_ACTION);
		mContext.registerReceiver(mReceiver, intentFilter);

		IntentFilter phoneStateFilter = new IntentFilter();
		phoneStateFilter.addAction("android.intent.action.PHONE_STATE");
		mContext.registerReceiver(mPhoneStateReceiver, phoneStateFilter);
	}

	private void unregisterBoradcastReceiver() {
		mContext.unregisterReceiver(mReceiver);
		mContext.unregisterReceiver(mPhoneStateReceiver);
	}

	private BluetoothGattCharacteristic getCharacteristic(UUID serviceUuid,
			UUID characteristicUuid) {
		if (mGattServer != null) {
			return null;
		}

		BluetoothGattService service = mGattServer.getService(serviceUuid);
		if (service == null) {
			System.out.println("service is null");
			return null;
		}
		BluetoothGattCharacteristic charac = service
				.getCharacteristic(characteristicUuid);
		return charac;
	}

	private BluetoothGattDescriptor getDescriptor(UUID serviceUuid,
			UUID characteristicUuid, UUID descriptorUuid) {
		BluetoothGattCharacteristic charac = getCharacteristic(serviceUuid,
				characteristicUuid);
		if (charac == null) {
			return null;
		}
		BluetoothGattDescriptor desc = charac.getDescriptor(descriptorUuid);
		return desc;
	}
    /**
     *  返回通知是否打开
     * @param serviceUuid
     * @param characteristicUuid
     * @return
     */
	private boolean isEnableNotification(UUID serviceUuid,
			UUID characteristicUuid) {
		BluetoothGattDescriptor desc = getDescriptor(serviceUuid,
				characteristicUuid, CCC);
		if (desc == null) {
			return false;
		}
		return byteArrayEquals(desc.getValue(),
				BluetoothGattDescriptor.ENABLE_NOTIFICATION_VALUE);
	}

	public void connect(BluetoothDevice device) {
		if (mGattServer != null && device != null)
			mGattServer.connect(device, false);
	}

	public void disconnect(BluetoothDevice device) {
		if (mGattServer != null && device != null)
			mGattServer.cancelConnection(device);
	}

	public void sendAddNotification(ANCSNotification sbn) {
		System.out.println("generating notification");
		if (mGattServer == null) {
			return;
		}
		byte[] notification = generateNotificaitonSource(sbn, 0, 1 << 1);
		BluetoothGattCharacteristic notificationSource = mGattServer
				.getService(ANCS_SERVICE).getCharacteristic(
						ANCS_NOTIFICATION_SOURCE);
		System.out.println("mDevice is null?" + (mDevice == null)
				+ " and notificationSource is null?"
				+ (notificationSource == null));
		if (mDevice != null
				&& notificationSource != null
				&& notification.length > 0
				&& byteArrayEquals(notificationSource.getDescriptor(CCC)
						.getValue(),
						BluetoothGattDescriptor.ENABLE_NOTIFICATION_VALUE)) {
			System.out.println("notify...to "+mDevice.getAddress());
			notificationSource.setValue(notification);
			System.out.println("notify successful?"
					+ mGattServer.notifyCharacteristicChanged(mDevice,
							notificationSource, false));
		}

	}

	public void sendRemoveNotification(ANCSNotification sbn) {
		System.out.println("generating notification");
		if (mGattServer == null) {
			return;
		}

    //判断QQ消息 微信消息 用户是否需要推送
    Log.i(TAG,"sbn.getPackageName():"+sbn.getPackageName());
    if(sbn.getPackageName().equals("com.tencent.mm")){
      Log.i(TAG,"sbn equals com.tencent.mm");
      if(chat == 0){
        Log.i(TAG,"用户取消微信消息 推送");
        return ;
      }
    }
    if(sbn.getPackageName().equals("com.tencent.mobileqq")){
      Log.i(TAG,"sbn equals com.tencent.mobileqq");
      if(qqpush == 0){
        Log.i(TAG,"用户取消QQ消息 推送");
        return ;
      }
    }
		byte[] notification = generateNotificaitonSource(sbn, 2, 1 << 1);
		BluetoothGattCharacteristic notificationSource = mGattServer
				.getService(ANCS_SERVICE).getCharacteristic(
						ANCS_NOTIFICATION_SOURCE);
		System.out.println("mDevice is null?" + (mDevice == null)
				+ " and notificationSource is null?"
				+ (notificationSource == null));
		if (mDevice != null
				&& notificationSource != null
				&& notification.length > 0
				&& byteArrayEquals(notificationSource.getDescriptor(CCC)
						.getValue(),
						BluetoothGattDescriptor.ENABLE_NOTIFICATION_VALUE)) {
			System.out.println("notify...");
			notificationSource.setValue(notification);
			mGattServer.notifyCharacteristicChanged(mDevice,
					notificationSource, false);
		}

	}

	/**
	 * App收到信息后发送通知包
	 *
	 * EventID：消息类型，添加(0)、修改(1)、删除(2)； EventFlags：消息优先级，静默(1)、重要(2)；
	 * CategoryID：消息类型； CategoryCount：消息计数； NotificationUID：通知 ID，可以通过此 ID 获取详情；
	 *
	 * @return
	 */
	public byte[] generateNotificaitonSource(
			/* ANCSNotification ancsn */ANCSNotification sbn, int eventID,
			int eventFlag) {
		byte[] value = new byte[8];
		value[0] = (byte) eventID;
		value[1] = (byte) eventFlag;
		value[2] = (byte) getCatergory(sbn);
		System.out.println("CategoryID：消息类型："+ value[2] );
		// value[2] = (byte) getCatergory(ancsn);
		value[3] = 1;// Catergory Count
		int notificationUID = (int) sbn.getPostTime();
		for (int i = 4; i < 8; i++) {
			value[i] = (byte) ((notificationUID >> ((i - 4) * 8)) & 0xFF);
		}
		System.out.println("发送通知包 value is=" + Arrays.toString(value));
		return value;
	}

	protected int getCatergory(ANCSNotification sbn) {
		// sbn.getPackageName().contains()
		String packageName = sbn.getPackageName();
		if (packageName.equals("com.ble.ancs.androidancs")) {
			return 1;
			// return 4;
		}
		// System.out.println("categoryIDs" + categoryIDs);
		System.out.println("packageName is" + packageName);
		// Integer i = categoryIDs.get(packageName);
		Attribute attribute = mAttributes.get(packageName);
		if (attribute == null) {
			return 0;
		}
		int i = attribute.getCategoryID();
		return i;
	}

	/**
	 * BluetoothGattServer作为周边来提供数据
	 */
	protected void initGattServer() {
		final BluetoothManager bluetoothManager = (BluetoothManager) mContext
				.getSystemService(Context.BLUETOOTH_SERVICE);
		mBluetoothAdapter = bluetoothManager.getAdapter();
		// 打开一个GATT服务器，回调用于将结果传递给调用者，
		// 如连接状态以及任何其他关贸总协定服务器操作的结果。
		// 该方法返回一个bluetoothgattserver实例。
		// 你可以使用bluetoothgattserver GATT服务器进行操作。
		if (mGattServer == null) {
			mGattServer = bluetoothManager.openGattServer(mContext,
					mServerCallback);
		}
	}

	static int times = 0;

	/**
	 * 服务生成器 这里有个坑，注意：添加服务的时候有时会报空指针，我这里添加了100毫秒的延迟，估计是时效问题；
	 */
	protected void generateServer() {
		System.out.println("add Service time is " + (++times));
		BluetoothGattService ancsService = generateANCSService();
//		BluetoothGattService batteryService = generateBatteryService(); // 电量信息服务
		if (mGattServer != null) {
			System.out.println("add mGattServer");
			mGattServer.addService(ancsService);
//			sleep();
			// ancsService.addService(batteryService);
		}
		Log.d(TAG, "Ready to run " + mGattServer.getServices().size()
				+ " services");

		int characteristicCount = 0;
		for (BluetoothGattService service : mGattServer.getServices()) {
			characteristicCount += service.getCharacteristics().size();
		}
		Log.d(TAG, "Ready to run " + characteristicCount + " charateristics");
	}

	private void sleep() {
		try {
			Thread.sleep(100);
		} catch (Exception e) {
		}
	}

	protected BluetoothGattService generateANCSService() {
		// 服务的UUid, 服务类型： 主服务或次服务
		BluetoothGattService service = new BluetoothGattService(ANCS_SERVICE,
				BluetoothGattService.SERVICE_TYPE_PRIMARY);

		BluetoothGattDescriptor notificationCCC = new BluetoothGattDescriptor(
				CCC, BluetoothGattDescriptor.PERMISSION_READ
						| BluetoothGattDescriptor.PERMISSION_WRITE);
		notificationCCC.setValue(new byte[] { 0x01, 0x00 });
		BluetoothGattDescriptor dataSourceCCC = new BluetoothGattDescriptor(
				CCC, BluetoothGattDescriptor.PERMISSION_READ
						| BluetoothGattDescriptor.PERMISSION_WRITE);
		notificationCCC.setValue(new byte[] { 0x01, 0x00 });

		BluetoothGattCharacteristic notificationSource = new BluetoothGattCharacteristic(
				ANCS_NOTIFICATION_SOURCE,
				BluetoothGattCharacteristic.PROPERTY_NOTIFY,
				BluetoothGattCharacteristic.PERMISSION_READ
						| BluetoothGattCharacteristic.PERMISSION_WRITE);
		notificationSource.addDescriptor(notificationCCC);
		notificationSource.setValue(new byte[] { 0x00 });

		BluetoothGattCharacteristic controlPoint = new BluetoothGattCharacteristic(
				ANCS_CONTROL_POINT, BluetoothGattCharacteristic.PROPERTY_WRITE,
				BluetoothGattCharacteristic.PERMISSION_WRITE);
		controlPoint.setValue(new byte[] { 0x00 });

		BluetoothGattCharacteristic dataSource = new BluetoothGattCharacteristic(
				ANCS_DATA_SOURCE, BluetoothGattCharacteristic.PROPERTY_NOTIFY,
				BluetoothGattCharacteristic.PERMISSION_READ
						| BluetoothGattCharacteristic.PERMISSION_WRITE);
		dataSource.setValue(new byte[] { 0x00 });

		dataSource.addDescriptor(dataSourceCCC);

		service.addCharacteristic(notificationSource);
		service.addCharacteristic(controlPoint);
		service.addCharacteristic(dataSource);

		return service;
	}
	protected BluetoothGattService generateBatteryService() {

		BluetoothGattService batteryService = new BluetoothGattService(
				BATTERY_SERVICE, BluetoothGattService.SERVICE_TYPE_PRIMARY);

		BluetoothGattDescriptor batteryCCC = new BluetoothGattDescriptor(CCC,
				BluetoothGattDescriptor.PERMISSION_READ
						| BluetoothGattDescriptor.PERMISSION_WRITE);
		batteryCCC.setValue(new byte[] { 0x00, 0x00 });

		BluetoothGattCharacteristic batteryLevel = new BluetoothGattCharacteristic(
				BATTERY_LEVEL, BluetoothGattCharacteristic.PROPERTY_NOTIFY
						| BluetoothGattCharacteristic.PROPERTY_READ,
				BluetoothGattCharacteristic.PERMISSION_READ);
		batteryLevel.addDescriptor(batteryCCC);
		batteryLevel.setValue(new byte[] { 0x00 });

		batteryService.addCharacteristic(batteryLevel);

		return batteryService;
	}


	protected byte[] doCommand(byte[] value/* , StatusBarNotification sbn1 */)
			throws NameNotFoundException {
		if (value.length >= 6) {
			int command = value[0];
			ByteArrayBuffer ret = new ByteArrayBuffer(9);
			ret.append(command);
			NotificationAttribute attribute = new NotificationAttribute();
			switch (command) {
			case 0:
				System.out.println("Command is Get Notification Attribute");

				int notificationUID = (value[1] & 0xFF);
				notificationUID |= (value[2] & 0xFF) << 8;
				notificationUID |= (value[3] & 0xFF) << 16;
				notificationUID |= (value[4] & 0xFF) << 24;
				for (int i = 1; i < 5; i++) {
					ret.append(value[i]);
				}
				System.out.println("Notification UID is " + notificationUID);

				ANCSNotification sbn = null; //请求的通知信息
				for (ANCSNotification every : notifications) {
					System.out.println("every.getPostTime() ="+every.getPostTime());
					if ((int) (every.getPostTime()) == notificationUID) {
						sbn = every;
						System.out.println("Found StatusBarNotification :"+ every.getPackageName());
						break;
					}
				}
				if (sbn == null) {
					return null;
				}
				System.out.println("value.length ="+value.length+",value ="+Arrays.toString(value));
				for(int i=5;i<value.length;i++){ //从数组第6个字节开始计算,3个字节为请求的一组属性[id,length,length]
					byte[] attributeValue = null; //属性内容
					int lenth =0;
					//请求属性id
					if((i-5)%3 == 0){
						attribute.setAttributeID(value[i]);
						System.out.println("i="+i+",AttributeID="+attribute.getmAttributeID());
						ret.append(value[i]);
						try {
							attributeValue = attribute.doCommand2(sbn,
									mAttributes);
						} catch (UnsupportedEncodingException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
						//请求属性内容的长度
						lenth = (value[i+1] & 0xff)|((value[i+2] & 0xff)<<8);
						System.out.println("请求属性内容的长度="+lenth);
						byte [] send= null;
						System.out.println("attributeValue.length ="+attributeValue.length+",lenth="+lenth);
						if(lenth>attributeValue.length){
							send= Arrays.copyOfRange(attributeValue, 0, attributeValue.length);
						}else {
							send= Arrays.copyOfRange(attributeValue, 0, lenth);
						}
						lenth = attributeValue.length;
						byte[] len = new byte[2];
						len[0] = (byte) (lenth &0xff);
						len[1] = (byte) ((lenth &0xff00)>>8);
						ret.append(len,0,len.length);
						ret.append(attributeValue, 0, lenth);

						try {
							System.out.println( "属性的数据 byte[] ="+Arrays.toString(attributeValue));
							L.i(TAG, "该属性的数据 ="+new String(attributeValue,"utf-8")+", length ="+attributeValue.length);

							L.i(TAG, "发送数据 ="+new String(send,"utf-8")+",发送的length ="+send.length+" / "+lenth);
						} catch (UnsupportedEncodingException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
					}
				}
				break;
			case 1:
				System.out.println("Command is Get App Attributes...");
				StringBuilder builder = new StringBuilder();
				int i = 1;
				for (; value[i] != 0; i++) {
					builder.append(value[i]);
					ret.append(value[i]);
				}
				// 以NULL结尾
				ret.append(0);
				switch (value[i]) {
				case 0:
					// attributeID 0 is AppAttributeIDDisplayName
					String displayName = mContext.getPackageManager()
							.getPackageInfo(builder.toString(),
									PackageManager.GET_ACTIVITIES).applicationInfo
							.loadLabel(mContext.getPackageManager()).toString();
					ret.append(displayName.getBytes(), 0, displayName.length());
					break;
				default:
					System.out.println("unkonwn get app attribute command");
					break;
				}
				break;
			}
			byte[] log = ret.toByteArray();
			System.out.println("doCommand ret length="+ log.length+",doCommand ret is " + Arrays.toString(log));
			return ret.toByteArray();
		}
		return null;
	}

	/**
	 * 发送电池更新通知
	 *
	 * @param percentage
	 */
	public void sendBatteryNotification(int percentage) {
		if (mGattServer == null) {
			return;
		}
		BluetoothGattService service = mGattServer.getService(BATTERY_SERVICE);
		if (service == null) {
			System.out.println("service is null");
			return;
		}
		BluetoothGattCharacteristic batteryLevel = service
				.getCharacteristic(BATTERY_LEVEL);
		if (batteryLevel == null) {
			System.out.println("batteryLevel is null");
			return;
		}

		System.out.println("mDevice is null?" + (mDevice == null)
				+ " and batteryLevel is null?" + (batteryLevel == null));
		if (mDevice != null && batteryLevel != null) {
			System.out.println("notify...");
			byte[] value = { (byte) (percentage & 0xFF) };
			batteryLevel.setValue(value);
			// BluetoothGattDescriptor ccc = batteryLevel.getDescriptor(CCC);

			// if (ccc != null && byteArrayEquals(ccc.getValue(),
			// BluetoothGattDescriptor.ENABLE_NOTIFICATION_VALUE)) {
			// sysoutByte(ccc.getValue());
			System.out.println("do it now");
			mGattServer.notifyCharacteristicChanged(mDevice, batteryLevel,
					false);
			// }
		}
	}



	private boolean byteArrayEquals(byte[] value1, byte[] value2) {
		L.i("byteArrayEquals",
				Arrays.toString(value1) + "/" + Arrays.toString(value2));
		if (value1 == null || value2 == null) {
			return false;
		}
		if (value1.length != value2.length) {
			return false;
		}
		for (int i = 0; i < value1.length; i++) {
			if (value1[i] != value2[i]) {
				return false;
			}
		}
		return true;
	}

	long lastNotificationTime = 0;
	int dialerNotiTimes = 0;
	// String smsDisplayName;
	public static boolean IS_TRIAL = false;
	public static int NOTIFICATION_PER_DAY = 10;
	// 短信特定的notificationUID，
	public static final int SMS_POST_TIME = 100;
	String SMS_ACTION = "android.provider.Telephony.SMS_RECEIVED";

	private/* public static */class NotificationReceiver extends
			BroadcastReceiver {
		@Override
		public void onReceive(Context context, Intent intent) {
			// TODO Auto-generated method stub
			System.out.println("NotificationReceiver with action"
					+ intent.getAction());
			Bundle extras = intent.getExtras();
			if (intent.getAction().equals(Intent.ACTION_BATTERY_CHANGED)) {
				// 获取当前电量
				int level = intent.getIntExtra("level", 0);
				// 电量的总刻度
				int scale = intent.getIntExtra("scale", 100);
				// 把它转成百分比
				batteryPercentage = (level * 100) / scale;
				Message msg = mHandler
						.obtainMessage(EVENT_BATTERY_NOTIFICATION_RECEIVED);
				msg.sendToTarget();
				// sendBatteryNotification(percentage);
			} else if (intent.getAction().equals(SMS_ACTION)) {
				notifications.clear();
				StringBuffer SMSAddress = new StringBuffer();
				StringBuffer SMSContent = new StringBuffer();
				Bundle bundle = intent.getExtras();
				if (bundle != null) {
					Object[] pdusObjects = (Object[]) bundle.get("pdus");
					SmsMessage[] messages = new SmsMessage[pdusObjects.length];
					for (int i = 0; i < pdusObjects.length; i++) {
						messages[i] = SmsMessage
								.createFromPdu((byte[]) pdusObjects[i]);
					}
					for (SmsMessage message : messages) {
						SMSAddress.append(message
								.getDisplayOriginatingAddress());
						SMSContent.append(message.getDisplayMessageBody());
					}
				}
				String name = "";
				if ((name = getPeopleFromContacts(SMSAddress.toString()))
						.equals("")) {
					name = SMSAddress.toString();
				}
				System.out.println("Phone number is " + SMSAddress.toString() + "name =" +name);
				Bundle data = new Bundle();
				data.putString(ANCSNotification.TITLE, name);
				data.putString(ANCSNotification.TEXT, SMSContent.toString());
				data.putLong(ANCSNotification.POST_TIME, SMS_POST_TIME);
				data.putString(ANCSNotification.PACKAGE_NAME, "com.android.mms");

				Message msg = mHandler
						.obtainMessage(EVENT_NOTIFICATION_RECEIVED);
				msg.setData(data);
				msg.arg1 = 1;
				msg.sendToTarget();
			} else if (intent.getAction().equals("ANCSAddNotification")) {
				Message msg = mHandler
						.obtainMessage(EVENT_NOTIFICATION_RECEIVED);
				msg.setData(extras);
				Bundle bundle = intent.getExtras();
				String title = bundle.getString(ANCSNotification.TITLE);
				String text = bundle.getString(ANCSNotification.TEXT);
				String package_name = bundle
						.getString(ANCSNotification.PACKAGE_NAME);
				long time = bundle.getLong(ANCSNotification.POST_TIME);
				System.out.println("ANCSAddNotification...." + title + ","
						+ text + "," + package_name + "," + time);
				msg.arg1 = 1;
				msg.sendToTarget();
			} else if (intent.getAction().equals("ANCSRemoveNotification")) {
				Message msg = mHandler
						.obtainMessage(EVENT_NOTIFICATION_RECEIVED);
				msg.setData(extras);
				Bundle bundle = intent.getExtras();
				String title = bundle.getString(ANCSNotification.TITLE);
				String text = bundle.getString(ANCSNotification.TEXT);
				String package_name = bundle
						.getString(ANCSNotification.PACKAGE_NAME);
				long time = bundle.getLong(ANCSNotification.POST_TIME);
				System.out.println("ANCSRemoveNotification...." + title + ","
						+ text + "," + package_name + "," + time);
				msg.arg1 = 2;
				msg.sendToTarget();
			}
		}
	}

	public static final int NUMBER_CUT_BIT = 7;

	public class PhoneStateReceiver extends BroadcastReceiver {

		private static final String TAG = "PhoneStatReceiver";

		// private static MyPhoneStateListener phoneListener = new
		// MyPhoneStateListener();

		private boolean incomingFlag = false;

		private String incoming_number = null;
		private String displayName = null;

		@Override
		public void onReceive(Context context, Intent intent) {
			// 如果是拨打电话
			if (intent.getAction().equals(Intent.ACTION_NEW_OUTGOING_CALL)) {
				incomingFlag = false;
				String phoneNumber = intent
						.getStringExtra(Intent.EXTRA_PHONE_NUMBER);
				Log.i(TAG, "call OUT:" + phoneNumber);
			} else {
				// 如果是来电
				TelephonyManager tm = (TelephonyManager) context
						.getSystemService(Service.TELEPHONY_SERVICE);

				switch (tm.getCallState()) {
				case TelephonyManager.CALL_STATE_RINGING:
					notifications.clear();
					incomingFlag = true;// 标识当前是来电
					incoming_number = intent.getStringExtra("incoming_number");
					displayName = getPeopleFromContacts(incoming_number);
					if (displayName.equals("")) {
						displayName = incoming_number;
					}

					Bundle data = new Bundle();
					data.putString(ANCSNotification.TITLE, displayName);
					data.putString(ANCSNotification.TEXT, "来电");
					data.putLong(ANCSNotification.POST_TIME,
							INCOMMING_CALL_POST_TIME);
					data.putString(ANCSNotification.PACKAGE_NAME,
							"com.google.android.dialer");

					Message msg = mHandler
							.obtainMessage(EVENT_NOTIFICATION_RECEIVED);
					msg.setData(data);
					msg.arg1 = 1;
					msg.sendToTarget();
					Log.i(TAG, "RINGING :" + incoming_number);
					break;
				case TelephonyManager.CALL_STATE_OFFHOOK:
					if (incomingFlag) {
						Log.i(TAG, "incoming ACCEPT :" + incoming_number);
						System.out.println("answered the phone");

						data = new Bundle();
						data.putString(ANCSNotification.TITLE, "");
						data.putString(ANCSNotification.TEXT, "");
						data.putLong(ANCSNotification.POST_TIME,
								INCOMMING_CALL_POST_TIME);
						data.putString(ANCSNotification.PACKAGE_NAME,
								"com.google.android.dialer");

						msg = mHandler
								.obtainMessage(EVENT_NOTIFICATION_RECEIVED);
						msg.setData(data);
						msg.arg1 = 2;
						msg.sendToTarget();

					}
					incomingFlag = false;
					break;

				case TelephonyManager.CALL_STATE_IDLE:
					if (incomingFlag) {
						// 未接来电
						Log.i(TAG, "未接来电");
						// 先remove incomming call
						Log.i(TAG, "未接来电 :" + incoming_number);
						System.out.println("missing call");

						data = new Bundle();
						data.putString(ANCSNotification.TITLE, "");
						data.putString(ANCSNotification.TEXT, "");
						data.putLong(ANCSNotification.POST_TIME,
								INCOMMING_CALL_POST_TIME);
						data.putString(ANCSNotification.PACKAGE_NAME,
								"com.google.android.dialer");

						msg = mHandler
								.obtainMessage(EVENT_NOTIFICATION_RECEIVED);
						msg.setData(data);
						msg.arg1 = 2;
						msg.sendToTarget();

						// 再添加未接来电
						data = new Bundle();
						data.putString(ANCSNotification.TITLE, displayName);
						data.putString(ANCSNotification.TEXT, "未接来电");
						data.putLong(ANCSNotification.POST_TIME,
								MISSING_CALL_POST_TIME);
						data.putString(ANCSNotification.PACKAGE_NAME,
								"com.android.phone");

						msg = mHandler
								.obtainMessage(EVENT_NOTIFICATION_RECEIVED);
						msg.setData(data);
						msg.arg1 = 1;
						msg.sendToTarget();
					} else {
						// 已接来电，可是已经挂电话了
					}
					incomingFlag = false;
					break;
				}
			}
		}
	}

	private String getPeople(String number) {
		if (number.length() > NUMBER_CUT_BIT) {
			number = number.substring(number.length() - NUMBER_CUT_BIT);
		}

		String[] projection = { ContactsContract.PhoneLookup.DISPLAY_NAME,
				ContactsContract.CommonDataKinds.Phone.NUMBER };

		Log.d(TAG, "getPeople ---------");

		// 将自己添加到 msPeers 中
		Cursor cursor = mContext.getContentResolver().query(
				ContactsContract.CommonDataKinds.Phone.CONTENT_URI,
				projection, // Which columns to return.
				ContactsContract.CommonDataKinds.Phone.NUMBER + " like '%"
						+ number + "'", // WHERE clause.
				null, // WHERE clause value substitution
				null); // Sort order.

		if (cursor == null) {
			Log.d(TAG, "getPeople null");
			return "";
		}
		Log.d(TAG, "getPeople cursor.getCount() = " + cursor.getCount());
		String name = "";
		for (int i = 0; i < cursor.getCount(); i++) {
			cursor.moveToPosition(i);

			// 取得联系人名字
			int nameFieldColumnIndex = cursor
					.getColumnIndex(ContactsContract.PhoneLookup.DISPLAY_NAME);
			name = cursor.getString(nameFieldColumnIndex);
		}
		return name;
	}

	private String getPeopleSearch(String number) {
		String name = "";
		Cursor cur = mContext.getContentResolver().query(
				ContactsContract.Contacts.CONTENT_URI,
				null,
				null,
				null,
				ContactsContract.Contacts.DISPLAY_NAME
						+ " COLLATE LOCALIZED ASC");
		boolean isMatch = false;
		// 循环遍历
		if (cur.moveToFirst()) {
			int idColumn = cur.getColumnIndex(ContactsContract.Contacts._ID);

			int displayNameColumn = cur
					.getColumnIndex(ContactsContract.Contacts.DISPLAY_NAME);

			do {
				// 获得联系人的ID号
				String contactId = cur.getString(idColumn);
				// 获得联系人姓名
				String disPlayName = cur.getString(displayNameColumn);

				// 查看该联系人有多少个电话号码。如果没有这返回值为0
				int phoneCount = cur
						.getInt(cur
								.getColumnIndex(ContactsContract.Contacts.HAS_PHONE_NUMBER));
				if (phoneCount > 0) {
					// 获得联系人的电话号码
					Cursor phones = mContext.getContentResolver().query(
							ContactsContract.CommonDataKinds.Phone.CONTENT_URI,
							null,
							ContactsContract.CommonDataKinds.Phone.CONTACT_ID
									+ " = " + contactId, null, null);
					if (phones.moveToFirst()) {
						do {
							// 遍历所有的电话号码
							String phoneNumber = phones
									.getString(phones
											.getColumnIndex(ContactsContract.CommonDataKinds.Phone.NUMBER));
							String phoneType = phones
									.getString(phones
											.getColumnIndex(ContactsContract.CommonDataKinds.Phone.TYPE));
							/*
							 * Log.i("phoneNumber", phoneNumber);
							 * Log.i("phoneType", phoneType); Log.i("compare",
							 * "compare number and phoneNumber");
							 */
							if (PhoneNumberUtils.compare(number, phoneNumber)) {
								Log.i("compare", "match");
								name = disPlayName;
								isMatch = true;
								break;
							}
						} while (phones.moveToNext());

					}
					phones.close();
					if (isMatch) {
						break;
					}
				}
			} while (cur.moveToNext());
		}
		return name;
	}

	private String getPeopleFromContacts(String numberNeedToBeMatched) {
		Set<String> displayNames = contacts.keySet();
		for (String displayName : displayNames) {
			ArrayList<String> numbers = contacts.get(displayName);
			for (String number : numbers) {
				if (PhoneNumberUtils.compare(number, numberNeedToBeMatched)) {
					return displayName;
				}
			}
		}
		return "";
	}

	/**
	 * 获得所有的联系人
	 */
	public void getAllContacts() {
		// 获得所有的联系人
		Cursor cur = mContext.getContentResolver().query(
				ContactsContract.Contacts.CONTENT_URI,
				null,
				null,
				null,
				ContactsContract.Contacts.DISPLAY_NAME
						+ " COLLATE LOCALIZED ASC");
		// 循环遍历
		if (cur.moveToFirst()) {
			int idColumn = cur.getColumnIndex(ContactsContract.Contacts._ID);

			int displayNameColumn = cur
					.getColumnIndex(ContactsContract.Contacts.DISPLAY_NAME);

			do {
				// 获得联系人的ID号
				String contactId = cur.getString(idColumn);
				// 获得联系人姓名
				String disPlayName = cur.getString(displayNameColumn);

				// 查看该联系人有多少个电话号码。如果没有这返回值为0
				int phoneCount = cur
						.getInt(cur
								.getColumnIndex(ContactsContract.Contacts.HAS_PHONE_NUMBER));
				// Log.i("username", disPlayName);
				ArrayList<String> numbers = new ArrayList<String>();
				if (phoneCount > 0) {
					// 获得联系人的电话号码
					Cursor phones = mContext.getContentResolver().query(
							ContactsContract.CommonDataKinds.Phone.CONTENT_URI,
							null,
							ContactsContract.CommonDataKinds.Phone.CONTACT_ID
									+ " = " + contactId, null, null);
					if (phones.moveToFirst()) {
						do {
							// 遍历所有的电话号码
							String phoneNumber = phones
									.getString(phones
											.getColumnIndex(ContactsContract.CommonDataKinds.Phone.NUMBER));
							String phoneType = phones
									.getString(phones
											.getColumnIndex(ContactsContract.CommonDataKinds.Phone.TYPE));
							/*
							 * Log.i("phoneNumber", phoneNumber);
							 * Log.i("phoneType", phoneType);
							 */
							numbers.add(phoneNumber);
						} while (phones.moveToNext());

					}
					if (numbers.size() > 0) {
						contacts.put(disPlayName, numbers);
					}
					phones.close();
				}
			} while (cur.moveToNext());

		}
		cur.close();

	}

	Callback mCallback;

	public void setCallback(Callback callback) {
		mCallback = callback;
	}

	public interface Callback {
		public void trialTime(int trialNum);
	}

}
