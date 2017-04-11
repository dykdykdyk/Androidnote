package gridviewdemo.dyk.view;

import android.app.AlertDialog;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Color;
import android.net.Uri;
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
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;

import java.io.File;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import gridviewdemo.dyk.adapter.ListViewAdapter;
import gridviewdemo.dyk.adapter.MyAdapter;
import gridviewdemo.dyk.application.BleDevice;
import gridviewdemo.dyk.gridviewdemo.R;
import gridviewdemo.dyk.interfaces.DeviceMessageListener;
import gridviewdemo.dyk.interfaces.InterfaceScanner;
import gridviewdemo.dyk.manager.Peripheral;
import gridviewdemo.dyk.manager.Scanner;
import gridviewdemo.dyk.service.DfuService;
import no.nordicsemi.android.dfu.DfuServiceInitiator;

import static gridviewdemo.dyk.gridviewdemo.R.id.bt_upload_file;

/**
 * Created by dengyangkang on 2017/4/5.
 * 空中升级
 */

public class DFUActivity extends AppCompatActivity{
    private String dAddress; // 操作当前的设备mac地址
    BluetoothAdapter bluetoothAdapter;
    private BluetoothAdapter myBluetoothAdapter;
    private BleDevice dBleDevice; // 当前正在操作的设备
    private BluetoothDevice mDevice;
    private static final int SELECT_FILE_REQ = 1;
    private ArrayList<String> mBLEListlist;//存放扫描到的设备信息的集合
    private Uri mFileStreamUri;
    private int mFileType;
    private String mFilePath;
    String mAddress,mDeviceName;
    Peripheral mPeripheral;
    @BindView(R.id.toolbar)
    Toolbar toolbar;
    @BindView(R.id.fileName)
    TextView fileName;
    @BindView(R.id.fileType)
    TextView fileType;
    @BindView(R.id.fileSize)
    TextView fileSize;
    @BindView(R.id.fileStatus)
    TextView fileStatus;
    @BindView(R.id.bt_select_file)
    Button btSelectFile;
    @BindView(bt_upload_file)
    Button btUploadFile;
    private MenuItem itemScan;
    ListView listview,lv;
    Map<String, Integer> rssiMap =new LinkedHashMap<String, Integer>();
    TextView tv;
    ProgressBar pbar;
    private Scanner scanner;
    private ArrayList<BleDevice> mBLEList;//存放扫描到的设备信息的集合
    ListViewAdapter mydater;
    MyAdapter mydaterlist;
    MyHandler2 mHandler ;//异步
    private boolean scaning = false; // 是否正在扫描
    private BluetoothManager myBluetoothManager;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.dfu_main);
        ButterKnife.bind(this);
        myBluetoothManager = (BluetoothManager) getSystemService(Context.BLUETOOTH_SERVICE);
        myBluetoothAdapter = myBluetoothManager.getAdapter();
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        listview= (ListView)findViewById(R.id.list);
        mHandler =new  MyHandler2();
        mBLEListlist =new ArrayList<>();
        mydaterlist = new MyAdapter(this, mBLEListlist);
        listview.setAdapter(mydaterlist);
        toolbar.setBackgroundColor(Color.parseColor("#0081B7"));
        toolbar.setTitle("DFU");
        setSupportActionBar(toolbar);
        initScanDialog();
        init();
    }
    class MyHandler2 extends Handler {
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
    @OnClick(R.id.bt_select_file)
    public void test(){

        openFileChooser();
//        fileName.setText("dfdsssssssssss");
    }
    @OnClick(R.id.bt_upload_file)
    public void test2(){
        Log.i("TAG","上传中。。。");
        Log.i("TAG","   mPeripheral.mDevice.getAddress()：  "+ mPeripheral.mDevice.getAddress()+
                "   mPeripheral.mDevice.getName()： "+ mPeripheral.mDevice.getName()+
                "   mFileStreamUri：  "+mFileStreamUri+"    mFilePath：   "+mFilePath);
       if(!dBleDevice.isConnecte()){
           Toast.makeText(this,"请先连接基站",Toast.LENGTH_LONG).show();
            return;
       }
        DfuServiceInitiator starter = new DfuServiceInitiator(
                mPeripheral.mDevice.getAddress()).setDeviceName(
                mPeripheral.mDevice.getName())
                .setKeepBond(false);
        starter.setZip(mFileStreamUri, mFilePath);
        starter.start(DFUActivity.this, DfuService.class);
    }
    private AlertDialog scanDialog;
    private void init(){
//        initSecurityDialog();
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
    private void initScanDialog() {
        AlertDialog.Builder scanbuilder = new AlertDialog.Builder(this);
        View view = getLayoutInflater().inflate(R.layout.device_list, null);
        scanbuilder.setTitle("扫描设备");
        mBLEList = new ArrayList<>();
        lv = (ListView) view.findViewById(R.id.istview);
        pbar = (ProgressBar) view.findViewById(R.id.pbar);
        tv = (TextView) view.findViewById(R.id.tv);
        pbar.setVisibility(View.VISIBLE);
        mydater = new ListViewAdapter(this, mBLEList, rssiMap);
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
                    Field field = dialog.getClass().getSuperclass()
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
                dAddress = dBleDevice.getAddress();
                addDevice(dBleDevice);
                scanDialog.dismiss();
                scanDialog.cancel();
            }
        });
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
                Log.i("收到数据:", "10:02:"+ Arrays.toString(data));
                mBLEListlist.add(address);
                Message message=new Message();
                message.what=1;
                mHandler.sendMessage(message);
            }
            @Override
            public void onSendHistory(String address, int cmd, List<byte[]> historyData) {
            }
        });
        mydaterlist.notifyDataSetChanged();
    }
    /***
     * 添加设备，每连接一个设备就把设备添加到集合里面，方便管理
     */
    private void addDevice(final BleDevice device){
        final String address =device.getAddress();
        connect(device); // 不要同时连几个蓝牙设备，要等连接成功后再连接下一个
    }
    /**
     * 停止扫描
     */
    private void stopScan(){
        scaning =false;
        scanner.stopScan();
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
     * 选择上传文件
     */
    private void openFileChooser(){
        Intent intent =new Intent(Intent.ACTION_GET_CONTENT);
        intent.setType("*/*");
        intent.addCategory(Intent.CATEGORY_OPENABLE);
        try {
            startActivityForResult(
                    Intent.createChooser(intent, "Select a File to Upload"),
                    SELECT_FILE_REQ);
        } catch (android.content.ActivityNotFoundException ex) {
            Toast.makeText(this, "Please install a File Manager.",
                    Toast.LENGTH_SHORT).show();
        }
    }
 /*
   接受选择的结果
 */
    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
//        super.onActivityResult(requestCode, resultCode, data);
        Log.i("DFUActivity",
                ",data:"+data);
       switch(requestCode){
           case SELECT_FILE_REQ:
                if(resultCode == RESULT_OK) {
                    Uri uri = data.getData();
                    mFileStreamUri = uri;
                    Log.i("uri", " uri.getScheme() : " + uri.getScheme());
                    Log.i("uri", " uri : " + uri);
                    if (uri.getScheme().equals("file")) {
                        String path = uri.getPath();
                        File file = new File(path);
                        mFilePath = path;
                        String type = getExtension(file);
                        updateFileInfo(file.getName(), file.length(), mFileType,
                                type);
                    }
                }
                }
        }

    /***
     * 更新dialog UI
     *
     * @param name
     * @param length
     * @param mFileType2
     * @param mfileType
     */
    private void updateFileInfo(String name, long length, int mFileType2,
                                String mfileType) {
        if(dBleDevice == null){
            return;
        }
        if(bluetoothAdapter == null){
            BluetoothManager bluetoothManager = (BluetoothManager)
                    getSystemService(Context.BLUETOOTH_SERVICE);
            bluetoothAdapter = bluetoothManager.getAdapter();
        }
        this.mDevice =bluetoothAdapter.getRemoteDevice(dBleDevice.getAddress());
        mPeripheral = new Peripheral(mDevice);
        fileName.setText(name);
        fileSize.setText((int) length + "bytes");
        fileType.setText(mfileType);
        fileStatus.setText("invalid file");
        btUploadFile.setEnabled(true);

        mAddress = mPeripheral.mDevice.getAddress();
        mDeviceName = mPeripheral.mDevice.getName();
        startDfuservice();
    }
    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.dfu_main, menu);
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
            case R.id.action_scan:
                Toast.makeText(this, "扫描", Toast.LENGTH_LONG).show();
                itemScan= item;
                Toast.makeText(this, "扫描", Toast.LENGTH_LONG).show();
                scanDialog.show();;
                scanLeDevice();
                break;
            case R.id.action_clear:
                Toast.makeText(this, "清除", Toast.LENGTH_LONG).show();
                break;
            case R.id.action_connect:
                Toast.makeText(this, "连接", Toast.LENGTH_LONG).show();
                break;
            case R.id.action_disconn:
                Toast.makeText(this, "断开连接", Toast.LENGTH_LONG).show();
                break;
            case R.id.action_rssi:
                Toast.makeText(this, "信号", Toast.LENGTH_LONG).show();
                break;
            case R.id.action_security:
//                Toast.makeText(this, "安全相关命令", Toast.LENGTH_LONG).show();
//                securityDialog.show();;
                break;
        }
        return super.onOptionsItemSelected(item);
    }
    /**
     * 启动Dfuservice
     */
    public void startDfuservice() {

        // Start DFU service with data provided in the intent
        final Intent service = new Intent(this, DfuService.class);
        service.putExtra(DfuService.EXTRA_DEVICE_ADDRESS, mAddress);
        service.putExtra(DfuService.EXTRA_DEVICE_NAME, mDeviceName);
        service.putExtra(DfuService.EXTRA_FILE_TYPE, 0);
        service.putExtra(DfuService.EXTRA_FILE_PATH, mFilePath);
        // if (intent.hasExtra(DfuService.EXTRA_INIT_FILE_PATH))
        // service.putExtra(DfuService.EXTRA_INIT_FILE_PATH, initPath);
        service.putExtra(DfuService.EXTRA_KEEP_BOND, false);
        startService(service);
    }
    /***
     * 获取文件后缀名
     *
     * @param file
     * @return
     */
    private String getExtension(File file) {
        String suffix = "";
        String name = file.getName();
        final int idx = name.lastIndexOf(".");
        if (idx > 0) {
            suffix = name.substring(idx + 1);
        }
        return suffix;
    }
}
