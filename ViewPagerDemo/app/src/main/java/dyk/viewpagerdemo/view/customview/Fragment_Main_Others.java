package dyk.viewpagerdemo.view.customview;

import android.content.Context;
import android.content.Intent;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;

import dyk.viewpagerdemo.R;
import dyk.viewpagerdemo.view.activity.Other_Main_Activity;

/**
 * Created by dengyangkang on 2017/5/4.
 */

public class Fragment_Main_Others extends LinearLayout {
    RelativeLayout linearLayout ;
    public Fragment_Main_Others(final Context context, AttributeSet attrs) {
        super(context, attrs);
        LayoutInflater.from(context).inflate(R.layout.item_home_tired,this);
        linearLayout =(RelativeLayout)findViewById(R.id.item_home_others_linearlayout);
        linearLayout.setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) {
                getContext().startActivity(new Intent(getContext(),Other_Main_Activity.class));
            }
        });
    }
}
