package com.us.ble.listener;

import java.util.List;
/**
 * 接收设备返回未解析的数据信息
 * @param data
 */

public interface DeviceMessageListener {
	public void onSendResult(String address,int cmd, byte[] data);
	public void onSendHistory(String address,int cmd,List<byte[]> historyData);
}
