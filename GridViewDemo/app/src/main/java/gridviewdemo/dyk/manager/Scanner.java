package gridviewdemo.dyk.manager;

import android.app.Activity;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothManager;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;

/**
 * Created by Administrator on 2017/3/25.
 */

public class Scanner {
    private BluetoothAdapter bluetoothAdapter;
    private static final int REQUEST_ENABLE_BLUETOOTH = 1;
    private Activity mActivity;
    private Handler scanHandler;
    public static final String[] RESPONE_STATE = { "成功", "版本号不正确，此协议只接受1", "长度信息和命令要求不匹配", "类型信息和命令要求不匹配", "命令不存在",
            "序列号不正常", "设备已经被绑定", "绑定信息和设备内部不匹配，无法删除绑定", "登录信息和设备内部不匹配，无法登录", "还没有登录，先登录先",
            "指令不支持，很多指令是设备发出去的，并不能接收，参考具体指令介绍" ,"指针移动失败，一般命令格式不对或者是指针已经移动到最末尾位置",
            "指令内部返回，不走标准返回模式"};

    public Scanner(Activity activity){
          if(activity !=null){
                this.mActivity = activity;
          }
        init();
    }
    private void init(){

    }

    /**
     * 判断蓝牙是否开启，否则开启蓝牙
     */
    public boolean enableBlue() {
        BluetoothManager manager = (BluetoothManager)
                mActivity.getSystemService(Context.BLUETOOTH_SERVICE);
        bluetoothAdapter = manager.getAdapter();
        if (!bluetoothAdapter.isEnabled()) {
            Intent intent = new Intent(BluetoothAdapter.ACTION_REQUEST_ENABLE);
            mActivity.startActivityForResult(intent, REQUEST_ENABLE_BLUETOOTH);
        }
        return bluetoothAdapter.isEnabled();
    }
}
