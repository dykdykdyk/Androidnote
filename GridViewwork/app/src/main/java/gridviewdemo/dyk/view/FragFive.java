package gridviewdemo.dyk.view;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.LayoutInflater;
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
import java.util.Timer;
import java.util.TimerTask;

import gridviewdemo.dyk.adapter.MyAdapter;
import gridviewdemo.dyk.application.BleDevice;
import gridviewdemo.dyk.gridviewdemo.R;
import gridviewdemo.dyk.interfaces.DeviceMessageListener;
import gridviewdemo.dyk.utils.WifiInfoUtils;

import static gridviewdemo.dyk.utils.Utils.bytetoarray;

/**
 * Created by Administrator on 2017/3/31.
 */

public class FragFive extends Fragment implements TextWatcher {
    @Nullable
    Button back,next,edittext1button,edittext3button,edittext2button;
    BleDevice mBleDevice;
    EditText editText2,editText3,editText4,editText5,editText6,editText7,editText8;
    private FragOne.titleSelectInterface mSelectInterface;
    MyAdapter mydaterlist;
    ListView listView,listview_wififour;
    ScrollView scrollView;
    Timer timer5;
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
//        scrollView = (ScrollView) view.findViewById(R.id.scrollview);
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
        editText4.addTextChangedListener(this);//给edittext设置光标改变的监听
        editText5.addTextChangedListener(this);//给edittext设置光标改变的监听
        editText6.addTextChangedListener(this);//给edittext设置光标改变的监听
        editText7.addTextChangedListener(this);//给edittext设置光标改变的监听
        editText8.addTextChangedListener(this);//给edittext设置光标改变的监听
        mBLEListlist =new ArrayList<>();
        mydaterlist = new MyAdapter(getActivity(), mBLEListlist);
        listView= (ListView)view.findViewById(R.id.listview_fragfour);
        listview_wififour= (ListView)view.findViewById(R.id.listview_wififour);
        listView.setAdapter(mydaterlist);
        listview_wififour.setAdapter(wifiadapter);
//        wifiadapter.notifyDataSetChanged();
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
                setButtonsFalse();
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
                setButtonsFalse();
            }
        });
        //服务器ip和端口号
        edittext2button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if(!editText4.getText().toString().isEmpty() && !editText5.getText().toString().isEmpty()  &&  !editText6.getText().toString().isEmpty()
                        && !editText7.getText().toString().isEmpty() && !editText8.getText().toString().isEmpty()
                        ){
                    String setSRV ="AT+WSRV="+editText4.getText().toString()+"."+editText5.getText().toString()+"."+editText6.getText().toString()
                            +"."+editText7.getText().toString()+":"+editText8.getText().toString();//服务器ip地址
                    Log.i("FragFour","edit4:"+setSRV);
                    strToByte(setSRV);
                    mBLEListlist.add("发送命令:"+setSRV);
                    mydaterlist.notifyDataSetChanged();
                    setButtonsFalse();
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
    //设置客户3秒钟之内只能发送一条命令
    public void setButtonsFalse(){
        edittext1button.setClickable(false);
        edittext2button.setClickable(false);
        edittext3button.setClickable(false);
        timer5=new Timer();
        TimerTask task = new TimerTask(){
            @Override
            public void run() {
                edittext1button.setClickable(true);
                edittext3button.setClickable(true);
                edittext2button.setClickable(true);
            }
        };
        timer5.schedule(task, 3000);
    }

    /**
     * This method is called to notify you that, within <code>s</code>,
     * the <code>count</code> characters beginning at <code>start</code>
     * are about to be replaced by new text with length <code>after</code>.
     * It is an error to attempt to make changes to <code>s</code> from
     * this callback.
     *
     * @param s
     * @param start
     * @param count
     * @param after
     */
    @Override
    public void beforeTextChanged(CharSequence s, int start, int count, int after) {

    }

    /**
     * This method is called to notify you that, within <code>s</code>,
     * the <code>count</code> characters beginning at <code>start</code>
     * have just replaced old text that had length <code>before</code>.
     * It is an error to attempt to make changes to <code>s</code> from
     * this callback.
     *
     * @param s
     * @param start
     * @param before
     * @param count
     */
    @Override
    public void onTextChanged(CharSequence s, int start, int before, int count) {

    }

    /**
     * This method is called to notify you that, somewhere within
     * <code>s</code>, the text has been changed.
     * It is legitimate to make further changes to <code>s</code> from
     * this callback, but be careful not to get yourself into an infinite
     * loop, because any changes you make will cause this method to be
     * called again recursively.
     * (You are not told where the change took place because other
     * afterTextChanged() methods may already have made other changes
     * and invalidated the offsets.  But if you need to know here,
     * you can use {@link Spannable#setSpan} in {@link #onTextChanged}
     * to mark your place and then look up from here where the span
     * ended up.
     *
     * @param s
     */
    @Override
    public void afterTextChanged(Editable s) {
        Log.i("TAG","edittext1获取到焦点了1");
         if(editText4.getText().length() ==3){
            Log.i("TAG","edittext1获取到焦点了2333");
            editText5.requestFocus();
        } if(editText5.getText().length() ==3){
            Log.i("TAG","edittext1获取到焦点了2333");
            editText6.requestFocus();
        } if(editText6.getText().length() ==3){
            Log.i("TAG","edittext1获取到焦点了2333");
            editText7.requestFocus();
        } if(editText7.getText().length() ==3){
            Log.i("TAG","edittext1获取到焦点了2333");
            editText8.requestFocus();
        }
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
