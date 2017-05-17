package dyk.viewpagerdemo.ble.application;

import android.app.Activity;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothManager;
import android.content.Context;

import java.util.List;

import dyk.viewpagerdemo.ble.central.Peripheral;
import dyk.viewpagerdemo.interfaces.BleDevicetransfer;
import dyk.viewpagerdemo.interfaces.CallbackData;
import dyk.viewpagerdemo.interfaces.DeviceMessageListener;


/**
 * Created by Administrator on 2017/3/27.
 */

public class BleDevice implements CallbackData {
    BluetoothAdapter bluetoothAdapter;
    private BluetoothDevice mDevice;
    private Activity mActivity;
    private Peripheral peripheral;
    private DeviceMessageListener mDeviceMessageListener;
    private BleDevicetransfer mBleDevicetransfer;
    public BleDevice(String address,Activity activity){
        if(bluetoothAdapter == null){
            BluetoothManager bluetoothManager = (BluetoothManager)activity.
                    getSystemService(Context.BLUETOOTH_SERVICE);
            bluetoothAdapter = bluetoothManager.getAdapter();
        }
        this.mDevice =bluetoothAdapter.getRemoteDevice(address);
        this.mActivity =activity;
        this.peripheral =new Peripheral(mDevice);
        //设置回调数据监听接口
        peripheral.setOnCallbackListent(this);
    }
    public void connect(){
        peripheral.connect(mActivity);
    }

   public boolean isConnecte(){
     return   peripheral.isConnected();
   }
    /**
     * 获取设备address地址
     */
    public String getAddress() {
        return mDevice.getAddress();
    }
    /**
     * 获取设备名字
     *
     * @return
     */
    public String getName() {
        return mDevice.getName();
    }

    public void setDeviceMessageListener(DeviceMessageListener listener) {
        if (listener != null)
            mDeviceMessageListener = listener;
    }

    //设置回调view的接口
    public void setBleDevicetransfer(BleDevicetransfer listener) {
        if (listener != null)
            mBleDevicetransfer = listener;
        mBleDevicetransfer.Devicetransfer(this);
    }
    /**
     *
     * @param address mac地址
     * @param rssi  信号
     */
    @Override
    public void updateRssi(String address, int rssi) {

    }
    //登录成功的回调
    @Override
    public void onConnectedCallBack(String address) {
        if (mDeviceMessageListener != null)
            mDeviceMessageListener.onSendResult(address, 0, null);
    }

    @Override
    public void onDisConnectedCallBack(String address) {

    }

    @Override
    public void onNotify(String address, int cmd, byte[] value) {
    }


    @Override
    public void sendHistory(String address, int cmd, List<byte[]> historyData) {

    }

    @Override
    public void onDeviceMessage(String address, byte[] data) {


    }

    @Override
    public void onSendImageAndFontsResult(int cmd, int progress, int group) {

    }
    public void write(int length, int cmd, byte[] data) {
//        peripheral.write(length, cmd, data);
    }
}
