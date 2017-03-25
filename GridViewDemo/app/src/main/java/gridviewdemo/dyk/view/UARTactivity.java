package gridviewdemo.dyk.view;

import android.bluetooth.BluetoothAdapter;
import android.content.DialogInterface;
import android.graphics.Color;
import android.os.Bundle;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.TextView;
import android.widget.Toast;

import gridviewdemo.dyk.gridviewdemo.R;
import gridviewdemo.dyk.manager.Scanner;

/**
 * Created by Administrator on 2017/3/24.
 * 专家模式
 */

public class UARTactivity extends AppCompatActivity {
    TextView tv;
    private Scanner scanner;
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.uart_main);
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        toolbar.setBackgroundColor(Color.parseColor("#0081B7"));
        toolbar.setTitle("UART");
        setSupportActionBar(toolbar);
        init();
    }
    private void init(){
        initSecurityDialog();
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
        int id = item.getItemId();
        switch(id) {
//            case R.id.action_settings:
//                Toast.makeText(this, "设置相关命令", Toast.LENGTH_LONG).show();
//                break;
            case R.id.action_scan:
                Toast.makeText(this, "扫描", Toast.LENGTH_LONG).show();
                scanner =new Scanner(this);

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
                "手机请求绑定"};
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
//                        write(dAddress, SUPER_BOUND_DATA.length, 0x24,
//                                SUPER_BOUND_DATA);
                        break;
                    case 2:
                        //用户登录请求
//                        write(dAddress, 16, 0x23, bluAddr);
                        break;
                    case 3:
                        //手机请求绑定
//                        write(dAddress, 16, 0x21, bluAddr);
                        break;
                }
            }
        });
        securityDialog =builder.create();
    }
}
