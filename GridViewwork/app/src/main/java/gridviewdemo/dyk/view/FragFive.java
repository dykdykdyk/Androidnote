package gridviewdemo.dyk.view;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.ScrollView;
import android.widget.Toast;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import gridviewdemo.dyk.adapter.MyAdapter;
import gridviewdemo.dyk.application.BleDevice;
import gridviewdemo.dyk.gridviewdemo.R;
import gridviewdemo.dyk.interfaces.DeviceMessageListener;
import gridviewdemo.dyk.utils.WifiInfoUtils;

import static gridviewdemo.dyk.utils.Utils.bytetoarray;

/**
 * Created by Administrator on 2017/3/31.
 */

public class FragFive extends Fragment{
    @Nullable
    Button back,next,edittext1button,edittext3button,edittext2button;
    BleDevice mBleDevice;
    EditText editText2,editText3,editText4,editText5,editText6,editText7,editText8;
    private FragOne.titleSelectInterface mSelectInterface;
    MyAdapter mydaterlist;
    ListView listView,listview_wififour;
    ScrollView scrollView;
    List<String>  wifidata =new ArrayList<String>();
    MyHandler5 mHandler ;//异步
    ArrayAdapter<String> wifiadapter;
    private ArrayList<String> mBLEListlist;//存放扫描到的设备信息的集合
    WifiInfoUtils wifiinfo;
    @Override
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
//        return super.onCreateView(inflater, container, savedInstanceState);
        View view =inflater.inflate(R.layout.fragfive,container,false);
        back   = (Button) view.findViewById(R.id.backbutton);
        next = (Button) view.findViewById(R.id.nextbutton);
        scrollView = (ScrollView) view.findViewById(R.id.scrollview);
        mHandler =new MyHandler5();
        wifiinfo=new WifiInfoUtils(getActivity());
        wifidata =wifiinfo.getStringdata();
        Log.i("FIVE","wifidata: "+wifidata.get(2)+"wifidata:"+wifidata.size());
        wifiadapter =new ArrayAdapter<String>(getActivity(), R.layout.device_text_wifi, wifidata);

        edittext1button =(Button) view.findViewById(R.id.edittext1button);
        edittext3button =(Button) view.findViewById(R.id.edittext3button);
        edittext2button =(Button) view.findViewById(R.id.edittext2button);
        editText2 =(EditText)  view.findViewById(R.id.edittext2);
        editText3 =(EditText)  view.findViewById(R.id.edittext3);
        editText4 =(EditText)  view.findViewById(R.id.edittext4);
        editText5 =(EditText)  view.findViewById(R.id.edittext5);
        editText6 =(EditText)  view.findViewById(R.id.edittext6);
        editText7 =(EditText)  view.findViewById(R.id.edittext7);
        editText8 =(EditText)  view.findViewById(R.id.edittext8);
        mBLEListlist =new ArrayList<>();
        mydaterlist = new MyAdapter(getActivity(), mBLEListlist);
        listView= (ListView)view.findViewById(R.id.listview_fragfour);
        listview_wififour= (ListView)view.findViewById(R.id.listview_wififour);
        listView.setAdapter(mydaterlist);
        listview_wififour.setAdapter(wifiadapter);
        wifiadapter.notifyDataSetChanged();
        next.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                mSelectInterface.onTitleSelect("5next");//下一步
            }
        });
        //wifi名称
        edittext1button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if(editText2.getText().toString().isEmpty()){
                    Toast.makeText(getActivity(),"请确认是否设置正确~",Toast.LENGTH_LONG).show();
                    return;
                }
                String setIp ="AT+WSSID="+editText2.getText().toString();
                Log.i("FragFour","edit1:"+setIp);
                strToByte(setIp);
                mBLEListlist.add("发送命令:"+setIp);
                mydaterlist.notifyDataSetChanged();
            }
        });
        //解决 scrollview的滑动时间冲突，如果手指的触摸在listview,屏蔽掉父控件的触摸事件
        listview_wififour.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public boolean onTouch(View v, MotionEvent event) {
                if(event.getAction() == MotionEvent.ACTION_MOVE){
                    scrollView.requestDisallowInterceptTouchEvent(true);
                }
                return false;
            }
        });
        //wifi密码
        edittext3button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if(editText3.getText().toString().isEmpty()){
                    Toast.makeText(getActivity(),"请确认是否设置正确~",Toast.LENGTH_LONG).show();
                    return;
                }
                String setSRV ="AT+WPWD="+editText3.getText().toString();//服务器ip地址和端口号
                Log.i("FragFour","edit3:"+setSRV);
                strToByte(setSRV);
                mBLEListlist.add("发送命令:"+setSRV);
                mydaterlist.notifyDataSetChanged();
            }
        });
        //服务器ip和端口号
        edittext2button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if(!editText4.getText().toString().isEmpty() && !editText5.getText().toString().isEmpty()  &&  !editText6.getText().toString().isEmpty()
                        && !editText7.getText().toString().isEmpty() && !editText8.getText().toString().isEmpty()
                        ){
                    String setSRV ="AT+WSRV="+editText4.getText().toString()+editText5.getText().toString()+"."+editText6.getText().toString()
                            +"."+editText7.getText().toString()+"."+editText8.getText().toString();//服务器ip地址
                    Log.i("FragFour","edit4:"+setSRV);
                    strToByte(setSRV);
                    mBLEListlist.add("发送命令:"+setSRV);
                    mydaterlist.notifyDataSetChanged();

                }else
                {
                    Toast.makeText(getActivity(),"请确认是否设置正确~",Toast.LENGTH_LONG).show();
                    return;
                }

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
        });
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
    private void write(int length, int cmd, byte[] data) {
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
