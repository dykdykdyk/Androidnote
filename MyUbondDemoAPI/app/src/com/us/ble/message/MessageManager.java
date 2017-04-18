package com.us.ble.message;


import com.us.ble.central.BLEDevice;
import com.us.ble.central.L;
/**
 * 处理手机与设备信息交互
 * 
 * @author Administrator
 * 
 */
public class MessageManager {
	public final static int errorCommand = 0x21;

	public final static String TAG = MessageManager.class.getSimpleName();


	
	public static final String[] RESPONE_STATE = { "成功", "版本号不正确，此协议只接受1", "长度信息和命令要求不匹配", "类型信息和命令要求不匹配", "命令不存在",
		"序列号不正常", "设备已经被绑定", "绑定信息和设备内部不匹配，无法删除绑定", "登录信息和设备内部不匹配，无法登录", "还没有登录，先登录先", "指令不支持，很多指令是设备发出去的，并不能接收，参考具体指令介绍" };
	// 设备
	private BLEDevice mBLEDevice;

	private MessageHandlerFactory mFactory;

	public MessageManager(BLEDevice peripheral) {
		mBLEDevice = peripheral;
		mFactory = new MessageHandlerFactory(peripheral);
	}

	/**
	 * 解析蓝牙设备发过来的包，并处理
	 * 
	 * @param data
	 *            设备发过来的数据包 
	 *            错误代码列表： 0x00：成功 
	 *            0x01：版本号不正确，此协议只接受 1
	 *            0x02：长度信息和命令要求不匹配 
	 *            0x03：类型信息和命令要求不匹配 
	 *            0x04：命令不存在 
	 *            0x05：序列号不正常
	 *            0x06：设备已经被绑定 
	 *            0x07：绑定信息和设备内部不匹配，无法删除绑定 
	 *            0x08：登录信息和设备内部不匹配，无法登录
	 *            0x09：还没有登录，先登录先 
	 *            0x0A：指令不支持，很多指令是设备发出去的，并不能接收，参考具体指令介绍
	 *            0xFF：指令内部返回，不走标准返回模式
	 * 
	 */
	public void handlerDeviceMessage(byte[] data) {
		byte type = (byte) (data[1] >> 4);
		MessageHandler messageHandler = mFactory.getMessageHandler(type);
		if (messageHandler != null)
			messageHandler.handleMessage(data);
	}

	/**
	 * 通过state将数据封装通过蓝牙发送
	 * 
	 * @param state
	 *            状态
	 * @param peripheral
	 *            蓝牙设备信息封装对象
	 * @param callbackContext
	 *            回调
	 */
//	public void queueWrite(byte type, byte state) {
//		Log.i(TAG, "queueWrite");
//		mPeripheral.queueWrite(SERVICE_UUID, CHARACTERISTIC_UUID,
//				stateToBytes(type, state),
//				BluetoothGattCharacteristic.WRITE_TYPE_DEFAULT);
//	}

	/**
	 * 将手机要发送給设备的消息进行处理得到对应的字节包
	 * 
	 * @param code
	 *            请求码
	 * 
	 * @return 字节包
	 */
//	public byte[] stateToBytes(byte type, byte state) {
//		MessageHandler messageHandler = mFactory.getMessageHandler(type);
//		byte result[] = new byte[20];
//		if (messageHandler != null)
//			result = messageHandler.stateToBytes(state);
//		return result;
//	}

}
