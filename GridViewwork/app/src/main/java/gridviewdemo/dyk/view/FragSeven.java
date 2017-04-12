package gridviewdemo.dyk.view;

import android.app.Activity;
import android.os.Bundle;
import android.os.Message;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.Toast;

import java.util.Arrays;
import java.util.List;

import gridviewdemo.dyk.application.BleDevice;
import gridviewdemo.dyk.gridviewdemo.R;
import gridviewdemo.dyk.interfaces.DeviceMessageListener;

/**
 * Created by dengyangkang on 2017/3/31.
 */

public class FragSeven extends Fragment {
    Button back,next;
    BleDevice mBleDevice;
    private FragOne.titleSelectInterface mSelectInterface;
    @Override
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
//        return super.onCreateView(inflater, container, savedInstanceState);
        View view =inflater.inflate(R.layout.fragseven,container,false);
        back   = (Button) view.findViewById(R.id.backbutton);
        next = (Button) view.findViewById(R.id.nextbutton);
        next.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                strToByte("AT+RST");
//                mSelectInterface.onTitleSelect("7next");
            }
        });
        back.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                mSelectInterface.onTitleSelect("7back");
            }
        });
        initListener();
        return view;
    }
    public  void strToByte(String str){
        str =str+"\n\r";
        if(str.length()<=20){
            byte[]  arrs =new byte[20];
            arrs =str.getBytes();
            write(null, arrs.length, 0x14, arrs);
            System.out.println("写入命令:"+str.length()+"str:"+str);
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
    public void initListener(){
        mBleDevice.setDeviceMessageListener(new DeviceMessageListener() {
            @Override
            public void onSendResult(String address, int cmd, byte[] data) {
                Log.i("收到", " :"+ Arrays.toString(data));
                Toast.makeText(getActivity(),"重启返回应答："+address,Toast.LENGTH_LONG).show();
                Message message=new Message();
                message.what=1;
            }
            @Override
            public void onSendHistory(String address, int cmd, List<byte[]> historyData) {

            }
        });
    }
    public void setText(BleDevice text){
        mBleDevice=text;
        Log.i("TAG","mBleDevice:"+mBleDevice);
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
}
