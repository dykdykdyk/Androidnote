package com.ble.androidbleconnect;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import java.util.UUID;


import android.app.Activity;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCallback;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;
import android.bluetooth.BluetoothGattService;
import android.bluetooth.BluetoothManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;

public class MainActivity extends Activity implements OnClickListener{
	public Button scan,bound,unbound,call,login;
	public Timer timer2;
	public ListView listview;
	/** 开启notify的SERVICE的UUID */
	public static final UUID NOTIFY_SERVICE_UUID = UUIDHelper
			.uuidFromString("1803");
	/** 开启notify的CHARACTERISTIC的UUID */
	private static final UUID NOTIFY_CHARACTERISTIC_UUID = UUIDHelper
			.uuidFromString("2a06");
	private ArrayList<BluetoothDevice> dlist;
	BluetoothDevice device;
	BluetoothAdapter mBluetoothAdapter;
	BluetoothGatt m_gatt;
	MyAdate mydater;
	private static final int REQUEST_ENABLE_BLUETOOTH = 1;
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		checkble();
		setContentView(R.layout.activity_main);
		init();
		enableble();
	}
	//判断Android系统ble是否支持
		public void checkble(){
			if(!getPackageManager().hasSystemFeature(PackageManager.FEATURE_BLUETOOTH_LE)) {

	            Toast.makeText(this,"您的系统不支持蓝牙！", Toast.LENGTH_SHORT).show();

	            finish();

	        }
		}
	//初始化
		public void init(){
			dlist = new ArrayList<>();
//			dlist.clear();
			listview=(ListView)findViewById(R.id.listview);
			scan =(Button) findViewById(R.id.scan);
			bound =(Button) findViewById(R.id.bound);
			unbound =(Button) findViewById(R.id.unbound);
			call =(Button) findViewById(R.id.call);
			login =(Button) findViewById(R.id.login);
			scan.setOnClickListener(this);
			bound.setOnClickListener(this);
			unbound.setOnClickListener(this);
			call.setOnClickListener(this);
			login.setOnClickListener(this);
			 mydater = new MyAdate(MainActivity.this, dlist);
			listview.setAdapter(mydater);
			listview.setOnItemClickListener(new OnItemClickListener() {

				@Override
				public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
					Toast.makeText(MainActivity.this, position +" , " ,Toast.LENGTH_LONG).show();
					connect(position);
				}
			});
			//蓝牙初始化
			BluetoothManager bluetoothManager =
			        (BluetoothManager) getSystemService(Context.BLUETOOTH_SERVICE);
			mBluetoothAdapter = bluetoothManager.getAdapter();
		
		}
		//如果没有打开蓝牙，请求打开蓝牙
		public void enableble(){
			// Ensures Bluetooth is available on the device and it is enabled. If not,
			// displays a dialog requesting user permission to enable Bluetooth.
			if (mBluetoothAdapter == null || !mBluetoothAdapter.isEnabled()) {
			    Intent enableBtIntent = new Intent(BluetoothAdapter.ACTION_REQUEST_ENABLE);
			    startActivityForResult(enableBtIntent, REQUEST_ENABLE_BLUETOOTH);
			}
		}
		
		
		//蓝牙连接
	public void connect(int counts){
		device=dlist.get(counts);
		m_gatt =device.connectGatt(this, false, mBluetoothGattCallback);
	}
	
	private BluetoothGattCallback mBluetoothGattCallback = new BluetoothGattCallback() {
		@Override
		public void onCharacteristicChanged(BluetoothGatt gatt, BluetoothGattCharacteristic characteristic) {
			// TODO Auto-generated method stub
			super.onCharacteristicChanged(gatt, characteristic);
			Log.i("onCharacteristicChanged", "characteristic  " + characteristic + "," + Arrays.toString(characteristic.getValue()));
		}
		//读
		@Override
		public void onCharacteristicRead(BluetoothGatt gatt, BluetoothGattCharacteristic characteristic, int status) {
			// TODO Auto-generated method stub
			super.onCharacteristicRead(gatt, characteristic, status);
		}
		//写
		@Override
		public void onCharacteristicWrite(BluetoothGatt gatt, BluetoothGattCharacteristic characteristic, int status) {
			// TODO Auto-generated method stub
			super.onCharacteristicWrite(gatt, characteristic, status);
			Log.i("onCharacteristicWrite", "characteristic  " + characteristic + "," + Arrays.toString(characteristic.getValue()));
		}
		//连接状态改变
		@Override
		public void onConnectionStateChange(BluetoothGatt gatt, int status, int newState) {
			// TODO Auto-generated method stub
			super.onConnectionStateChange(gatt, status, newState);
			System.out.println("status "+status+" newState"+newState);
			if(newState == BluetoothGatt.STATE_CONNECTED){
				if (gatt.getServices().size() == 0)
					gatt.discoverServices();
				else{
					m_gatt=gatt;
				}
			}else  if (newState == BluetoothGatt.STATE_DISCONNECTED) {
				Log.i("", "断开gatt ");
//				connected = false;
			}
			
		}
		
		@Override
		public void onDescriptorRead(BluetoothGatt gatt, BluetoothGattDescriptor descriptor, int status) {
			// TODO Auto-generated method stub
			super.onDescriptorRead(gatt, descriptor, status);
		}
		@Override
		public void onDescriptorWrite(BluetoothGatt gatt, BluetoothGattDescriptor descriptor, int status) {
			// TODO Auto-generated method stub
			super.onDescriptorWrite(gatt, descriptor, status);
		}
		//获取信号
		@Override
		public void onReadRemoteRssi(BluetoothGatt gatt, int rssi, int status) {
			// TODO Auto-generated method stub
			super.onReadRemoteRssi(gatt, rssi, status);
		}
		@Override
		public void onReliableWriteCompleted(BluetoothGatt gatt, int status) {
			// TODO Auto-generated method stub
			super.onReliableWriteCompleted(gatt, status);
		}
		//发现服务
		@Override
		public void onServicesDiscovered(BluetoothGatt gatt, int status) {
			// TODO Auto-generated method stub
			super.onServicesDiscovered(gatt, status);
			if(status == BluetoothGatt.GATT_SUCCESS){
				Log.i("onServicesDiscovered", "发现服务成功！");
				Toast.makeText(MainActivity.this, "连接成功！", Toast.LENGTH_LONG).show();
				getble();
			}else {
				Log.i("onServicesDiscovered", "发现服务错误！");
			}
		}
		
	};
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
	final byte[] bluAddr = BluetoothAdapter.getDefaultAdapter()
			.getAddress().replace(":", "").getBytes();
	@Override
	public void onClick(View v) {
		switch(v.getId()){
		//扫描
		case  R.id.scan:
			timer2=new Timer();
			TimerTask task = new TimerTask(){

				@Override
				public void run() {
					mBluetoothAdapter.stopLeScan(lescan);
				}
		 };
		 timer2.schedule(task, 10000);
	    mBluetoothAdapter.startLeScan(lescan);
	    break;
	    //绑定
		case  R.id.bound:
			write(16, 0x21, bluAddr);
			break;
			//删除绑定
		case  R.id.unbound:
			write(16, 0x22, bluAddr);
			break;
			//来电提醒
		case  R.id.call:
			String str = "+12345678910";
			byte[] st =strToByteArray(str);
			write(st.length, 0x14, st);
			break;
			//登录
		case  R.id.login:
			write( 16, 0x23, bluAddr);
			break;
		  default:
		   break;	
	    	//扫描指定的UUID，后面参数是实现扫描的对象
//	    	mBluetoothAdapter.startLeScan(serviceUuids, this);
		}
	}

	/** 字符串转换为byte数组 */
	public static byte[] strToByteArray(String str) {
		byte[] byBuffer = new byte[16];
		byBuffer = str.getBytes();
		return byBuffer;

	}
	//写入数据方法
	public void write(int length, int cmd, byte[] data) {
		int v = 1;
		int t = 0;
		final byte[] value = new byte[20];
		value[0] = (byte) ((v << 5) | ((length - 1) << 1) | t);
		value[1] = (byte) (cmd & 0xFF);
		value[2] = (byte) (0);
		value[3] = (byte) (0);
		System.arraycopy(data, 0, value, 4, data.length);
//		L.i(TAG,"发送的数据包 :"+ Arrays.toString(Utils.byteTo16String(value)));
//		if (isConnected()) {
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
//		}
	}
	
	public void queueWrite(UUID serviceUUID, UUID characteristicUUID,
			   byte[] data, int writeType) {
		
		BluetoothGattService service = m_gatt.getService(serviceUUID);
		BluetoothGattCharacteristic characteristic =service.getCharacteristic(characteristicUUID);
		characteristic.setValue(data[0],BluetoothGattCharacteristic.FORMAT_UINT8, 0);
        characteristic.setValue(data);
        m_gatt.writeCharacteristic(characteristic);
    }
	
	public BluetoothAdapter.LeScanCallback lescan =  new BluetoothAdapter.LeScanCallback(){
		@Override
		public void onLeScan(final BluetoothDevice device, int rssi, byte[] scanRecord) {
			// TODO Auto-generated method stub
			System.out.println("device "+device.getName()+" rssi "+rssi+"scanRecord "+Arrays.toString(scanRecord));
			runOnUiThread( new Runnable() {
				public void run() {
					dlist.add(device);
					System.out.println("0000............");
					mydater.notifyDataSetChanged();
				}
			});
			
			
		}
	};
	class MyAdate extends BaseAdapter{
		LayoutInflater la;
		List<BluetoothDevice> device_list;
		Context cx;
        public MyAdate(Context c, List<BluetoothDevice> list){
        	System.out.println("xxxxxxxxxxxxxx");
        	device_list =list;
        	cx = c;
        	la =  LayoutInflater.from(c);;
        }
		@Override
		public int getCount() {
			// TODO Auto-generated method stub
			return device_list.size();
		}

		@Override
		public Object getItem(int position) {
			// TODO Auto-generated method stub
			return device_list.get(position);
		}

		@Override
		public long getItemId(int position) {
			// TODO Auto-generated method stub
			return position;
		}

		@Override
		public View getView(int position, View convertView, ViewGroup parent) {
			View vi = la.inflate(R.layout.device_text, null);
			TextView devicet_tv =(TextView)vi.findViewById(R.id.devicet_tv);
			devicet_tv.setText(device_list.get(position).getName() +"  @"+device_list.get(position).getAddress() );
			
//			TextView tv = new TextView(cx);
//			tv.setTextSize(20);
//			tv.setText(device_list.get(position).getName() +"  @"+device_list.get(position).getAddress()) ;
			return vi;
		}
		
	}
	
}
