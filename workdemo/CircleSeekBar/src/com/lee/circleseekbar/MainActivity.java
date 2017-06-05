package com.lee.circleseekbar;

import android.app.Activity;
import android.graphics.Color;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.widget.RelativeLayout;

import com.lee.circleseekbar.view.CircleSeekBar;
import com.lee.circleseekbar.view.CircleSeekBar.OnSeekBarChangeListener;

public class MainActivity extends Activity {

    private final boolean DEBUG = true;
    private final String TAG = "MainActivity";
    
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        RelativeLayout mainLayout = (RelativeLayout) LayoutInflater.from(this).inflate(R.layout.activity_main, null);
        setContentView(mainLayout);
        
        CircleSeekBar circleSeekBar = (CircleSeekBar) findViewById(R.id.circle_seekbar);
        circleSeekBar.setProgress(100);
        circleSeekBar.setProgressFrontColor(Color.RED);
        circleSeekBar.setOnSeekBarChangeListener(new CircleSeekBarOnChangeListener());
    
        CircleSeekBar circleSeekBar2 = new CircleSeekBar(this);
        circleSeekBar2.setProgress(10);
        circleSeekBar2.setProgressFrontColor(Color.RED);
        circleSeekBar2.setProgressThumb(R.drawable.thumb);
        circleSeekBar2.setOnSeekBarChangeListener(new CircleSeekBarOnChangeListener());
        RelativeLayout.LayoutParams circleSeekBarParams = new RelativeLayout.LayoutParams(200, 200);
        circleSeekBarParams.addRule(RelativeLayout.ALIGN_PARENT_BOTTOM);
        mainLayout.addView(circleSeekBar2, circleSeekBarParams);
    }

    private class CircleSeekBarOnChangeListener implements OnSeekBarChangeListener{

        @Override
        public void onProgressChanged(int progress) {
            if(DEBUG) Log.d(TAG, "onProgressChanged progress = " + progress);
        }

        @Override
        public void onStartTrackingTouch() {
            if(DEBUG) Log.d(TAG, "onStartTrackingTouch");
        }

        @Override
        public void onStopTrackingTouch() {
            if(DEBUG) Log.d(TAG, "onStopTrackingTouch");
        }
        
    }
    
}