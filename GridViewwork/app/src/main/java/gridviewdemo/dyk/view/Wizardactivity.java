package gridviewdemo.dyk.view;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothManager;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.annotation.Nullable;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;

import gridviewdemo.dyk.application.BleDevice;
import gridviewdemo.dyk.gridviewdemo.R;

/**
 * Created by Administrator on 2017/3/24.
 * 设置向导界面
 */

public class Wizardactivity extends AppCompatActivity implements View.OnClickListener,FragOne.titleSelectInterface
        ,FragTwo.BleDeviceTransmit{
    Button backbutton;
    FragmentManager manager;
    BleDevice mBLEDevice;
    private BluetoothAdapter bluetoothAdapter;
    FragOne fragment1;
    FragTwo fragment2;
    FragThree fragment3;
    FragFour fragment4;
    FragFive fragment5;
    FragSix fragment6;
    FragSeven fragment7;
    int status;
    private static final int REQUEST_ENABLE_BLUETOOTH = 100;
    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.wizard);
        backbutton =(Button)findViewById(R.id.backbutton);
        backbutton.setOnClickListener(this);
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar_wizard);
        setSupportActionBar(toolbar);
        /**动态添加Fragment主要分为4步
         * 1.获取到FragmentManager，在V4包中通过getSupportFragmentManager，在系统中原生的Fragment是通过getFragmentManager获得的。
         2.开启一个事务，通过调用beginTransaction方法开启。
         3.向容器内加入Fragment，一般使用add或者replace方法实现，需要传入容器的id和Fragment的实例。
         4.提交事务，调用commit方法提交。
         */
         manager = getSupportFragmentManager();
        FragmentTransaction    transaction = manager.beginTransaction();
         fragment1 = new FragOne();
        fragment2 = new FragTwo();
        fragment3 = new FragThree();
        fragment4 = new FragFour();
        fragment5 = new FragFive();
        fragment6 = new FragSix();
        fragment7 = new FragSeven();
        transaction.add(R.id.fragment_container, fragment1,"11");
        transaction.commit();
        enableBlue();
    }
    /**
     * 判断蓝牙是否开启，否则开启蓝牙
     */
    public boolean enableBlue() {
        BluetoothManager manager = (BluetoothManager)
                getSystemService(Context.BLUETOOTH_SERVICE);
        bluetoothAdapter = manager.getAdapter();
        if (!bluetoothAdapter.isEnabled()) {
            Intent intent = new Intent(BluetoothAdapter.ACTION_REQUEST_ENABLE);
            startActivityForResult(intent, REQUEST_ENABLE_BLUETOOTH);
        }
        return bluetoothAdapter.isEnabled();
    }
    /***
     * 接收选择的结果
     */
    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        // TODO Auto-generated method stub
        super.onActivityResult(requestCode, resultCode, data);
        switch (requestCode) {
            case REQUEST_ENABLE_BLUETOOTH:
                if (resultCode == RESULT_OK) {
                    // 刚打开蓝牙实际还不能立马就能用
                } else {
                    Toast.makeText(this, "请打开蓝牙", 1000).show();
                }
                break;
            default:
                break;
        }
    }
    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.wizard_main, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        int id = item.getItemId();
        if (id == R.id.action_scan) {
            return true;
        }
        return super.onOptionsItemSelected(item);
    }

    /**
     * Called when a view has been clicked.
     *
     * @param v The view that was clicked.
     */
    @Override
    public void onClick(View v) {
        switch (v.getId()){
            case R.id.backbutton :
                Log.i("TAG","backbutton");
                    startActivity(new Intent(this,MainActivity.class));
                break;
        }
    }
    @Override
    public void onTitleSelect(String title) {
        Log.i("Wizardactivity","12800000000000000:   "+title);
        if(title.equals("1")){
            FragmentTransaction    transaction = manager.beginTransaction();
            transaction.replace(R.id.fragment_container, fragment2,"11");
            transaction.commit();
        }else  if(title.equals("2next")){
            FragmentTransaction    transaction = manager.beginTransaction();
            transaction.replace(R.id.fragment_container, fragment3,"11");
            transaction.commit();
        }else  if(title.equals("2back")){
            FragmentTransaction    transaction = manager.beginTransaction();
            transaction.replace(R.id.fragment_container, fragment1,"11");
            transaction.commit();
        }else  if(title.equals("3wlan")){
            //无线模式
            FragmentTransaction    transaction = manager.beginTransaction();
            transaction.replace(R.id.fragment_container, fragment5,"11");
            transaction.commit();
        }else  if(title.equals("3Wired")){
            //有线模式
            FragmentTransaction    transaction = manager.beginTransaction();
            transaction.replace(R.id.fragment_container, fragment4,"11");
            transaction.commit();
        }else  if(title.equals("3back")){
            FragmentTransaction    transaction = manager.beginTransaction();
            transaction.replace(R.id.fragment_container, fragment2,"11");
            transaction.commit();
        }else  if(title.equals("4back")){
            //有线模式
            FragmentTransaction    transaction = manager.beginTransaction();
            transaction.replace(R.id.fragment_container, fragment3,"11");
            transaction.commit();
        }else  if(title.equals("4next")){
            FragmentTransaction    transaction = manager.beginTransaction();
            transaction.replace(R.id.fragment_container, fragment6,"11");
            transaction.commit();
        }else  if(title.equals("5back")){
            //无线模式
            FragmentTransaction    transaction = manager.beginTransaction();
            transaction.replace(R.id.fragment_container, fragment3,"11");
            transaction.commit();
        }else  if(title.equals("5next")){
            status =1;
            FragmentTransaction    transaction = manager.beginTransaction();
            transaction.replace(R.id.fragment_container, fragment7,"11");
            transaction.commit();
        }else  if(title.equals("6back")){
            //有线模式
            FragmentTransaction    transaction = manager.beginTransaction();
            transaction.replace(R.id.fragment_container, fragment4,"11");
            transaction.commit();
        }else  if(title.equals("6next")){
            status =2;
            FragmentTransaction    transaction = manager.beginTransaction();
            transaction.replace(R.id.fragment_container, fragment7,"11");
            transaction.commit();
        }else  if(title.equals("7back")){
            if(   status == 1){
                FragmentTransaction    transaction = manager.beginTransaction();
                transaction.replace(R.id.fragment_container, fragment5,"11");
                transaction.commit();
            }else if(status == 2){
                //有线模式
                FragmentTransaction    transaction = manager.beginTransaction();
                transaction.replace(R.id.fragment_container, fragment6,"11");
                transaction.commit();
            }
        }else  if(title.equals("7next")){
            startActivity(new Intent(this,MainActivity.class));
        }

    }

    @Override
    public void onTitleSelect(BleDevice title) {
        Log.i("Wizardactivity","BleDevice:   "+title);
        fragment3.setText(title);
        fragment4.setText(title);
        fragment5.setText(title);
//        fragment6.setText(title);
        mBLEDevice =title;
    }


}
