package com.example.virtualcall;

import android.app.admin.DeviceAdminReceiver;
import android.app.admin.DevicePolicyManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;

public class Dar extends DeviceAdminReceiver{
	int a=1;
	public int getA() {
		return a;
	}
	public void setA(int a) {
		this.a = a;
	}
	

	public static ComponentName getCn(Context context){
		return new ComponentName(context, Dar.class);
	}

	@Override
	public void onEnabled(Context context, Intent intent) {
		System.out.println("111");
		a=2;
		System.out.println(a);
		setA(a);
		System.out.println(getA());
		intent=new Intent(context,LockScreenActivity.class);
		 intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		context.startActivity(intent);
		super.onEnabled(context, intent);
	}
	

	@Override
	public void onDisabled(Context context, Intent intent) {
		System.out.println("222");
		// TODO Auto-generated method stub
		super.onDisabled(context, intent);
	}
}
