package gridviewdemo.dyk.manager;

import android.app.Activity;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCallback;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;
import android.bluetooth.BluetoothGattService;
import android.util.Log;

import java.util.Arrays;
import java.util.UUID;

import gridviewdemo.dyk.interfaces.CallbackContext;

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
    private boolean connected = false; // 连接断开/成功
    public BluetoothGatt mGatt;
    public BluetoothDevice mDevice;
    BluetoothGattService service;
    BluetoothGattCharacteristic characteristic;
    private Activity mActivity;
    private CallbackContext callbackContext;
    /**
     * 连接步骤 1、 连接成功回调则去发现服务 2、 发现服务回调成功则开启notify 3、 开启notify回调成功则发送绑定指令 4、
     * 处理设备的绑定应答，判断是否绑定成功 5、 绑定成功则发送设备登录
     *
     */
    public Peripheral(BluetoothDevice device){
        this.mDevice = device;
    }

    public void connect(Activity activity){
        if(isConnected()){
            callbackContext.onConnectedCallBack(getAddress());
            return;
        }
        if(activity !=null)
            mActivity =activity;
        BluetoothDevice device =getDevice();
        mGatt =device.connectGatt(mActivity,false,this);

    }
    public void write(int length, int cmd, byte[] data) {
        int v = 1;
        int t = 0;
        final byte[] value = new byte[20];
        //基站 暂时不要包头
//        value[0] = (byte) ((v << 5) | ((length - 1) << 1) | t);
//        value[1] = (byte) (cmd & 0xFF);
//        value[2] = (byte) (0);
//        value[3] = (byte) (0);
//        System.arraycopy(data, 0, value, 4, data.length);
//        L.i(TAG,"发送的数据包 :"+ Arrays.toString(Utils.byteTo16String(value)));
//        if (isConnected()) {
            new Thread(new Runnable() {
                @Override
                public void run() {
                    try {
                        Thread.sleep(25);
                        queueWrite(NOTIFY_SERVICE_UUID,
                                NOTIFY_CHARACTERISTIC_UUID, value,
                                BluetoothGattCharacteristic.WRITE_TYPE_DEFAULT);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
            }).start();
//        }
    }
    public void queueWrite(UUID serviceUUID, UUID characteristicUUID,
                           byte[] data, int writeType) {

        service = mGatt.getService(serviceUUID);
        characteristic =service.getCharacteristic(characteristicUUID);
        characteristic.setValue(data[0],BluetoothGattCharacteristic.FORMAT_UINT8, 0);
        characteristic.setValue(data);
        mGatt.writeCharacteristic(characteristic);
    }
    public String getAddress() {
        return this.mDevice.getAddress();
    }
    public BluetoothDevice getDevice() {
        return this.mDevice;
    }

    public boolean isConnected() {
        return this.connected;
    }
    @Override
    public void onCharacteristicChanged(BluetoothGatt gatt, BluetoothGattCharacteristic characteristic) {
        super.onCharacteristicChanged(gatt, characteristic);
        Log.i("onCharacteristicChanged", "characteristic  " + characteristic + "," + Arrays.toString(characteristic.getValue()));
        if(characteristic.getValue()[1] ==36   && characteristic.getValue()[4] ==0){
            callbackContext.onDeviceMessage("绑定成功",null);
        }
//        if (characteristic.getValue() != null)
//            callback(characteristic.getValue());
        // mMessageManager.handlerDeviceMessage(characteristic.getValue());
        // callbackContext.onNotify(getAddress(),characteristic.getValue());

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
//        if(characteristic.getValue()[1] ==36){
//            callbackContext.onDeviceMessage("发送绑定指令成功",null);
//        }
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
                mGatt = gatt;
            }
        }else if(newState == BluetoothGatt.STATE_DISCONNECTED){
            Log.i("","断开gatt");
            callbackContext.onDeviceMessage("连接失败！",null);
        }
    }

    @Override
    public void onDescriptorWrite(BluetoothGatt gatt, BluetoothGattDescriptor descriptor, int status) {
        super.onDescriptorWrite(gatt, descriptor, status);
        superBound();
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
            callbackContext.onDeviceMessage("发现服务成功",null);
            Log.i("Peripheral", "连接成功！");
            getble();
        }else {
            Log.i("onServicesDiscovered", "发现服务错误！");
            callbackContext.onDeviceMessage("发现服务错误",null);
        }
    }
    private final byte[] SUPER_BOUND_DATA = { 0x01, 0x23, 0x45, 0x67,
            (byte) 0x89, (byte) 0xAB, (byte) 0xCD, (byte) 0xEF, (byte) 0xFE,
            (byte) 0xDC, (byte) 0xBA, (byte) 0x98, 0x76, 0x54, 0x32, 0x10 };
    private void superBound() {
        callbackContext.onDeviceMessage("发送超级绑定命令",null);
        write(16, 0x24, SUPER_BOUND_DATA);
    }

    /***
     * 对接收的设备的数据进行分类处理
     * @param data
     */
    private void callback(byte[] data) {
//        if (data[1] == 0x34 || data[1] == 0x35 || data[1] == 0x43
//                || data[1] == 0x46 ||  data[1] == 0x3B ) { // 历史数据类信息
//            callbackHistory(data);
//        }
//        else if( data[1] == 0x59){ //止血带
//            callbackOtherHistory(data);
//        }
//        else if(data[1] == 0x0A || data[1] == 0x0B || data[1] ==0x0D){ //设置图片和设置字体
//            callbackFonts(data);
//        }else { // 设置类信息
            int cmd = data[1] & 0xff;
            callbackContext.onNotify(getAddress(), cmd, copyArrayToByte(data));
//        }
        callbackContext.onDeviceMessage(getAddress(), data);
    }
    //设置监听接口
    public void setOnCallbackListent(CallbackContext callback) {
        if (callback != null)
            this.callbackContext = callback;
    }
    private byte[] copyArrayToByte(byte[] data) {
        byte[] copy = new byte[16];
        System.arraycopy(data, 4, copy, 0, 16);
        return copy;
    }
    //获取蓝牙的代理并且开启蓝牙
    public void getble(){
        Log.i("", "enableNotify");
        BluetoothGattService service = mGatt.getService(NOTIFY_SERVICE_UUID);
        BluetoothGattCharacteristic characteristic = service.getCharacteristic(NOTIFY_CHARACTERISTIC_UUID);
        BluetoothGattDescriptor descriptor = characteristic.getDescriptors().get(0);// TODO 现在只有一个Descriptor，如果多个需找到对应的Descriptor
        boolean flag;
        flag = mGatt.setCharacteristicNotification(characteristic, true);
        Log.i("", "(" + characteristic.getUuid() + ") setCharacteristicNotification is " + flag);
        flag = descriptor.setValue(BluetoothGattDescriptor.ENABLE_NOTIFICATION_VALUE);
        Log.i("", "setValue is " + flag);
        flag = mGatt.writeDescriptor(descriptor);
        Log.i("", "(" + descriptor.getUuid() + ") writeDescriptor is " + flag);
    }

}
