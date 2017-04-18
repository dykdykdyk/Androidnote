package com.us.ble.listener;
/**
 * 错误信息接口
 * @author Administrator
 *
 */
public interface ErrorListener {
	void onError(String address,int cmd, int errorCode);
}
