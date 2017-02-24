package com.us.ble.central;



import android.annotation.SuppressLint;
import android.app.Activity;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothManager;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;

import com.us.ble.listener.ScanListener;

@SuppressLint("NewApi")
public class BLEManager {
	private static final String TAG = "BLEManager";
	private ScanListener mScanListener; // 扫描接口
	int result = 1; //扫描停止 1
	private BluetoothAdapter bluetoothAdapter;
	private static final int REQUEST_ENABLE_BLUETOOTH = 1;
	private Activity mActivity;
	public static final String[] RESPONE_STATE = { "成功", "版本号不正确，此协议只接受1", "长度信息和命令要求不匹配", "类型信息和命令要求不匹配", "命令不存在",
		"序列号不正常", "设备已经被绑定", "绑定信息和设备内部不匹配，无法删除绑定", "登录信息和设备内部不匹配，无法登录", "还没有登录，先登录先", 
		"指令不支持，很多指令是设备发出去的，并不能接收，参考具体指令介绍" ,"指针移动失败，一般命令格式不对或者是指针已经移动到最末尾位置",
        "指令内部返回，不走标准返回模式"};
	public BLEManager(Activity activity) {
		if (activity != null)
			this.mActivity = activity;
		init();
	}
    private void init() {
    	scanHandler = new Handler();
	}
	private Handler scanHandler;
	/**
	 * 开始扫描
	 * @param scanSeconds
	 *         扫描时间：秒
	 */
	public void startScan(int scanSeconds) {
		if(enableBlue()){
		   if(bluetoothAdapter !=null){
		        bluetoothAdapter.startLeScan(myReLeScanCallback);
				scanHandler.postDelayed(new Runnable() {
					@Override
					public void run() {
						stopScan();
					}
				}, scanSeconds * 1000);
		   }
		}
	}
   
	/**
	 * 停止扫描
	 */
	public void stopScan() {
		if(bluetoothAdapter !=null)
			result = 1;
			bluetoothAdapter.stopLeScan(myReLeScanCallback);
			mScanListener.onScanResult(result, null, 0, null);
	}

	/**
	 * 设置扫描接口
	 * @param scanListener
	 */
	public void setScanListener(ScanListener scanListener) {
		if (scanListener != null) {
			this.mScanListener = scanListener;
		}
	}
//    public void scanCallback(BluetoothDevice device, int rssi, byte[] scanRecord){
//    	
//    }

    
	private BluetoothAdapter.LeScanCallback myReLeScanCallback = new BluetoothAdapter.LeScanCallback() {
		@Override
		public void onLeScan(BluetoothDevice device, int rssi, byte[] scanRecord) {
			result = 0;
			BLEDevice  bleDevice= new BLEDevice(device.getAddress(), mActivity); 
			mScanListener.onScanResult(result, bleDevice, rssi, scanRecord);
		}
	};


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
}
