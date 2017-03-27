package gridviewdemo.dyk.manager;

import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCallback;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;
import android.bluetooth.BluetoothGattService;
import android.util.Log;

import java.util.Arrays;
import java.util.UUID;

/**
 * Created by Administrator on 2017/3/25.
 */

public class Peripheral extends BluetoothGattCallback{
    /** 开启notify的SERVICE的UUID */
    public static final UUID NOTIFY_SERVICE_UUID = UUIDHelper
            .uuidFromString("1803");
    /** 开启notify的CHARACTERISTIC的UUID */
    private static final UUID NOTIFY_CHARACTERISTIC_UUID = UUIDHelper
            .uuidFromString("2a06");
    public BluetoothGatt m_gatt;
    public BluetoothDevice mDevice;
    /**
     * 连接步骤 1、 连接成功回调则去发现服务 2、 发现服务回调成功则开启notify 3、 开启notify回调成功则发送绑定指令 4、
     * 处理设备的绑定应答，判断是否绑定成功 5、 绑定成功则发送设备登录
     *
     */
    public Peripheral(BluetoothDevice device){
        this.mDevice = device;
    }
    @Override
    public void onCharacteristicChanged(BluetoothGatt gatt, BluetoothGattCharacteristic characteristic) {
        super.onCharacteristicChanged(gatt, characteristic);
        Log.i("onCharacteristicChanged", "characteristic  " + characteristic + "," + Arrays.toString(characteristic.getValue()));
    }

    //读
    @Override
    public void onCharacteristicRead(BluetoothGatt gatt, BluetoothGattCharacteristic characteristic, int status) {
        super.onCharacteristicRead(gatt, characteristic, status);
    }

    //写
    @Override
    public void onCharacteristicWrite(BluetoothGatt gatt, BluetoothGattCharacteristic characteristic, int status) {
        super.onCharacteristicWrite(gatt, characteristic, status);
        Log.i("onCharacteristicWrite", "characteristic  " + characteristic + "," + Arrays.toString(characteristic.getValue()));
    }

    //连接状态改变
    @Override
    public void onConnectionStateChange(BluetoothGatt gatt, int status, int newState) {
        super.onConnectionStateChange(gatt, status, newState);
        System.out.println("status "+status+" newState"+newState);
        if(newState == BluetoothGatt.STATE_CONNECTED) {
            if (gatt.getServices().size() == 0)
                gatt.discoverServices();
            else {
                m_gatt = gatt;
            }
        }else if(newState == BluetoothGatt.STATE_DISCONNECTED){
            Log.i("","断开gatt");
        }
    }

    @Override
    public void onDescriptorWrite(BluetoothGatt gatt, BluetoothGattDescriptor descriptor, int status) {
        super.onDescriptorWrite(gatt, descriptor, status);
    }
   //获取信号
    @Override
    public void onReadRemoteRssi(BluetoothGatt gatt, int rssi, int status) {
        super.onReadRemoteRssi(gatt, rssi, status);
    }
    //发现服务
    @Override
    public void onServicesDiscovered(BluetoothGatt gatt, int status) {
        super.onServicesDiscovered(gatt, status);
        if(status == BluetoothGatt.GATT_SUCCESS){
            Log.i("onServicesDiscovered", "发现服务成功！");
            Log.i("Peripheral", "连接成功！");
            getble();
        }else {
            Log.i("onServicesDiscovered", "发现服务错误！");
        }
    }
    //获取蓝牙的代理并且开启蓝牙
    public void getble(){
        Log.i("", "enableNotify");
        BluetoothGattService service = m_gatt.getService(NOTIFY_SERVICE_UUID);
        BluetoothGattCharacteristic characteristic = service.getCharacteristic(NOTIFY_CHARACTERISTIC_UUID);
        BluetoothGattDescriptor descriptor = characteristic.getDescriptors().get(0);// TODO 现在只有一个Descriptor，如果多个需找到对应的Descriptor
        boolean flag;
        flag = m_gatt.setCharacteristicNotification(characteristic, true);
        Log.i("", "(" + characteristic.getUuid() + ") setCharacteristicNotification is " + flag);
        flag = descriptor.setValue(BluetoothGattDescriptor.ENABLE_NOTIFICATION_VALUE);
        Log.i("", "setValue is " + flag);
        flag = m_gatt.writeDescriptor(descriptor);
        Log.i("", "(" + descriptor.getUuid() + ") writeDescriptor is " + flag);
    }

}
