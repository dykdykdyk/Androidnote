package com.administratorinterfacedemo.interfacedemo;

import android.app.Activity;
import android.os.Bundle;
import android.util.Log;

public class MainActivity extends Activity implements Listener{

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        SendData data = new SendData(this);
        data.Testsends();//启动发送
    }
    @Override
    public void send(String s) {
        Log.e("TAG启动发送",""+s);
    }
}
