package gridviewdemo.dyk.view;

import android.app.AlertDialog;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothManager;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Color;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;

import gridviewdemo.dyk.adapter.ListViewAdapter;
import gridviewdemo.dyk.adapter.MyAdapter;
import gridviewdemo.dyk.application.BleDevice;
import gridviewdemo.dyk.gridviewdemo.R;
import gridviewdemo.dyk.interfaces.DeviceMessageListener;
import gridviewdemo.dyk.interfaces.InterfaceScanner;
import gridviewdemo.dyk.manager.Scanner;

import static gridviewdemo.dyk.gridviewdemo.R.id.edittext;
import static gridviewdemo.dyk.utils.Utils.bytetoarray;

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
    Timer timer5;
    private ArrayList<String> mBLEListlist;//存放扫描到的设备信息的集合
    private Scanner scanner;
    private static final int REQUEST_ENABLE_BLUETOOTH = 1001;
  //  Map<String, BleDevice> mBLEList = new LinkedHashMap<String, BleDevice>();
    //添加数据 mBLEDevices.put(device.getAddress(), device);mBLEDevices.get(dAddress);
    private ArrayList<BleDevice> mBLEList;//存放扫描到的设备信息的集合
    Map<String, Integer> rssiMap =new LinkedHashMap<String, Integer>();
    private MenuItem itemScan;
    boolean testname =false;
    private BleDevice dBleDevice; // 当前正在操作的设备
    private boolean scaning = false; // 是否正在扫描
    ListViewAdapter mydater;
    MyHandler3  mHandler ;//异步
    MyAdapter mydaterlist;
    EditText editText;
    Button button;
    public int currentapiVersion=android.os.Build.VERSION.SDK_INT;
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
    }
    private void init(){
        initSecurityDialog();
        initScanDialog();
        mHandler =new MyHandler3();
        mBLEListlist =new ArrayList<>();
        editText =(EditText)findViewById(edittext) ;
        mydaterlist = new MyAdapter(this, mBLEListlist);
        listview= (ListView)findViewById(R.id.listview);
        listview.setAdapter(mydaterlist);
        button =(Button)findViewById(R.id.button);
        button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if(editText.getText().toString().equals("")){
                    Toast.makeText(getApplicationContext(), "请在输入框中输入命令后重试", Toast.LENGTH_LONG).show();
                    return ;
                }else{
                    String setIp =editText.getText().toString().trim();
                    Log.i("FragFour","edit1:"+setIp);
                    mBLEListlist.add("发送命令:"+setIp);
                    mydaterlist.notifyDataSetChanged();
                    strToByte(setIp);
                    setButtonsFalse();
                }
            }
        });
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
                            for(int i=0;i<mBLEList.size();i++){
                                if((mBLEList.get(i).getAddress()).equals(bleDevice.getAddress())){
                                    break;
                                }else if(i == mBLEList.size() -1){
                                    if( !(mBLEList.get(i).getAddress()).equals(bleDevice.getAddress())){
                                        if(bleDevice  == null){
                                            Toast.makeText(UARTactivity.this,"请重新扫描!",Toast.LENGTH_LONG).show();
                                            return ;
                                        }
                                        if(bleDevice.getName().equals("S1"))
                                            mBLEList.add(bleDevice);
                                    }
                                }
                            }
                            if(mBLEList.size() ==0 ) {
                                if (bleDevice == null) {
                                    Toast.makeText(UARTactivity.this, "请重新扫描!", Toast.LENGTH_LONG).show();
                                    return;
                                }
                                if (bleDevice.getName().equals("S1")) {
                                    mBLEList.add(bleDevice);
                                }
                            }
//                          if(!mBLEList.contains(bleDevice)){
//                              mBLEList.add(bleDevice);
//                          }
                            if(!rssiMap.containsKey(rssi)){
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
    //设置客户3秒钟之内只能发送一条命令
    public void setButtonsFalse(){
        button.setClickable(false);
        timer5=new Timer();
        TimerTask task = new TimerTask(){
            @Override
            public void run() {
                button.setClickable(true);
            }
        };
        timer5.schedule(task, 3000);
    }
    class MyHandler3 extends Handler {
        @Override
        public void handleMessage(Message msg) {
            // TODO Auto-generated method stub
            super.handleMessage(msg);
            switch (msg.what) {
                case 1:
                    mydaterlist.notifyDataSetChanged();
                    try {
                        Thread.sleep(500);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                    break;
            }
        }
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
        mBLEListlist.add("开始连接:"+mBleDev.getAddress());
        Log.i("TAG","开始链接");
        mBleDev.setDeviceMessageListener(new DeviceMessageListener() {
            @Override
            public void onSendResult(String address, int cmd, byte[] data) {
                Log.i("收到数据:", "10:02:"+Arrays.toString(data));
                mBLEListlist.add(address);
                Message message=new Message();
                message.what=1;
                mHandler.sendMessage(message);
            }
        });
        mydaterlist.notifyDataSetChanged();
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
        getMenuInflater().inflate(R.menu.menu_main, menu);
        return true;
    }

    public  void strToByte(String str){
        byte[][] arrs=bytetoarray(str);
        write( arrs[0].length, 0, arrs[0]);
        if(arrs.length ==2){
            try {
                if(currentapiVersion >23){
                    Thread.sleep(2000);
                }else if(currentapiVersion <24){
                    Thread.sleep(800);
                }
                write(arrs[1].length,0,arrs[1]);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }
    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        final byte[] bluAddr = BluetoothAdapter.getDefaultAdapter()
                .getAddress().replace(":", "").getBytes();
        int id = item.getItemId();
        switch(id) {
            case R.id.action_scan:
                itemScan= item;
                Toast.makeText(this, "扫描", Toast.LENGTH_LONG).show();
                scanDialog.show();;
                scanLeDevice();
                break;
            case R.id.AT_VER:
                editText.setText("AT+VER?");
                editText.setSelection(editText.getText().toString().length());
                break;
            case R.id.AT_EID:
                editText.setText("AT+EID?");
                editText.setSelection(editText.getText().toString().length());
                break;
            case R.id.AT_MAC:
                editText.setText("AT+MAC?");
                editText.setSelection(editText.getText().toString().length());
                break;
            case R.id.AT_IP:
                editText.setText("AT+IP=");
                editText.setSelection(editText.getText().toString().length());
                break;
            case R.id.AT_SUB:
                editText.setText("AT+SUB?");
                editText.setSelection(editText.getText().toString().length());
                break;
            case R.id.AT_GW:
                editText.setText("AT+GW?");
                editText.setSelection(editText.getText().toString().length());
                break;
            case R.id.AT_DNS:
                    editText.setText("AT+DNS?");
                editText.setSelection(editText.getText().toString().length());
                break;
            case R.id.AT_NET:
                editText.setText("AT+NET?");
                editText.setSelection(editText.getText().toString().length());
                break;
            case R.id.AT_RST:
                editText.setText("AT+RST");
                editText.setSelection(editText.getText().toString().length());
                break;
            case R.id.AT_SRV:
                editText.setText("AT+SRV=");
                editText.setSelection(editText.getText().toString().length());
                break;
            case R.id.AT_UPDATE:
                editText.setText("AT+UPDATE");
                editText.setSelection(editText.getText().toString().length());
                break;
            case R.id.AT_MODE:
                editText.setText("AT+MODE=");
                editText.setSelection(editText.getText().toString().length());
                break;
            case R.id.AT_WMODE:
                editText.setText("AT+WMODE");
                editText.setSelection(editText.getText().toString().length());
                break;
            case R.id.AT_WSSID:
                editText.setText("AT+WSSID=");
                editText.setSelection(editText.getText().toString().length());
                break;
            case R.id.AT_WPWD:
                editText.setText("AT+WPWD=");
                editText.setSelection(editText.getText().toString().length());
                break;
            case R.id.AT_WSRV:
                editText.setText("AT+WSRV=");
                editText.setSelection(editText.getText().toString().length());
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
                        write(SUPER_BOUND_DATA.length, 0x24,
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
//                        byte[] st =strToByteArray(str);
//                        write(dAddress,st.length, 0x14, st);
                }
            }
        });
        securityDialog =builder.create();
    }
    private void write(int length, int cmd, byte[] data) {
        if(dBleDevice !=null){
            dBleDevice.write(length, cmd, data);
        }
    }
}
