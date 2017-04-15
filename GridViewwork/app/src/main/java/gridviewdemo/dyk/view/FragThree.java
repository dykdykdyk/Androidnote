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

import gridviewdemo.dyk.application.BleDevice;
import gridviewdemo.dyk.gridviewdemo.R;

/**
 * Created by Administrator on 2017/3/31.
 */

public class FragThree extends Fragment{
    @Nullable
    Button back,wlan,Wired;
    private FragOne.titleSelectInterface mSelectInterface;
//    String address;
    BleDevice mBleDevice;
    @Override
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
//        return super.onCreateView(inflater, container, savedInstanceState);
        View view =inflater.inflate(R.layout.fragthree,container,false);
        back   = (Button) view.findViewById(R.id.backbutton);
        wlan = (Button) view.findViewById(R.id.wlan);
        Wired = (Button) view.findViewById(R.id.Wired);
        wlan.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                mSelectInterface.onTitleSelect("3wlan");
            }
        });
        Wired.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                mSelectInterface.onTitleSelect("3Wired");
            }
        });
        back.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                mSelectInterface.onTitleSelect("3back");
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
//            address =text;
        mBleDevice=text;
        Log.i("TAG","mBleDevice:"+mBleDevice);
    }
}
