package gridviewdemo.dyk.interfaces;

/**
 * 接收设备返回未解析的数据信息
 */

public interface DeviceMessageListener {
	public void onSendResult(String address, int cmd, byte[] data);
}
