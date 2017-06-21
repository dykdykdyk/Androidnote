package com.lee.circleseekbar;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.util.Log;
import android.view.View;

import com.lee.circleseekbar.person_goals_scrollview.LoopView;
import com.lee.circleseekbar.person_goals_scrollview.OnItemSelectedListener;
import com.lee.circleseekbar.view.CircleSeekBar;

import java.util.ArrayList;

public class MainActivity_copy extends FragmentActivity implements View.OnClickListener{
    private final boolean DEBUG = true;
    private final String TAG = "MainActivity";

    private LoopView loopView;
    private int currentPosition;
    private ArrayList<String> list;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        loopView =(LoopView)findViewById(R.id.dykview);
        initdata();
        initview();
    }
    private  void initdata() {
        list = new ArrayList<String>();
        for (int i = 4000; i < 16000; i=i+500) {
            list.add(i+"");
        }
        loopView.setItems(list);
        loopView.setTextSize(20.0f);
        loopView.setListener(new OnItemSelectedListener() {
            @Override
            public void onItemSelected(int index) {
                Log.i(TAG,"index:"+list.get(index));
             String  tempIndex =list.get(index);
            }
        });
    }
    private void initview( ){
        CircleSeekBar circleSeekBar = (CircleSeekBar)findViewById(R.id.circle_seekbar);
        circleSeekBar.setProgressMax(120);
        circleSeekBar.setProgress(0);
        circleSeekBar.setOnSeekBarChangeListener(new CircleSeekBar.OnSeekBarChangeListener() {
            @Override
            public void onProgressChanged(int progress) {
                if(DEBUG) Log.d(TAG, "onProgressChanged progress = " + progress);
            }
        });
    }
    /**
     * Called when a view has been clicked.
     *
     * @param v The view that was clicked.
     */
    @Override
    public void onClick(View v) {
    }
}