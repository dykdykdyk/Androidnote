package com.us.ble.central;

import java.util.UUID;
import android.bluetooth.BluetoothGattCharacteristic;
import android.os.Handler;

/**
 * Android BLE stack is async but doesn't queue commands, so it ignore additional commands when processing. WTF?
 * This is an object to encapsulate the command data for queuing
 */
class BLECommand {
    // Types
    public static int READ = 10000;
    public static int REGISTER_NOTIFY = 10001;
    public static int REMOVE_NOTIFY = 10002;
    public static int READ_RSSI = 10003;
    // BluetoothGattCharacteristic.WRITE_TYPE_NO_RESPONSE
    // BluetoothGattCharacteristic.WRITE_TYPE_DEFAULT

    private UUID serviceUUID;
    private UUID characteristicUUID;
    private byte[] data;
    private int type;
    
    //TODO 命令包成功或失败 用这个回调，传递信息
    private Handler mCallback;
    
    
    /**最大重发次数*/
    public static final int MAX_RETRY_TIMES = 3;
    
    /**当前重发次数*/
    public int retryCount = 0;
    
    /**是否发送成功*/
    public boolean isSendSuccess;
    
    /**发送时间*/
    public long sendTime;
    
    /**重发间隔*/
    public static final int RETRY_TIME_INTERVAL = 3000;
    
    /**发送命令的sid*/
    public int sid;


    public BLECommand(UUID serviceUUID, UUID characteristicUUID, int type) {
        this.serviceUUID = serviceUUID;
        this.characteristicUUID = characteristicUUID;
        this.type = type;
    }

    public BLECommand(UUID serviceUUID, UUID characteristicUUID, byte[] data, int type) {
        this.serviceUUID = serviceUUID;
        this.characteristicUUID = characteristicUUID;
        this.data = data;
        this.type = type;
        if(type == BluetoothGattCharacteristic.WRITE_TYPE_DEFAULT) {
//        	sid = MessageHandler.getSidByData(data);
        }
    }
    

    public int getType() {
        return type;
    }

    public Handler getCallback() {
        return mCallback;
    }

    public UUID getServiceUUID() {
        return serviceUUID;
    }

    public UUID getCharacteristicUUID() {
        return characteristicUUID;
    }

    public byte[] getData() {
        return data;
    }
}
