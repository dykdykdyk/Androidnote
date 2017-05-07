package dyk.viewpagerdemo.view.customview;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;

import dyk.viewpagerdemo.R;

/**
 * Created by dengyangkang on 2017/5/5.
 */

public class TitleBar_View  extends RelativeLayout {
    ImageView linearLayout ;
    public TitleBar_View(Context context, AttributeSet attrs) {
        super(context, attrs);
        LayoutInflater.from(context).inflate(R.layout.smartbracelet_topbar,this);
        linearLayout =(ImageView)findViewById(R.id.left_image);
        linearLayout.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                ((Activity)getContext()).finish();
            }
        });
    }
}
