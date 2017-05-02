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
import android.widget.Button;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.Toast;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Timer;
import java.util.TimerTask;

import gridviewdemo.dyk.adapter.MyAdapter;
import gridviewdemo.dyk.application.BleDevice;
import gridviewdemo.dyk.gridviewdemo.R;
import gridviewdemo.dyk.interfaces.DeviceMessageListener;

import static gridviewdemo.dyk.utils.Utils.bytetoarray;

/**
 * Created by Administrator on 2017/3/31.
 * 有线模式
 */

public class FragFour extends Fragment implements TextWatcher{
    @Nullable
    Button back,next,edittext1button,edittext3button;
    BleDevice mBleDevice;
    Timer timer5;
    EditText editText1,editText2,editText3,editText4, editText5,editText6, editText7,editText8,editText9;
    private FragOne.titleSelectInterface mSelectInterface;
    private ArrayList<String> mBLEListlist;//存放扫描到的设备信息的集合
    MyAdapter mydaterlist;
    ListView listView;
    public int currentapiVersion=android.os.Build.VERSION.SDK_INT;
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
        editText1.addTextChangedListener(this);//给edittext设置光标改变的监听
        editText2.addTextChangedListener(this);//给edittext设置光标改变的监听
        editText3.addTextChangedListener(this);//给edittext设置光标改变的监听
        editText4.addTextChangedListener(this);//给edittext设置光标改变的监听
        editText5.addTextChangedListener(this);//给edittext设置光标改变的监听
        editText6.addTextChangedListener(this);//给edittext设置光标改变的监听
        editText7.addTextChangedListener(this);//给edittext设置光标改变的监听
        editText8.addTextChangedListener(this);//给edittext设置光标改变的监听
        editText9.addTextChangedListener(this);//给edittext设置光标改变的监听
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
                    setButtonsFalse();
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
                    setButtonsFalse();
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
        if(editText1.getText().length() ==3){
            Log.i("TAG","edittext1获取到焦点了 editText1");
            editText2.requestFocus();
        } if(editText2.getText().length() ==3){
            Log.i("TAG","edittext1获取到焦点了 editText2");
            editText3.requestFocus();
        }if(editText3.getText().length() ==3) {
            Log.i("TAG", "edittext1获取到焦点了2333");
            editText4.requestFocus();
        }if(editText4.getText().length() ==3){
            Log.i("TAG","edittext1获取到焦点了2333");
            editText5.requestFocus();
        } if(editText5.getText().length() ==3){
            Log.i("TAG","edittext1获取到焦点了2333");
            editText6.requestFocus();
        }if(editText6.getText().length() ==3){
            Log.i("TAG","edittext1获取到焦点了2333");
            editText7.requestFocus();
        }if(editText7.getText().length() ==3){
            Log.i("TAG","edittext1获取到焦点了2333");
            editText8.requestFocus();
        } if(editText8.getText().length() ==3){
            Log.i("TAG","edittext1获取到焦点了2333");
            editText9.requestFocus();
        }
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
                if(currentapiVersion >23){
                    Thread.sleep(2000);
                }else if(currentapiVersion <24){
                    Thread.sleep(800);
                }
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
    //设置客户3秒钟之内只能发送一条命令
    public void setButtonsFalse(){
        edittext1button.setClickable(false);
        edittext3button.setClickable(false);
        timer5=new Timer();
        TimerTask task = new TimerTask(){
            @Override
            public void run() {
                edittext1button.setClickable(true);
                edittext3button.setClickable(true);
            }
        };
        timer5.schedule(task, 3000);
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
