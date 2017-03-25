package gridviewdemo.dyk.interfaces;

/**
 * 扫描设备的回调接口
 */

public interface interfacescanner {
    /**
     * @param result  扫描的信息
     * @param rssi 设备信号
     * @param scanReco The content of the advertisement record offered by the remote device
     */
     void  onScanResult(int result,int rssi,byte[] scanReco);
}
