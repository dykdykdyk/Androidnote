package com.example.menudemo;

import android.app.Activity;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.Toast;

public class MainActivity extends Activity {
/*
 *�Ҳ�˵��ļ�ʹ��
 */
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.main, menu);
		return true;
	}

	@Override
	public boolean onOptionsItemSelected(MenuItem item) {
		// Handle action bar item clicks here. The action bar will
		// automatically handle clicks on the Home/Up button, so long
		// as you specify a parent activity in AndroidManifest.xml.
		int id = item.getItemId();
		switch(id) {
		case R.id.action_settings:
			Toast.makeText(this, "�����������", Toast.LENGTH_LONG).show();
			break;
		case R.id.action_scan:
			Toast.makeText(this, "ɨ��", Toast.LENGTH_LONG).show();
			break;
		case R.id.action_cheers:
			Toast.makeText(this, "ˮ���������", Toast.LENGTH_LONG).show();
			break;
		case R.id.action_clear:
			Toast.makeText(this, "���", Toast.LENGTH_LONG).show();
			break;
		case R.id.action_connect:
			Toast.makeText(this, "����", Toast.LENGTH_LONG).show();
			break;
		case R.id.action_disconn:
			Toast.makeText(this, "�Ͽ�����", Toast.LENGTH_LONG).show();
			break;
		case R.id.action_health:
			Toast.makeText(this, "�����������", Toast.LENGTH_LONG).show();
			break;
		case R.id.action_message:
			Toast.makeText(this, "��Ϣ�������", Toast.LENGTH_LONG).show();
			break;
		case R.id.action_rssi:
			Toast.makeText(this, "�ź�", Toast.LENGTH_LONG).show();
			break;
		case R.id.action_sports:
			Toast.makeText(this, "�˶��������", Toast.LENGTH_LONG).show();
			break;
		case R.id.action_security:
			Toast.makeText(this, "��ȫ�������", Toast.LENGTH_LONG).show();
			break;
		}
		return super.onOptionsItemSelected(item);
	}
}