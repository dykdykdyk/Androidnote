package gridviewdemo.dyk.interfaces;

import gridviewdemo.dyk.application.BleDevice;

/**
 * 扫描设备的回调接口
 */


 public interface InterfaceScanner {
    /**
     * @param result  扫描的信息
     * @param rssi 设备信号
     * @param scanRecod The content of the advertisement record offered by the remote device
     */
     void  onScanResult(int result, BleDevice mbledevice, int rssi, byte[] scanRecod);
}
