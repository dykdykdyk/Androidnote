package com.yasin.measuredemo;

import android.animation.ObjectAnimator;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.animation.AccelerateDecelerateInterpolator;

import com.yasin.measuredemo.view.MeasureView3;

public class MainActivity extends AppCompatActivity {
    private MeasureView3 mMeasureView;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main2);
        mMeasureView= (MeasureView3) findViewById(R.id.id_measure_view);
        startAni();
    }

    private void startAni() {
        ObjectAnimator a=ObjectAnimator.ofFloat(mMeasureView,"Progress2",0.0f,1f);
        ObjectAnimator a2=ObjectAnimator.ofFloat(mMeasureView,"Progress",0.0f,0.6f);
        a.setInterpolator(new AccelerateDecelerateInterpolator());
        a.setDuration(1000);
        a.start();
        a2.setInterpolator(new AccelerateDecelerateInterpolator());
        a2.setDuration(1000);
        a2.start();
    }
}
