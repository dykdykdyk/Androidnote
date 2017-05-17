package dyk.viewpagerdemo.view.customview;

import android.content.Context;
import android.content.Intent;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;

import dyk.viewpagerdemo.R;
import dyk.viewpagerdemo.view.activity.Sleep_Activity;

/**
 * Created by dengyangkang on 2017/5/4.
 */

public class Fragment_Main_Health_Temperature extends LinearLayout {
    LinearLayout linearLayout ;
    public Fragment_Main_Health_Temperature(Context context, AttributeSet attrs) {
        super(context, attrs);
        LayoutInflater.from(context).inflate(R.layout.item_home_health_temperatrue,this);
        linearLayout =(LinearLayout)findViewById(R.id.item_home_step);
        linearLayout.setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) {
                getContext().startActivity(new Intent(getContext(),Sleep_Activity.class));
            }
        });
    }
}
