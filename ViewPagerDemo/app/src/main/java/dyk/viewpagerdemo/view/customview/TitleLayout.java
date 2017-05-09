package dyk.viewpagerdemo.view.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.LinearLayout;

import dyk.viewpagerdemo.R;

/**
 * Created by dengyangkang on 2017/5/3.
 */

public class TitleLayout extends LinearLayout {

    public TitleLayout(Context context, AttributeSet attrs) {
        super(context, attrs);
        LayoutInflater.from(context).inflate(R.layout.title_layout,this);
//        Button titleBack =(Button)findViewById(R.id.back);
//        Button titleEdit =(Button)findViewById(R.id.edit);
//        titleBack.setOnClickListener(new OnClickListener() {
//            @Override
//            public void onClick(View v) {
//                ((Activity)getContext()).finish();
//            }
//        });
//        titleEdit.setOnClickListener(new OnClickListener() {
//            @Override
//            public void onClick(View v) {
//                Toast.makeText(getContext(),"666",Toast.LENGTH_LONG).show();
//            }
//        });
    }
}
