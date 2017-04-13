package gridviewdemo.dyk.utils;

import android.content.Context;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;

import java.util.ArrayList;
import java.util.List;

import static android.content.Context.WIFI_SERVICE;

/**
 * Created by dengyangkang on 2017/4/13.
 * wifi信息类
 */

public class WifiInfoUtils {
    WifiManager wifiManager;
    WifiInfo wifiInfo;
    List<WifiConfiguration> configs;
    List<String>  stringdata =new ArrayList<String>();
    public WifiInfoUtils(Context context){
        wifiManager =(WifiManager)context.getSystemService(WIFI_SERVICE);
        wifiInfo =wifiManager.getConnectionInfo();
        configs =    wifiManager.getConfiguredNetworks();
        for (WifiConfiguration config : configs) {
            config.SSID=   config.SSID.substring(1,config.SSID.length()-1);
            stringdata.add(config.SSID);
        }
    }
    public List<String> getStringdata(){
        return stringdata;
    }

}
