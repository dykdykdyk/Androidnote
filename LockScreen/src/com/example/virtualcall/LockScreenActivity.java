package com.example.virtualcall;

import java.util.Timer;
import java.util.TimerTask;


import android.app.Activity;
import android.app.admin.DevicePolicyManager;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;

public class LockScreenActivity extends Activity {

	private DevicePolicyManager devicePolicyManager=null;
    private static final int REQUEST_CODE_ADD_DEVICE_ADMIN=100;
    public Timer timer = new Timer();
    Dar d=new Dar();
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		devicePolicyManager = (DevicePolicyManager) getSystemService(DEVICE_POLICY_SERVICE);
		if (devicePolicyManager.isAdminActive(Dar.getCn(this))) {
			devicePolicyManager.lockNow();
			finish();
		}else{
			System.out.println("   an2");
			startAddDeviceAdminAty();
		}
		setContentView(R.layout.activity_lockscreen);
		System.out.println(d.getA()+" L");
	}
	private void startAddDeviceAdminAty(){
    	Intent i = new Intent(DevicePolicyManager.ACTION_ADD_DEVICE_ADMIN);
		i.putExtra(DevicePolicyManager.EXTRA_DEVICE_ADMIN,
                Dar.getCn(this));
        i.putExtra(DevicePolicyManager.EXTRA_ADD_EXPLANATION,
                "");
        System.out.println("an5");
		startActivityForResult(i, REQUEST_CODE_ADD_DEVICE_ADMIN);
		finish();
    }
	@Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {

    	if (resultCode==Activity.RESULT_OK) {
    		devicePolicyManager.lockNow();
    		System.out.println("   an3");
    		finish();
		}else{
			System.out.println("   an4");
			startAddDeviceAdminAty();
		}

    	super.onActivityResult(requestCode, resultCode, data);
    }
	 @Override
	    protected void onPause() {
//	    	finish();
	    	super.onPause();
	    }

	    @Override
	    public boolean onCreateOptionsMenu(Menu menu) {
//	        getMenuInflater().inflate(R.menu.activity_main, menu);
	        return true;
	    }

	    
}
