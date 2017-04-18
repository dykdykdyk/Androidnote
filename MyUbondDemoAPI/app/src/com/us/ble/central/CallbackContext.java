package com.us.ble.central;

import java.util.List;

public interface CallbackContext {
	public void updateRssi(String address,int rssi);
	public void onConnectedCallBack(String address);
	public void onDisConnectedCallBack(String address);
	public void onNotify(String address,int cmd, byte[] value);
	public void sendHistory(String address,int cmd,List<byte[]> historyData);
	public void onDeviceMessage(String address,byte [] data);
	public void onSendImageAndFontsResult(int cmd,int progress,int group);
}
