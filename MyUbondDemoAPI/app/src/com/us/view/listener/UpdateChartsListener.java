package com.us.view.listener;

import java.util.List;

public interface UpdateChartsListener {
	public void updateRssi(String address,int rssi);
	public void onConnected(String address);
	public void onDisConnected(String address);
	public void onSendResult(String address,int cmd, byte[] data);
	public void onSendHistory(String address,int cmd,List<byte[]> historyData);
}
