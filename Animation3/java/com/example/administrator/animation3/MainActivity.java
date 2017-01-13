package com.example.administrator.animation3;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.BounceInterpolator;
import android.view.animation.RotateAnimation;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;
import android.widget.Button;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity implements View.OnClickListener{
    Button scaleBtn,alphaBtn,translateBtn,rotateBtn,setBtn,interpolateBtn;
    TextView tv;

    Animation scaleAnim,alphaAnim,translateAnim,rotateAnim,interpolateScaleAnim;
    AnimationSet setAnim;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        initCtrl();
        initAnim();

        scaleBtn.setOnClickListener(this);
        alphaBtn.setOnClickListener(this);
        translateBtn.setOnClickListener(this);
        rotateBtn.setOnClickListener(this);
        setBtn.setOnClickListener(this);
        interpolateBtn.setOnClickListener(this);
    }
    private void initCtrl(){
        scaleBtn = (Button)findViewById(R.id.btn_scale);
        alphaBtn = (Button)findViewById(R.id.btn_alpha);
        translateBtn = (Button)findViewById(R.id.btn_translate);
        rotateBtn = (Button)findViewById(R.id.btn_rotate);
        setBtn = (Button)findViewById(R.id.btn_set);
        interpolateBtn = (Button)findViewById(R.id.btn_interpolator);
        tv = (TextView)findViewById(R.id.tv);
    }
    private void initAnim(){
        alphaAnim = new AlphaAnimation(1.0f,0.1f);
        alphaAnim.setDuration(3000);
        alphaAnim.setFillBefore(true);

        scaleAnim = new ScaleAnimation(0.0f,1.4f,0.0f,1.4f,Animation.RELATIVE_TO_SELF,0.5f,Animation.RELATIVE_TO_SELF,0.5f);
        scaleAnim.setDuration(700);


        translateAnim = new TranslateAnimation(Animation.ABSOLUTE, 0, Animation.ABSOLUTE, -80,
                Animation.ABSOLUTE, 0, Animation.ABSOLUTE, -80);
        translateAnim.setDuration(2000);
        translateAnim.setFillBefore(true);

        rotateAnim = new RotateAnimation(0, -650, Animation.RELATIVE_TO_SELF, 0.5f, Animation.RELATIVE_TO_SELF, 0.5f);
        rotateAnim.setDuration(3000);
        rotateAnim.setFillAfter(true);

        setAnim=new AnimationSet(true);
        setAnim.addAnimation(alphaAnim);
        setAnim.addAnimation(scaleAnim);
        setAnim.addAnimation(rotateAnim);
        setAnim.setFillAfter(true);

        interpolateScaleAnim=new ScaleAnimation(0.0f,1.4f,0.0f,1.4f,Animation.RELATIVE_TO_SELF,0.5f,Animation.RELATIVE_TO_SELF,0.5f);
        interpolateScaleAnim.setInterpolator(new BounceInterpolator());
        interpolateScaleAnim.setDuration(3000);

    }

    @Override
    public void onClick(View v) {
        if (v.equals(alphaBtn)) {
            tv.startAnimation(alphaAnim);
        }else if (v.equals(scaleBtn)) {
            tv.startAnimation(scaleAnim);
        }else if (v.equals(translateBtn)) {
            tv.startAnimation(translateAnim);
        }else if (v.equals(rotateBtn)) {
            tv.startAnimation(rotateAnim);
        }else if (v.equals(setBtn)) {
            tv.startAnimation(setAnim);
        }else if (v.equals(interpolateBtn)) {
            tv.startAnimation(interpolateScaleAnim);
        }
    }
}
