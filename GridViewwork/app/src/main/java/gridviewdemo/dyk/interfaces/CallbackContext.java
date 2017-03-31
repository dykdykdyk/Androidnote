package gridviewdemo.dyk.interfaces;

import java.util.List;

/**
 * Created by Administrator on 2017/3/27.
 */

public interface CallbackContext {
     void updateRssi(String address,int rssi);
     void onConnectedCallBack(String address);
     void onDisConnectedCallBack(String address);
     void onNotify(String address,int cmd, byte[] value);
     void sendHistory(String address,int cmd,List<byte[]> historyData);
     void onDeviceMessage(String address,byte [] data);
     void onSendImageAndFontsResult(int cmd,int progress,int group);
}
