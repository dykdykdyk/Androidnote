/*
       Licensed to the Apache Software Foundation (ASF) under one
       or more contributor license agreements.  See the NOTICE file
       distributed with this work for additional information
       regarding copyright ownership.  The ASF licenses this file
       to you under the Apache License, Version 2.0 (the
       "License"); you may not use this file except in compliance
       with the License.  You may obtain a copy of the License at

         http://www.apache.org/licenses/LICENSE-2.0

       Unless required by applicable law or agreed to in writing,
       software distributed under the License is distributed on an
       "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
       KIND, either express or implied.  See the License for the
       specific language governing permissions and limitations
       under the License.
 */

package com.ionicframework.uband22016;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.provider.Settings;
import android.text.TextUtils;

import org.apache.cordova.*;


public class MainActivity extends CordovaActivity
{
//	private AndroidANCSService mService;
	private static final String ENABLED_NOTIFICATION_LISTENERS = "enabled_notification_listeners";
    int REQUEST_ENABLE_BLUETOOTH = 3;
	@Override
    public void onCreate(Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);
        // Set by <content src="index.html" /> in config.xml
        loadUrl(launchUrl);
        if (!isEnabled()) { //打开通知栏权限设置
   			Intent intent = new Intent(
   					"android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS");
   			startActivity(intent);
   		} else {
//   			Toast.makeText(this, "已开启通知栏监听权限", Toast.LENGTH_LONG).show();
   			System.out.println("已开启通知栏监听权限...");
   		}
   		toggleNotificationListenerService();
   		enableBlue();
    }
	@Override
	protected void onStart() {
		// TODO Auto-generated method stub
		super.onStart();
	}
	/**
	 * 通知栏监听权限
	 * @return
	 */
	private boolean isEnabled() {
		String pkgName =getPackageName();
		final String flat = Settings.Secure.getString(getContentResolver(),
				ENABLED_NOTIFICATION_LISTENERS);
		if (!TextUtils.isEmpty(flat)) {
			final String[] names = flat.split(":");
			for (int i = 0; i < names.length; i++) {
				final ComponentName cn = ComponentName
						.unflattenFromString(names[i]);
				if (cn != null) {
					if (TextUtils.equals(pkgName, cn.getPackageName())) {
						return true;
					}
				}
			}
		}
		return false;
	}
	/**
	 * 把应用的NotificationListenerService实现类disable再enable，即可触发系统rebind操作。
	 * 当进程被干掉的时候会收不到信息，需要调用该方法重新注册服务
	 */
	 private void toggleNotificationListenerService() {
	        PackageManager pm = getPackageManager();
	        pm.setComponentEnabledSetting(new ComponentName(this, com.bde.ancs.lib.NotificationService.class),
	                PackageManager.COMPONENT_ENABLED_STATE_DISABLED, PackageManager.DONT_KILL_APP);
	        pm.setComponentEnabledSetting(new ComponentName(this, com.bde.ancs.lib.NotificationService.class),
	                PackageManager.COMPONENT_ENABLED_STATE_ENABLED, PackageManager.DONT_KILL_APP);
     }
		/**
		 * 判断蓝牙是否开启，否则开启蓝牙
		 */
		private boolean enableBlue() {
			BluetoothManager manager = (BluetoothManager)getSystemService(Context.BLUETOOTH_SERVICE);
			BluetoothAdapter adapter = manager.getAdapter();
			if (!adapter.isEnabled()) {
				Intent intent = new Intent(BluetoothAdapter.ACTION_REQUEST_ENABLE);
				startActivityForResult(intent,REQUEST_ENABLE_BLUETOOTH);
				return false;
			}
			return true;

		}
}
