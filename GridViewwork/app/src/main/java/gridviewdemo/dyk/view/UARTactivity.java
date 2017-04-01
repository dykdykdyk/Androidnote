package gridviewdemo.dyk.view;

import android.app.AlertDialog;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import gridviewdemo.dyk.adapter.ListViewAdapter;
import gridviewdemo.dyk.application.BleDevice;
import gridviewdemo.dyk.gridviewdemo.R;
import gridviewdemo.dyk.interfaces.DeviceMessageListener;
import gridviewdemo.dyk.interfaces.InterfaceScanner;
import gridviewdemo.dyk.manager.Scanner;

import static gridviewdemo.dyk.utils.Utils.strToByteArray;

/**
 * Created by Administrator on 2017/3/24.
 * 专家模式
 */

public class UARTactivity extends AppCompatActivity {
    private BluetoothManager myBluetoothManager;
    private BluetoothAdapter myBluetoothAdapter;
    TextView tv;
    private String dAddress; // 操作当前的设备mac地址
    ListView listview,lv;
    ProgressBar pbar;
    private Scanner scanner;
    private static final int REQUEST_ENABLE_BLUETOOTH = 1001;
  //  Map<String, BleDevice> mBLEList = new LinkedHashMap<String, BleDevice>();
    //添加数据 mBLEDevices.put(device.getAddress(), device);mBLEDevices.get(dAddress);
    private ArrayList<BleDevice> mBLEList;//存放扫描到的设备信息的集合
    Map<String, Integer> rssiMap =new LinkedHashMap<String, Integer>();
    private MenuItem itemScan;
    private BleDevice dBleDevice; // 当前正在操作的设备
    private boolean scaning = false; // 是否正在扫描
    ListViewAdapter mydater;
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.uart_main);
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        toolbar.setBackgroundColor(Color.parseColor("#0081B7"));
        toolbar.setTitle("UART");
        setSupportActionBar(toolbar);
        myBluetoothManager = (BluetoothManager) getSystemService(Context.BLUETOOTH_SERVICE);
        myBluetoothAdapter = myBluetoothManager.getAdapter();
        init();
//        initview();
//        initScanDialog();
    }

    @Override
    protected void onStart() {
        super.onStart();
        /**
         * 判断蓝牙是否开启
         */
        if (myBluetoothAdapter.isEnabled()) {
            System.out.println("蓝牙已开启...");
        } else {
            enableBle();
        }
        initScanDialog();
    }
    /**
     * 开启蓝牙
     */
    public void enableBle() {
        if (!myBluetoothAdapter.enable()) {
            Intent intent = new Intent(BluetoothAdapter.ACTION_REQUEST_ENABLE);
            startActivityForResult(intent, REQUEST_ENABLE_BLUETOOTH);
        }
    }
    private void init(){
        initSecurityDialog();
        //初始化扫描的监听
        scanner =new Scanner(this);
        scanner.setScanner(new InterfaceScanner() {
            @Override
            public void onScanResult(final int result, final BleDevice bleDevice,final int rssi, final byte[] scanRecod) {
                runOnUiThread(new Runnable() {
                    @Override
                    public void run() {
                        if( result == 0 ){
                            pbar.setVisibility(View.VISIBLE);
                            scaning =true;
                            System.out.println("找到了device:"
                                    + bleDevice.getName() + " Rssi : "
                                    + rssi + "" + "Address : "
                                    + bleDevice.getAddress());
                          if(!mBLEList.contains(bleDevice)){
                              mBLEList.add(bleDevice);
                          } if(!rssiMap.containsKey(rssi)){
                                rssiMap.put(bleDevice.getAddress(),rssi);
                            }
                            lv.setVisibility(View.VISIBLE);
                            mydater.notifyDataSetChanged();
                        } else if( result == 1 ){
                            // 扫描结束
                            scaning = false;
                            itemScan.setTitle("scan");
                            if (mBLEList.size() <= 0) {
                                tv.setText("找不到设备");
                                tv.setVisibility(View.VISIBLE);
                            } else {
                                tv.setVisibility(View.GONE);
                            }
                            pbar.setVisibility(View.GONE);
                        }
                    }
                });
            }
        });

    }
  private AlertDialog scanDialog;
    private void initScanDialog(){
        AlertDialog.Builder scanbuilder = new AlertDialog.Builder(this);
        View view =getLayoutInflater().inflate(R.layout.device_list, null);
        scanbuilder.setTitle("扫描设备");
        mBLEList = new ArrayList<>();
        lv=(ListView)view.findViewById(R.id.istview);
        pbar=(ProgressBar)view.findViewById(R.id.pbar);
        tv=(TextView)view.findViewById(R.id.tv);
        pbar.setVisibility(View.VISIBLE);
        mydater = new ListViewAdapter(this, mBLEList,rssiMap);
        lv.setAdapter(mydater);
        scanbuilder.setView(view);
        scanbuilder.setPositiveButton("重试",
                new DialogInterface.OnClickListener() {

            @Override
            public void onClick(DialogInterface dialog, int which) {
                try {
                    Field field = dialog.getClass().getSuperclass().getDeclaredField("mShowing");
                    field.setAccessible(true);
                    field.set(dialog, false);// true表示要关闭
                } catch (Exception e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }
                //点击后处理的方法
                tv.setVisibility(View.GONE);
                scanLeDevice();
                pbar.setVisibility(View.VISIBLE);
                // TODO Auto-generated method stub

            }
        });
        scanbuilder.setNegativeButton("取消", new DialogInterface.OnClickListener() {

            @Override
            public void onClick(DialogInterface dialog, int which) {
                stopScan();
                try {
                    Field  field = dialog.getClass().getSuperclass()
                            .getDeclaredField("mShowing");
                    field.setAccessible(true);
                    field.set(dialog, true);// true表示要关闭

                } catch (Exception e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }
                stopScan();
                scanDialog.dismiss();
                scanDialog.cancel();
            }
        });
        scanDialog = scanbuilder.create();
        lv.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int position, long id) {
                stopScan();
                try {// 下面三句控制弹框的关闭
                    Field field = scanDialog.getClass().getSuperclass()
                            .getDeclaredField("mShowing");
                    field.setAccessible(true);
                    field.set(scanDialog, true);// true表示要关闭
                } catch (Exception e) {
                    e.printStackTrace();
                }
                dBleDevice = mBLEList.get(position);
                dAddress =dBleDevice.getAddress();
                addDevice(dBleDevice);
                scanDialog.dismiss();
                scanDialog.cancel();
            }
        });
    }
    /***
     * 添加设备，每连接一个设备就把设备添加到集合里面，方便管理
     */
    private void addDevice(final BleDevice device){
        final String address =device.getAddress();
        connect(device); // 不要同时连几个蓝牙设备，要等连接成功后再连接下一个
    }
    /**
     * 连接设备
     * */
    protected void connect(BleDevice mBleDev) {
        if(scaning)
            stopScan();//先判断是否正在扫描
        mBleDev.connect();
        mBleDev.setDeviceMessageListener(new DeviceMessageListener() {
            @Override
            public void onSendResult(String address, int cmd, byte[] data) {
                Log.i("收到数据:", "10:02:"+Arrays.toString(data));
            }

            @Override
            public void onSendHistory(String address, int cmd, List<byte[]> historyData) {

            }
        });
    }
    private void scanLeDevice(){
         itemScan.setTitle("Stop Scan");
        if(mBLEList !=null){
            mBLEList.clear();
        }
        if(scaning)
            stopScan();
        scanner.startScan(8); //扫描7秒
    }

    /**
     * 停止扫描
     */
    private void stopScan(){
        scaning =false;
        scanner.stopScan();
    }
    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.menu_main, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Handle action bar item clicks here. The action bar will
        // automatically handle clicks on the Home/Up button, so long
        // as you specify a parent activity in AndroidManifest.xml.
        final byte[] bluAddr = BluetoothAdapter.getDefaultAdapter()
                .getAddress().replace(":", "").getBytes();
        int id = item.getItemId();
        switch(id) {
//            case R.id.action_settings:
//                Toast.makeText(this, "设置相关命令", Toast.LENGTH_LONG).show();
//                break;
            case R.id.action_scan:
                itemScan= item;
                Toast.makeText(this, "扫描", Toast.LENGTH_LONG).show();
                scanDialog.show();;
                scanLeDevice();
                break;
//            case R.id.action_cheers:
//                Toast.makeText(this, "水杯相关命令", Toast.LENGTH_LONG).show();
//                break;
            case R.id.action_clear:
                Toast.makeText(this, "清除", Toast.LENGTH_LONG).show();
                break;
            case R.id.action_connect:
                Toast.makeText(this, "连接", Toast.LENGTH_LONG).show();
                break;
            case R.id.action_disconn:
                Toast.makeText(this, "断开连接", Toast.LENGTH_LONG).show();
                break;
//            case R.id.action_health:
//                Toast.makeText(this, "健康相关命令", Toast.LENGTH_LONG).show();
//                break;
//            case R.id.action_message:
//                Toast.makeText(this, "消息相关命令", Toast.LENGTH_LONG).show();
//                break;
            case R.id.action_rssi:
                Toast.makeText(this, "信号", Toast.LENGTH_LONG).show();
                break;
//            case R.id.action_sports:
//                Toast.makeText(this, "运动相关命令", Toast.LENGTH_LONG).show();
//                break;
            case R.id.action_security:
//                Toast.makeText(this, "安全相关命令", Toast.LENGTH_LONG).show();
                securityDialog.show();;
                break;
        }
        return super.onOptionsItemSelected(item);
    }
    private AlertDialog securityDialog;
    private void initSecurityDialog(){
        // 因为直接把Mac地址转换成byte[]之后的长度是 17 会超出长度，所以要去掉“ ：”符号，他的长度变成
        // 12,发送的时候要发的长度是16。
        final byte[] bluAddr = BluetoothAdapter.getDefaultAdapter().getAddress()
                .replace(":","").getBytes();
        AlertDialog.Builder builder =new AlertDialog.Builder(this);
        builder.setTitle("安全相关命令");
        final String[] commants = { "手机请求删除绑定","超级绑定","用户登录请求",
                "手机请求绑定","手机请求报警"};
        builder.setItems(commants, new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which) {
                switch(which){
                    case 0:
                        //手机请求删除绑定
//                        write(dAddress, 16, 0x22, bluAddr);
                        break;
                    case 1:
                        //超级绑定
                        byte[] SUPER_BOUND_DATA = { 0x01, 0x23, 0x45, 0X67,
                                (byte) 0x89, (byte) 0xAB, (byte) 0xCD, (byte) 0xEF,
                                (byte) 0xFE, (byte) 0xDC, (byte) 0xBA, (byte) 0x98,
                                0x76, 0x54, 0x32, 0x10 };
                        Log.i("超级绑定","超级绑定");
                        write(dAddress, SUPER_BOUND_DATA.length, 0x24,
                                SUPER_BOUND_DATA);
                        break;
                    case 2:
                        //用户登录请求
//                        write(dAddress, 16, 0x23, bluAddr);
                        break;
                    case 3:
                        //手机请求绑定
//                        write(dAddress, 16, 0x21, bluAddr);
                        break;
                    case 4:
                        Log.i("请求报警","请求报警");
                        String str = "+12345678910";
                        byte[] st =strToByteArray(str);
                        write(dAddress,st.length, 0x14, st);
                }
            }
        });
        securityDialog =builder.create();
    }
    private void write(String address, int length, int cmd, byte[] data) {
//        BleDevice bleDevice = mBLEDevice.get(address);
        dBleDevice.write(length, cmd, data);
    }
}
