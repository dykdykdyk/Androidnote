package gridviewdemo.dyk.view;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothManager;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

import java.io.File;

import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import gridviewdemo.dyk.application.BleDevice;
import gridviewdemo.dyk.gridviewdemo.R;
import gridviewdemo.dyk.manager.Peripheral;
import gridviewdemo.dyk.service.DfuService;
import no.nordicsemi.android.dfu.DfuServiceInitiator;

import static gridviewdemo.dyk.gridviewdemo.R.id.bt_upload_file;

/**
 * Created by dengyangkang on 2017/4/5.
 * 空中升级
 */

public class DFUActivity extends AppCompatActivity implements View.OnClickListener{

    BluetoothAdapter bluetoothAdapter;
    private BluetoothDevice mDevice;
    private static final int SELECT_FILE_REQ = 1;
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
    @BindView(R.id.bt_cancel)
    Button btCancel;
    @BindView(R.id.bt_select_file)
    Button btSelectFile;
    @BindView(bt_upload_file)
    Button btUploadFile;
     static BleDevice mBledevice;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.dfu_main);
        ButterKnife.bind(this);
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        toolbar.setBackgroundColor(Color.parseColor("#0081B7"));
        toolbar.setTitle("DFU");
        setSupportActionBar(toolbar);
    }
  public static   Handler mMsgHander =new Handler(){
        public void handleMessage(android.os.Message msg) {
            switch (msg.what){
                case 1:
                       // 在这里接收 B acitity 传递的数据
                    Log.i("DFUActivity ","msg "+ msg.obj );
                    mBledevice=(BleDevice) msg.obj;
                    Log.i("Blede ","getAddress "+ mBledevice.getAddress());
                    break;
            }
        }
    };
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
        DfuServiceInitiator starter = new DfuServiceInitiator(
                mPeripheral.mDevice.getAddress()).setDeviceName(
                mPeripheral.mDevice.getName())
                .setKeepBond(false);
        starter.setZip(mFileStreamUri, mFilePath);
        starter.start(DFUActivity.this, DfuService.class);
//        dfuDialog.dismiss();
    }
    /**
     * Called when a view has been clicked.
     *
     * @param v The view that was clicked.
     */
    @Override
    public void onClick(View v) {
        switch(v.getId()){
            case R.id.bt_select_file:
//                openFileChooser();
                break;
            case bt_upload_file:
                break;
        }
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
        super.onActivityResult(requestCode, resultCode, data);
        switch(requestCode){
            case SELECT_FILE_REQ:
                Toast.makeText(this, "requestCode.:  "+requestCode,
                        Toast.LENGTH_SHORT).show();
                if(requestCode == RESULT_FIRST_USER){
                    Uri uri =data.getData();
                    mFileStreamUri = uri;
                    if(uri.getScheme().equals("file")){
                        String path =uri.getPath();
                        File file =new File(path);
                        mFilePath = path;
                        String type =getExtension(file);
                        updateFileInfo(file.getName(), file.length(), mFileType,
                                type);
                    }
                }
                break;
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
        if(mBledevice == null){
            Toast.makeText(this,"请先连接基站",Toast.LENGTH_LONG).show();
            return;
        }
        if(bluetoothAdapter == null){
            BluetoothManager bluetoothManager = (BluetoothManager)
                    getSystemService(Context.BLUETOOTH_SERVICE);
            bluetoothAdapter = bluetoothManager.getAdapter();
        }
        this.mDevice =bluetoothAdapter.getRemoteDevice(mBledevice.getAddress());
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
