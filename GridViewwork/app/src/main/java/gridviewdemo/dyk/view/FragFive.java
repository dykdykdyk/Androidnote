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
 */

public class FragFive extends Fragment{
    @Nullable
    Button back,next,edittext1button,edittext3button,edittext2button;
    BleDevice mBleDevice;
    EditText editText2,editText3,editText4;
    private FragOne.titleSelectInterface mSelectInterface;
    MyAdapter mydaterlist;
    ListView listView;
    MyHandler5 mHandler ;//异步
    private ArrayList<String> mBLEListlist;//存放扫描到的设备信息的集合
    @Override
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
//        return super.onCreateView(inflater, container, savedInstanceState);
        View view =inflater.inflate(R.layout.fragfive,container,false);
        back   = (Button) view.findViewById(R.id.backbutton);
        next = (Button) view.findViewById(R.id.nextbutton);
        mHandler =new MyHandler5();
        edittext1button =(Button) view.findViewById(R.id.edittext1button);
        edittext3button =(Button) view.findViewById(R.id.edittext3button);
        edittext2button =(Button) view.findViewById(R.id.edittext2button);
        editText2 =(EditText)  view.findViewById(R.id.edittext2);
        editText3 =(EditText)  view.findViewById(R.id.edittext3);
        editText4 =(EditText)  view.findViewById(R.id.edittext4);
        editText2.setText("AT+WSSID=");
        editText3.setText("AT+WPWD=");
        editText4.setText("AT+WSRV=");
        mBLEListlist =new ArrayList<>();
        mydaterlist = new MyAdapter(getActivity(), mBLEListlist);
        listView= (ListView)view.findViewById(R.id.listview_fragfour);
        listView.setAdapter(mydaterlist);
        next.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                mSelectInterface.onTitleSelect("5next");//下一步
            }
        });
        edittext1button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String setIp =editText2.getText().toString().trim();
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
        edittext2button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String setSRV =editText4.getText().toString().trim();//服务器ip地址和端口号
                Log.i("FragFour","edit4:"+setSRV);
                strToByte(setSRV);
                mBLEListlist.add("发送命令:"+setSRV);
                mydaterlist.notifyDataSetChanged();
            }
        });
        back.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                mSelectInterface.onTitleSelect("5back");
            }
        });
        initListener();
        return view;
    }
    class MyHandler5 extends Handler {
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
    public void initListener(){
        if(mBleDevice == null)
           return ;
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
    public  void strToByte(String str){
        str =str+"\n\r";
        if(str.length()<=20){
            byte[]  arrs =new byte[20];
            arrs =str.getBytes();
            write(null, arrs.length, 0x14, arrs);
        }else if(str.length()>20){
            System.out.println("写入命令总长度:"+str.length()+"str:"+str);
            byte[]  arrtwo =new byte[40];
            arrtwo=str.getBytes();
            byte[]  temp =new byte[20];
            byte[]  temptwo =new byte[20];
            System.arraycopy(arrtwo, 0, temp, 0, temp.length);
            System.arraycopy(arrtwo, 20, temptwo, 0, arrtwo.length-temp.length);
            Log.i("TAG","arrtwo.length:"+arrtwo.length+"arrtwo:"+Arrays.toString(arrtwo));
            Log.i("TAG","temp.length:"+temp.length+"temp:"+Arrays.toString(temp));
            Log.i("TAG","temptwo.length:"+temptwo.length+"temptwo:"+Arrays.toString(temptwo));
            write(null, temp.length, 0, temp);
            try {
                //不休眠  连续发两个包 就收不到数据，可能手机底层处理不过来。。。
                Thread.sleep(200);
                write(null, temptwo.length, 0, temptwo);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }
    private void write(String address, int length, int cmd, byte[] data) {
//        BleDevice bleDevice = mBLEDevice.get(address);
        if(mBleDevice !=null){
            mBleDevice.write(length, cmd, data);
        }
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
}
