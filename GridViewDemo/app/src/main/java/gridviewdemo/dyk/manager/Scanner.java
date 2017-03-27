package gridviewdemo.dyk.manager;

import android.app.Activity;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothManager;
import android.bluetooth.le.BluetoothLeScanner;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;

import gridviewdemo.dyk.interfaces.InterfaceScanner;

/**
 * Created by Administrator on 2017/3/25.
 */

public class Scanner {
    private BluetoothAdapter bluetoothAdapter;
    private BluetoothLeScanner leScanner;//Android 5.0新的扫描方法
    private static final int REQUEST_ENABLE_BLUETOOTH = 1;
    private Activity mActivity;
    private Handler scanHandler;
    int result =1;
    private InterfaceScanner IScanner;//扫描接口
    public static final String[] RESPONE_STATE = { "成功", "版本号不正确，此协议只接受1", "长度信息和命令要求不匹配", "类型信息和命令要求不匹配", "命令不存在",
            "序列号不正常", "设备已经被绑定", "绑定信息和设备内部不匹配，无法删除绑定", "登录信息和设备内部不匹配，无法登录", "还没有登录，先登录先",
            "指令不支持，很多指令是设备发出去的，并不能接收，参考具体指令介绍" ,"指针移动失败，一般命令格式不对或者是指针已经移动到最末尾位置",
            "指令内部返回，不走标准返回模式"};

    public Scanner(Activity activity){
          if(activity !=null){
                this.mActivity = activity;
          }
        init();
    }
    private Handler scanHander;
    private void init(){
         scanHander =new Handler();
    }

    /**
     *
     * @param scanSeconds 用户自己设置扫描的时间
     */
    public void startScan(int scanSeconds){
        if(enableBlue()){
            if(bluetoothAdapter  !=null){
                bluetoothAdapter.startLeScan(mLeScanCallback);
                scanHander.postDelayed(new Runnable() {
                    @Override
                    public void run() {
                        stopScan();
                    }
                },scanSeconds * 1000);
            }
        }
    }

    /**
     * 停止扫描
     */
    public void stopScan(){
         if(bluetoothAdapter !=null){
             result =1;
            bluetoothAdapter.stopLeScan(mLeScanCallback);
             IScanner.onScanResult(0,0,null);
         }
    }

    /**
     * 设置扫描接口
     * @param interfaceScanner
     */
    public void setScanner(InterfaceScanner interfaceScanner){
        if(interfaceScanner !=null){
            this.IScanner =interfaceScanner;
        }
    }

    /**
     * 判断蓝牙是否开启，否则开启蓝牙
     */
    public boolean enableBlue() {
        BluetoothManager manager = (BluetoothManager)
                mActivity.getSystemService(Context.BLUETOOTH_SERVICE);
        bluetoothAdapter = manager.getAdapter();
        if (!bluetoothAdapter.isEnabled()) {
            Intent intent = new Intent(BluetoothAdapter.ACTION_REQUEST_ENABLE);
            mActivity.startActivityForResult(intent, REQUEST_ENABLE_BLUETOOTH);
        }
        return bluetoothAdapter.isEnabled();
    }

    private BluetoothAdapter.LeScanCallback mLeScanCallback =new BluetoothAdapter.LeScanCallback(){

        @Override
        public void onLeScan(BluetoothDevice bluetoothDevice, int rssi, byte[] scanRecord) {
            IScanner.onScanResult(0,rssi,scanRecord);

        }
    };
}
