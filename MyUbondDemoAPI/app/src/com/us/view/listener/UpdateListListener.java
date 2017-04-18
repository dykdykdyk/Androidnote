package com.us.view.listener;

import java.util.ArrayList;
import java.util.List;

public interface UpdateListListener {
	public void updateRssi(String address,int rssi);
	public void onConnected(String address);
	public void onDisConnected(String address);
	public void onSendResult(String address,int cmd, byte[] data);
	public void onSendHistory(String address,int cmd,List<byte[]> historyData);

	public void onRealtimeData(String address,String content);
	public void onAlarm(String address, ArrayList<int[]> alarm);
	
	public void onHistoryData(String address,int cmd, ArrayList<Long> times,
			ArrayList<Integer> data);
	public void onHistoryDosageData(String address,int cmd, ArrayList<Long> times,
			ArrayList<Integer []> data);
	
	
}
