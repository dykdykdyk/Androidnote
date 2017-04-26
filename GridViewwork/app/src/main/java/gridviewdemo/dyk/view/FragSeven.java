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

import java.util.Arrays;

import gridviewdemo.dyk.application.BleDevice;
import gridviewdemo.dyk.gridviewdemo.R;
import gridviewdemo.dyk.interfaces.DeviceMessageListener;

import static gridviewdemo.dyk.utils.Utils.bytetoarray;

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
                try {
                    Thread.sleep(500);
                    mSelectInterface.onTitleSelect("7next");
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }

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
//                Toast.makeText(getActivity(),"重启返回应答："+address,Toast.LENGTH_LONG).show();
//                Message message=new Message();
//                message.what=1;
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
