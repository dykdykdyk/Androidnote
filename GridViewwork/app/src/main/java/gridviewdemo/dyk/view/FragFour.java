package gridviewdemo.dyk.view;

import android.app.Activity;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;

import gridviewdemo.dyk.application.BleDevice;
import gridviewdemo.dyk.gridviewdemo.R;
import gridviewdemo.dyk.utils.Utils;

/**
 * Created by Administrator on 2017/3/31.
 * 有线模式
 */

public class FragFour extends Fragment{
    @Nullable
    Button back,next;
    BleDevice mBleDevice;


    EditText editText1,editText2,editText3;
    private FragOne.titleSelectInterface mSelectInterface;
    @Override
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
//        return super.onCreateView(inflater, container, savedInstanceState);
        View view =inflater.inflate(R.layout.fragfour,container,false);
        back   = (Button) view.findViewById(R.id.backbutton);
        editText1 =(EditText)  view.findViewById(R.id.edittext1);
        editText2 =(EditText)  view.findViewById(R.id.edittext2);
        editText3 =(EditText)  view.findViewById(R.id.edittext3);
//        editText1.setInputType(InputType.TYPE_CLASS_NUMBER); //调用数字键盘
        next = (Button) view.findViewById(R.id.nextbutton);
        next.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                //获取到edit的输入内容
                String setIp =editText1.getText().toString().trim();
                String setSub =editText2.getText().toString().trim();//子网掩码
                String setSRV =editText3.getText().toString().trim();//服务器ip地址和端口号
                Log.i("FragFour","edit1:"+setIp);
                Log.i("FragFour","edit2:"+setSub);
                Log.i("FragFour","edit3:"+setSRV);
                String ip ="AT+IP="+setIp;
                String sub ="AT+SUB="+setSub;
                String srv ="AT+SRV="+setSRV;
                Log.i("FragFour","ip:"+ip);
                Log.i("FragFour","sub:"+sub);
                Log.i("FragFour","srv:"+srv);
                //写入函数方法
                if(ip.length()<=20){
                    byte[] st = Utils.strToByteArray(ip);
                    write(null, st.length, 0x14, st);
                }
                /**
                 String str = "+12345678910";
                 byte[] st = Utils.strToByteArray(str);
                 updateList(dAddress, "cmd:0x14," + commants[1] + " :" + str);
                 write(dAddress, st.length, 0x14, st);
                 */
                mSelectInterface.onTitleSelect("4next");
                //写入函数

            }
        });
        back.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                mSelectInterface.onTitleSelect("4back");
            }
        });
        return view;
    }
    @Override
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        try {
            mSelectInterface = (FragOne.titleSelectInterface) activity;
        } catch (Exception e) {
            throw new ClassCastException(activity.toString() + "must implement OnArticleSelectedListener");
        }
    }
    public void setText(BleDevice text){
        mBleDevice=text;
        Log.i("TAG","mBleDevice:"+mBleDevice);
    }
    private void write(String address, int length, int cmd, byte[] data) {
//        BleDevice bleDevice = mBLEDevice.get(address);
        if(mBleDevice !=null){
            mBleDevice.write(length, cmd, data);
        }

    }
}
