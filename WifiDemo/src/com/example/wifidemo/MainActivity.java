package com.example.wifidemo;

import java.util.ArrayList;
import java.util.List;

import android.app.Activity;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ListView;

public class MainActivity extends Activity {
	Button button;
	ListView listview;
	ArrayAdapter<String> adapter;
	List<String>  stringdata =new ArrayList<String>();
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		button =(Button)findViewById(R.id.button);
		listview =(ListView)findViewById(R.id.listview);
		adapter =new ArrayAdapter<String>(this, android.R.layout.simple_list_item_1, stringdata);
		listview.setAdapter(adapter);
		button.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				WifiManager wifiManger =(WifiManager) getSystemService(WIFI_SERVICE);
//				WifiManager wifiManager =(WifiManager) getSystemService(WIFI_SERVICE);
				WifiInfo wifiInfo =wifiManger.getConnectionInfo();
				 Log.d("wifiInfo", wifiInfo.toString());  
	               Log.d("SSID",wifiInfo.getSSID());  
	               stringdata.add(wifiInfo.toString());
	               stringdata.add(wifiInfo.getSSID());
				
			}
		});
	}
}
