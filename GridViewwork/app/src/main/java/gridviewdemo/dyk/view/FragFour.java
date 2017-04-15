package gridviewdemo.dyk.view;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.Toast;

import java.util.ArrayList;
import java.util.Arrays;

import gridviewdemo.dyk.adapter.MyAdapter;
import gridviewdemo.dyk.application.BleDevice;
import gridviewdemo.dyk.gridviewdemo.R;
import gridviewdemo.dyk.interfaces.DeviceMessageListener;

import static gridviewdemo.dyk.utils.Utils.bytetoarray;

/**
 * Created by Administrator on 2017/3/31.
 * 有线模式
 */

public class FragFour extends Fragment{
    @Nullable
    Button back,next,edittext1button,edittext3button;
    BleDevice mBleDevice;
    EditText editText1,editText2,editText3,editText4, editText5,editText6, editText7,editText8,editText9;
    private FragOne.titleSelectInterface mSelectInterface;
    private ArrayList<String> mBLEListlist;//存放扫描到的设备信息的集合
    MyAdapter mydaterlist;
    ListView listView;
    MyHandler4  mHandler ;//异步
    @Override
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
//        return super.onCreateView(inflater, container, savedInstanceState);
        View view =inflater.inflate(R.layout.fragfour,container,false);
        back   = (Button) view.findViewById(R.id.backbutton);
        editText1 =(EditText)  view.findViewById(R.id.edittext1);
        editText2 =(EditText)  view.findViewById(R.id.edittext2);
        editText3 =(EditText)  view.findViewById(R.id.edittext3);
        editText4 =(EditText)  view.findViewById(R.id.edittext4);
        editText5 =(EditText)  view.findViewById(R.id.edittext5);
        editText6 =(EditText)  view.findViewById(R.id.edittext6);
        editText7 =(EditText)  view.findViewById(R.id.edittext7);
        editText8 =(EditText)  view.findViewById(R.id.edittext8);
        editText9 =(EditText)  view.findViewById(R.id.edittext9);
        edittext1button =(Button) view.findViewById(R.id.edittext1button);
        edittext3button =(Button) view.findViewById(R.id.edittext3button);
        mHandler =new MyHandler4();
        next = (Button) view.findViewById(R.id.nextbutton);

        mBLEListlist =new ArrayList<>();
        mydaterlist = new MyAdapter(getActivity(), mBLEListlist);
        listView= (ListView)view.findViewById(R.id.listview_fragfour);
        listView.setAdapter(mydaterlist);
        //发送ip
        edittext1button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if(!editText1.getText().toString().isEmpty()  &&  !editText2.getText().toString().isEmpty()
                && !editText3.getText().toString().isEmpty() && !editText4.getText().toString().isEmpty()){
                    String setIp ="AT+IP="+editText1.getText().toString()+"."+editText2.getText().toString()
                            +"."+editText3.getText().toString()+"."+editText4.getText().toString();
                    Log.i("FragFour","edit1:"+setIp);
                    strToByte(setIp);
                    mBLEListlist.add("发送命令:"+setIp);
                    mydaterlist.notifyDataSetChanged();
                }else{
                    Toast.makeText(getActivity(),"请确认ip地址是否设置正确~",Toast.LENGTH_LONG).show();
                }
            }
        });
        edittext3button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if(!editText5.getText().toString().isEmpty()  &&  !editText6.getText().toString().isEmpty()
                        && !editText7.getText().toString().isEmpty() && !editText8.getText().toString().isEmpty()
                        && !editText9.getText().toString().isEmpty()){
                    String setSRV ="AT+SRV="+editText5.getText().toString()+"."+editText6.getText().toString()
                            +"."+editText7.getText().toString()+"."+editText8.getText().toString()
                            +":"+editText9.getText().toString();
                    Log.i("FragFour","edit3:"+setSRV);
                    strToByte(setSRV);
                    mBLEListlist.add("发送命令:"+setSRV);
                    mydaterlist.notifyDataSetChanged();
                }else{
                    Toast.makeText(getActivity(),"请确认服务器ip地址和端口号是否设置正确~",Toast.LENGTH_LONG).show();
                }
            }
        });
        next.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                mSelectInterface.onTitleSelect("4next");
            }
        });
        back.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                mSelectInterface.onTitleSelect("4back");
            }
        });
        initListener();
        return view;
    }
    class MyHandler4 extends Handler {
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
    public  void strToByte(String str){
        byte[][] arrs=bytetoarray(str);
            write( arrs[0].length, 0, arrs[0]);
        if(arrs.length ==2){
            try {
                Thread.sleep(500);
                write(arrs[1].length,0,arrs[1]);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }
    public void initListener(){
        if(mBleDevice == null)
            return;
        mBleDevice.setDeviceMessageListener(new DeviceMessageListener() {
            @Override
            public void onSendResult(String address, int cmd, byte[] data) {
                Log.i("收到", " :"+Arrays.toString(data));
                mBLEListlist.add(address);
                Message message=new Message();
                message.what=1;
                mHandler.sendMessage(message);
            }
        });
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
    private void write(int length, int cmd, byte[] data) {
        if(mBleDevice !=null){
            mBleDevice.write(length, cmd, data);
        }
    }
}
