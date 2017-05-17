package dyk.viewpagerdemo.view.customview;

import android.content.Context;
import android.content.Intent;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;

import dyk.viewpagerdemo.R;
import dyk.viewpagerdemo.ble.application.BleDevice;
import dyk.viewpagerdemo.interfaces.BleDevicetransfer;
import dyk.viewpagerdemo.utils.DataHelper.StorageSharedPreferenced;
import dyk.viewpagerdemo.utils.LogUtil;
import dyk.viewpagerdemo.utils.UtilTools;
import dyk.viewpagerdemo.view.activity.Step_Activity;

/**
 * Created by dengyangkang on 2017/5/4.
 */

public class Fragment_Main_Step extends LinearLayout implements BleDevicetransfer{
    LinearLayout linearLayout ;
    ProgressBar progressbar_step;
    TextView vitual_progress;
    RelativeLayout relativeLayout;
    BleDevice mBleDevice;
    public Fragment_Main_Step(Context context, AttributeSet attrs) {
        super(context, attrs);
        LayoutInflater.from(context).inflate(R.layout.item_home_step,this);
        linearLayout =(LinearLayout)findViewById(R.id.item_home_step);
        relativeLayout =(RelativeLayout)findViewById(R.id.relative);
        vitual_progress =(TextView) findViewById(R.id.vitual_progress);
        vitual_progress.setVisibility(View.GONE);
        relativeLayout.setVisibility(View.VISIBLE);
        progressbar_step =(ProgressBar)findViewById(R.id.progressbar_step);
        progressbar_step.setMax(StorageSharedPreferenced.getDataint(UtilTools.PERSONAL_GOALS));
        progressbar_step.setProgress(40);
        linearLayout.setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) {
                getContext().startActivity(new Intent(getContext(),Step_Activity.class));
            }
        });
    }

    @Override
    public void Devicetransfer(BleDevice Ble) {
        LogUtil.d("Fragment_Main_Step",Ble.getAddress());
        mBleDevice =Ble;
    }
}
