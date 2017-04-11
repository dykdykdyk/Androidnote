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

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import gridviewdemo.dyk.adapter.MyAdapter;
import gridviewdemo.dyk.application.BleDevice;
import gridviewdemo.dyk.gridviewdemo.R;
import gridviewdemo.dyk.interfaces.DeviceMessageListener;

/**
 * Created by Administrator on 2017/3/31.
 * 有线模式
 */

public class FragFour extends Fragment{
    @Nullable
    Button back,next,edittext1button,edittext3button;
    BleDevice mBleDevice;
    EditText editText1,editText3;
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
        editText3 =(EditText)  view.findViewById(R.id.edittext3);
        edittext1button =(Button) view.findViewById(R.id.edittext1button);
        edittext3button =(Button) view.findViewById(R.id.edittext3button);
        mHandler =new MyHandler4();
//        editText1.setInputType(InputType.TYPE_CLASS_NUMBER); //调用数字键盘
        next = (Button) view.findViewById(R.id.nextbutton);
        editText1.setText("AT+IP=");
        editText3.setText("AT+SRV=");

        mBLEListlist =new ArrayList<>();
        mydaterlist = new MyAdapter(getActivity(), mBLEListlist);
        listView= (ListView)view.findViewById(R.id.listview_fragfour);
        listView.setAdapter(mydaterlist);
        //发送ip
        edittext1button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                 initListener();
                String setIp =editText1.getText().toString().trim();
               Log.i("FragFour","edit1:"+setIp);
                strToByte(setIp);
                mBLEListlist.add("发送命令:"+setIp);
                mydaterlist.notifyDataSetChanged();
            }
        });
        edittext3button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String setSRV =editText3.getText().toString().trim();//服务器ip地址和端口号
                Log.i("FragFour","edit3:"+setSRV);
                strToByte(setSRV);
                mBLEListlist.add("发送命令:"+setSRV);
                mydaterlist.notifyDataSetChanged();
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
        if(str.length()<=18){
            str =str+"\r";
            byte[]  arrs =new byte[20];
            arrs =str.getBytes();
            write(null, arrs.length, 0x14, arrs);
        }else if(str.length()>18){
            str =str+"\r";
            System.out.println("strle2 "+str.length());
            byte[]  arr =new byte[20];
            String temparr =str.substring(0,20);
            System.out.println("temparr "+temparr.length());
            System.out.println("temparr "+temparr);
            arr =temparr.getBytes();
            System.out.println(Arrays.toString(arr));

            //后面第二个包
            String temptwo =str.substring(20);
            System.out.println("temptwo "+temptwo.length());
            System.out.println("temptwo "+temptwo);
            byte[]  arrtwo =new byte[20];
            arrtwo =temptwo.getBytes();
            System.out.println(Arrays.toString(arrtwo));
        }
    }
    public void initListener(){
        mBleDevice.setDeviceMessageListener(new DeviceMessageListener() {
            @Override
            public void onSendResult(String address, int cmd, byte[] data) {
                Log.i("收到", " :"+Arrays.toString(data));
                mBLEListlist.add(address);
                Message message=new Message();
                message.what=1;
                mHandler.sendMessage(message);
            }

            @Override
            public void onSendHistory(String address, int cmd, List<byte[]> historyData) {

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
    private void write(String address, int length, int cmd, byte[] data) {
//        BleDevice bleDevice = mBLEDevice.get(address);
        if(mBleDevice !=null){
            mBleDevice.write(length, cmd, data);
        }

    }
}
