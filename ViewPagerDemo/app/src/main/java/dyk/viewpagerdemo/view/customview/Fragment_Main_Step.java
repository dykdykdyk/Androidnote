package dyk.viewpagerdemo.view.customview;

import android.content.Context;
import android.content.Intent;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;

import dyk.viewpagerdemo.R;
import dyk.viewpagerdemo.view.activity.Step_Activity;

/**
 * Created by dengyangkang on 2017/5/4.
 */

public class Fragment_Main_Step extends LinearLayout {
    LinearLayout linearLayout ;
    public Fragment_Main_Step(Context context, AttributeSet attrs) {
        super(context, attrs);
        LayoutInflater.from(context).inflate(R.layout.item_home_step,this);
        linearLayout =(LinearLayout)findViewById(R.id.item_home_step);
        linearLayout.setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) {
                getContext().startActivity(new Intent(getContext(),Step_Activity.class));
            }
        });
    }
}
