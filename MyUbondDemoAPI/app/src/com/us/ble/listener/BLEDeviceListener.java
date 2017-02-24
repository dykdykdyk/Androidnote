package com.us.ble.listener;

/**
 * 连接状态接口回调
 * @author Administrator
 *
 */
public interface BLEDeviceListener {
	/**
	 * 信号强度回调函数
	 * @param address
	 * @param rssi
	 */
	public void updateRssi(String address,int rssi);
	/**
	 * 设备连接成功回调函数
	 * @param address
	 */
	public void onConnected(String address);
	/**
	 * 设备断开回调函数
	 * @param address
	 */
	public void onDisConnected(String address);
}
