package gridviewdemo.dyk.application;

import android.app.Activity;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothManager;
import android.content.Context;

import java.util.List;

import gridviewdemo.dyk.interfaces.CallbackContext;
import gridviewdemo.dyk.manager.Peripheral;

/**
 * Created by Administrator on 2017/3/27.
 */

public class BleDevice implements CallbackContext{
    BluetoothAdapter bluetoothAdapter;
    private BluetoothDevice mDevice;
    private Activity mActivity;
    private Peripheral peripheral;
    public BleDevice(String address,Activity activity){
        if(bluetoothAdapter == null){
            BluetoothManager bluetoothManager = (BluetoothManager)activity.
                    getSystemService(Context.BLUETOOTH_SERVICE);
            bluetoothAdapter = bluetoothManager.getAdapter();
        }
        this.mDevice =bluetoothAdapter.getRemoteDevice(address);
        this.mActivity =activity;
        this.peripheral =new Peripheral(mDevice);


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
    /**
     *
     * @param address mac地址
     * @param rssi  信号
     */
    @Override
    public void updateRssi(String address, int rssi) {

    }

    @Override
    public void onConnectedCallBack(String address) {

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
}
