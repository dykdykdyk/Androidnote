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

/**
 * Created by Administrator on 2017/3/31.
 */

public class FragFive extends Fragment{
    @Nullable
    Button back,next;
    BleDevice mBleDevice;
    EditText editText1,editText2,editText3;
    private FragOne.titleSelectInterface mSelectInterface;
    @Override
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
//        return super.onCreateView(inflater, container, savedInstanceState);
        View view =inflater.inflate(R.layout.fragfive,container,false);
        back   = (Button) view.findViewById(R.id.backbutton);
        next = (Button) view.findViewById(R.id.nextbutton);
        editText1 =(EditText)  view.findViewById(R.id.edittext1);
        editText2 =(EditText)  view.findViewById(R.id.edittext2);
        editText3 =(EditText)  view.findViewById(R.id.edittext3);
        next.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                mSelectInterface.onTitleSelect("5next");//下一步
                //获取到edit的输入内容
                String edit1 =editText1.getText().toString();
                String edit2 =editText2.getText().toString();
                String edit3 =editText3.getText().toString();
                //写入函数方法
                /**
                  String str = "+12345678910";
                 byte[] st = Utils.strToByteArray(str);
                 updateList(dAddress, "cmd:0x14," + commants[1] + " :" + str);
                 write(dAddress, st.length, 0x14, st);
                 */
                Log.i("FragFive","edit1:"+edit1);
                Log.i("FragFive","edit2:"+edit2);
                Log.i("FragFive","edit3:"+edit3);
//                write(null,st.length, 0x14, st);
            }
        });
        back.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                mSelectInterface.onTitleSelect("5back");
            }
        });
        return view;
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
