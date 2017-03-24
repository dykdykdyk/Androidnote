package com.ionicframework.urfdemo;
///*
//       Licensed to the Apache Software Foundation (ASF) under one
//       or more contributor license agreements.  See the NOTICE file
//       distributed with this work for additional information
//       regarding copyright ownership.  The ASF licenses this file
//       to you under the Apache License, Version 2.0 (the
//       "License"); you may not use this file except in compliance
//       with the License.  You may obtain a copy of the License at
//
//         http://www.apache.org/licenses/LICENSE-2.0
//
//       Unless required by applicable law or agreed to in writing,
//       software distributed under the License is distributed on an
//       "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
//       KIND, either express or implied.  See the License for the
//       specific language governing permissions and limitations
//       under the License.
// */
//
//package com.ionicframework.urfdemo;
//
//import java.util.ArrayList;
//import java.util.List;
//import java.util.Timer;
//import java.util.TimerTask;
//
//import org.apache.cordova.CallbackContext;
//import org.apache.cordova.LOG;
//
//import com.megster.cordova.ble.central.Peripheral;
//
//import android.app.Activity;
//import android.bluetooth.BluetoothAdapter;
//import android.bluetooth.BluetoothAdapter.LeScanCallback;
//import android.bluetooth.BluetoothDevice;
//import android.content.Intent;
//import android.os.Bundle;
//import android.util.Log;
//import android.view.Menu;
//import android.view.MenuInflater;
//import android.view.MenuItem;
//import android.view.View;
//import android.widget.AdapterView;
//import android.widget.AdapterView.OnItemClickListener;
//import android.widget.ListView;
//
//
//public class MainActivity extends Activity implements LeScanCallback, OnItemClickListener
//{
//	
//	private ListView mListView;
//	
//	private List<Peripheral> mBLEList;
//	
//	private BluetoothAdapter mBLEAdapter;
//	
//	private ShowBLEAdapter mViewAdapter;
//	
//	private static final int REQUEST_ENABLE_BLUETOOTH = 1001;
//	
//	private Timer stopScanTimer;
//	
//    @Override
//    public void onCreate(Bundle savedInstanceState)
//    {
//    	
//        super.onCreate(savedInstanceState);
//       /* // Set by <content src="index.html" /> in config.xml
//        loadUrl(launchUrl);*/
//        setContentView(R.layout.activity_main);
//        mListView = (ListView) findViewById(R.id.ble_list_view);
//        mBLEAdapter = BluetoothAdapter.getDefaultAdapter();
//        
//        mBLEList = new ArrayList<>();
////        mViewAdapter = new ShowBLEAdapter(this, mBLEList);
//        mListView.setAdapter(mViewAdapter);
//        mListView.setOnItemClickListener(this);
//    }
//    
//    public void enableBle() {
//    	if(!mBLEAdapter.enable()) {
//    		Intent intent = new Intent(BluetoothAdapter.ACTION_REQUEST_ENABLE);
//    		startActivityForResult(intent, REQUEST_ENABLE_BLUETOOTH);
//    	}
//    	
//    }
//    
//    public void startScan() {
//    	Log.i("main", "start scan");
//    	mBLEList.clear();
//    	mBLEAdapter.startLeScan(this);
//    	if(stopScanTimer != null)
//    		stopScanTimer.cancel();
//    	stopScanTimer = new Timer();
//    	stopScanTimer.schedule(new TimerTask() {
//			@Override
//			public void run() {
//				Log.i("main", "stop scan");
//				mBLEAdapter.stopLeScan(MainActivity.this);
//			}
//		}, 10 * 1000);
//    }
//    
//    @Override
//    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
//    	super.onActivityResult(requestCode, resultCode, data);
//    	if (requestCode == REQUEST_ENABLE_BLUETOOTH && resultCode == Activity.RESULT_OK) {
//    		startScan();
//    	}
//    }
//
//	@Override
//	public void onLeScan(BluetoothDevice device, int rssi, byte[] scanRecord) {
//		Peripheral peripheral = new Peripheral(device, rssi, scanRecord);
//		Log.i("main", device.getName() + "@" + device.getAddress());
//		if(!mBLEList.contains(peripheral)) {
//			mBLEList.add(peripheral);
//			mViewAdapter.notifyDataSetChanged();
//		}
//			
//	}
//	
//	@Override
//	public boolean onOptionsItemSelected(MenuItem item) {
//		int itemId = item.getItemId();
//		switch (itemId) {
//		case R.id.action_search:
//			enableBle();
//			startScan();
//			return true;
//		}
//		return super.onOptionsItemSelected(item);
//	}
//	
//	@Override
//	public boolean onCreateOptionsMenu(Menu menu) {
//		MenuInflater inflater = getMenuInflater();
//		inflater.inflate(R.menu.menu_activity, menu);
//		return true;
//	}
//
//	@Override
//	public void onItemClick(AdapterView<?> arg0, View arg1, int arg2, long arg3) {
//		Peripheral peripheral = mBLEList.get(arg2);
//		//peripheral.connect(this);
//		Intent intent = new Intent(this, BLEInfoActivity.class);
//		intent.putExtra("ble_device", peripheral.getDevice());
//		startActivity(intent);
//	}
//    
//    
//    
//}
//
