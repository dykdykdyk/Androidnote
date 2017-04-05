package gridviewdemo.dyk.view;

import android.content.Intent;
import android.graphics.Color;
import android.net.Uri;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

import java.io.File;

import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import gridviewdemo.dyk.gridviewdemo.R;
import gridviewdemo.dyk.manager.Peripheral;

import static gridviewdemo.dyk.gridviewdemo.R.id.bt_upload_file;

/**
 * Created by dengyangkang on 2017/4/5.
 * 空中升级
 */

public class DFUActivity extends AppCompatActivity implements View.OnClickListener{

    private static final int SELECT_FILE_REQ = 1;
    private Uri mFileStreamUri;
    private String mFilePath;
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
    @OnClick(R.id.bt_select_file)
    public void test(){
        openFileChooser();
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
        Toast.makeText(this, "Please install a File Manager.",
                Toast.LENGTH_SHORT).show();
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
                if(requestCode == RESULT_OK){
                    Uri uri =data.getData();
                    mFileStreamUri = uri;
                    if(uri.getScheme().equals("file")){
                        String path =uri.getPath();
                        File file =new File(path);
                        mFilePath = path;
                        String type =getExtension(file);
                        updateFileInfo(file.getName(), file.length(), mFileType,
                                tyep);
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
     * @param fileType
     */
    private void updateFileInfo(String name, long length, int mFileType2,
                                String fileType) {
        Peripheral mPeripheral = peripherals.get(address);
        tv_file_name.setText(name);
        tv_file_size.setText((int) length + "bytes");
        tv_file_type.setText(fileType);
        fileStatus.setText("invalid file");
        bt_upload_file.setEnabled(true);

        mAddress = mPeripheral.device.getAddress();
        mDeviceName = mPeripheral.device.getName();
        startDfuservice();
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
