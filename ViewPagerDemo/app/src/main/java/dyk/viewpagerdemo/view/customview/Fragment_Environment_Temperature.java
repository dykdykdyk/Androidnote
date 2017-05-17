package dyk.viewpagerdemo.view.customview;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;

import dyk.viewpagerdemo.R;
import dyk.viewpagerdemo.view.activity.Blood_Oxygen_Activity;

/**
 * Created by dengyangkang on 2017/5/5.
 */

public class Fragment_Environment_Temperature extends LinearLayout {
    LinearLayout linearLayout ;
    public Fragment_Environment_Temperature(Context context, AttributeSet attrs) {
        super(context, attrs);
        LayoutInflater.from(context).inflate(R.layout.item_home_environment_temperatrue,this);
        linearLayout =(LinearLayout)findViewById(R.id.item_home_step);
        linearLayout.setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) {
                getContext().startActivity(new Intent(getContext(),Blood_Oxygen_Activity.class));
            }
        });
    }
}
