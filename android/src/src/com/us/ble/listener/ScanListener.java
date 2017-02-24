package com.us.ble.listener;

import com.us.ble.central.BLEDevice;

/**
 * 扫描设备的回调接口
 * @author Administrator
 *
 */
public interface ScanListener {
	/**
	 * 扫描回调函数
	 * @param device  扫描到的蓝牙设备
	 * @param rssi    扫描到的设备信号
	 * @param scanRecord  The content of the advertisement record offered by the remote device.  
	 */
    public void onScanResult(int result,BLEDevice bleDevice, int rssi,byte[] scanRecord);
//    /**
//     * 停止扫描
//     * @param st
//     */
//    public void onStopScan(String st);
}
