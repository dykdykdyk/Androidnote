package com.android5source.administrator.testdemo2;

import android.app.Activity;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.widget.Button;

public class MainActivity2 extends Activity {

    Button b;
    String BleDeviceaddress;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.dffg2);
        BleDeviceaddress = StorageSharedPreferenced.getDataString(UtilTools.DEVICE_ADDRESS);
    }
}
