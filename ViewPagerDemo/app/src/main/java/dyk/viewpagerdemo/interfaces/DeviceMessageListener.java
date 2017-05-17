package dyk.viewpagerdemo.interfaces;

/**
 * 设置返回给view消息的监听接口
 */

public interface DeviceMessageListener {
	public void onSendResult(String address, int cmd, byte[] data);
}
