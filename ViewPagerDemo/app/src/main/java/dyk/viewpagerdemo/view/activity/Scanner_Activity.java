package dyk.viewpagerdemo.view.activity;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AlertDialog;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;

import dyk.viewpagerdemo.R;
import dyk.viewpagerdemo.ble.application.BleDevice;
import dyk.viewpagerdemo.ble.central.Scanner;
import dyk.viewpagerdemo.interfaces.BleDevicetransfer;
import dyk.viewpagerdemo.interfaces.DeviceMessageListener;
import dyk.viewpagerdemo.interfaces.InterfaceScanner;
import dyk.viewpagerdemo.view.adapter.Scanner_ListView_Adapter;

/**
 * Created by dengyangkang on 2017/5/15.
 */

public class Scanner_Activity extends Activity{
    //判断当前系统版本
    private final String TAG ="Scanner_Activity";
    public int currentapiVersion=android.os.Build.VERSION.SDK_INT;
    private  ListView listview;
    private Scanner scanner;
    private ProgressBar progressBar;
    private Scanner_ListView_Adapter myadapter;//listview适配器
    private ArrayList<BleDevice> mBLEList;//存放扫描到的设备信息的集合
    private Map<String, Integer> rssiMap;//信号集合
    private boolean scaning = false; // 是否正在扫描
    private TextView tv,scanner_text;
    private BleDevice dBleDevice; // 当前正在操作的设备
    private String dAddress; // 操作当前的设备mac地址
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.scanner_activity);
        CheckSystemVersion();
        initView();//初始化界面
        scan();//初始化扫描监听
        scanLeDevice();//开始扫描
    }
    private void  initView(){
        progressBar =(ProgressBar)findViewById(R.id.progressbar);
        listview =(ListView) findViewById(R.id.listview);
        tv =(TextView) findViewById(R.id.tv);
        scanner_text =(TextView) findViewById(R.id.scanner_text);
        mBLEList = new ArrayList<>();
        rssiMap =new LinkedHashMap<String, Integer>();
        myadapter =new Scanner_ListView_Adapter(this,mBLEList,rssiMap);
        listview.setAdapter(myadapter);
        listview.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                if(scaning)
                    stopScan();//先判断是否正在扫描
                 tv.setText(R.string.connection);
                 dBleDevice = mBLEList.get(position);
                 dAddress =dBleDevice.getAddress();
                addDevice(dBleDevice);
            }
        });
        //扫描按钮
        scanner_text.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                scanLeDevice();
            }
        });
    }

    /***
     * 添加设备，每连接一个设备就把设备添加到集合里面，方便管理
     * 连接设备
     */
    private void addDevice(final BleDevice device){
        device.connect(); // 不要同时连几个蓝牙设备，要等连接成功后再连接下一个
        device.setDeviceMessageListener(new DeviceMessageListener() {
            @Override
            public void onSendResult(String address, int cmd, byte[] data) {
                Log.i("收到数据:", "address  "+ address);
                if(dAddress.equals(address)){
                    device.setBleDevicetransfer(new BleDevicetransfer() {
                        @Override
                        public void Devicetransfer(BleDevice Ble) {

                        }
                    });
                    startActivity(new Intent(Scanner_Activity.this,Main_Activity.class));
                }
            }
        });
    }
    private void scanLeDevice(){
        if(mBLEList !=null){
            mBLEList.clear();
        }
        if(scaning)
            stopScan();
        scanner.startScan(10); //扫描7秒
    }
    /**
     * 停止扫描
     */
    private void stopScan(){
        scaning =false;
        scanner.stopScan();
    }
    private void scan() {
        //初始化扫描的监听
        scanner = new Scanner(this);
        scanner.setScanner(new InterfaceScanner() {
            @Override
            public void onScanResult(final int result, final BleDevice bleDevice, final int rssi, final byte[] scanRecod) {
                if(Scanner_Activity.this ==null){//有的手机会出现为空的情况
                    return;
                }
                Scanner_Activity.this.runOnUiThread(new Runnable() {
                    @Override
                    public void run() {
                        if (result == 0) {
                            progressBar.setVisibility(View.VISIBLE);
                            tv.setText(R.string.connecting_device);
                            scaning = true;
                            System.out.println("找到了device:"
                                    + bleDevice.getName() + " Rssi : "
                                    + rssi + "" + "Address : "
                                    + bleDevice.getAddress());
                            for(int i=0;i<mBLEList.size();i++) {
                                if ((mBLEList.get(i).getAddress()).equals(bleDevice.getAddress())) {
                                    break;
                                } else if (i == mBLEList.size() - 1) {
                                    if (!(mBLEList.get(i).getAddress()).equals(bleDevice.getAddress())) {
                                        if (bleDevice == null) {
                                            Toast.makeText(Scanner_Activity.this, "请重新扫描!", Toast.LENGTH_LONG).show();
                                            return;
                                        }
                                        mBLEList.add(bleDevice);
                                        rssiMap.put(bleDevice.getAddress(), rssi);
                                    }
                                }
                            }
                            if(mBLEList.size() ==0 ){
                                if(bleDevice  == null){
                                    Toast.makeText(Scanner_Activity.this,"请重新扫描!",Toast.LENGTH_LONG).show();
                                    return ;
                                }
                                    mBLEList.add(bleDevice);
                                    rssiMap.put(bleDevice.getAddress(), rssi);
                            }
                            myadapter.notifyDataSetChanged();
                        } else if (result == 1) {
                            progressBar.setVisibility(View.GONE);
                            // 扫描结束

                            scaning = false;
                            if (mBLEList.size() <= 0) {
                                tv.setText("找不到设备");
                                tv.setVisibility(View.VISIBLE);
                            } else {
                                tv.setText(R.string.click_search);
                            }

                        }
                    }
                });
            }
        });
    }
    //判断当前手机系统版本如果低于Android版本4.4，提示用户不支持，退出软件。
    public void CheckSystemVersion() {
        currentapiVersion = android.os.Build.VERSION.SDK_INT;
        if (currentapiVersion < 19) {
            AlertDialog.Builder builder = new AlertDialog.Builder(this);
            builder.setMessage("您的系统版本低于Android4.4，软件不支持！");
            builder.setTitle("提示");
            builder.setPositiveButton("确定", new DialogInterface.OnClickListener() {
                @Override
                public void onClick(DialogInterface dialog, int which) {
                    finish();
                }
            });
            builder.create().show();
        }
    }
}
