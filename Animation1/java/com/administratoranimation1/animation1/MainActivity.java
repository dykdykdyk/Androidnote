package com.administratoranimation1.animation1;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.TextView;

public class MainActivity extends Activity implements View.OnClickListener{
    Button alphaBtn ;
    Button scaleBtn	;
    Button rotateBtn ;
    Button translateBtn ;
    Button setBtn;
    TextView tv;
    Animation alpaAnimation;
    Animation scaleAnimation;
    Animation rotateAnimation;
    Animation translateAnimation;
    Animation setAnimation;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        initCtrl();
        initAnimation();
    }
    private void initCtrl()
    {
        alphaBtn = (Button)findViewById(R.id.btn_alpha_anim);
        scaleBtn = (Button)findViewById(R.id.btn_scale_anim);
        rotateBtn= (Button)findViewById(R.id.btn_rotate_anim);
        translateBtn= (Button)findViewById(R.id.btn_translate_anim);
        setBtn = (Button)findViewById(R.id.btn_set_anim);
        tv  = (TextView)findViewById(R.id.tv);
        alphaBtn.setOnClickListener(this);
        scaleBtn.setOnClickListener(this);
        rotateBtn.setOnClickListener(this);
        translateBtn.setOnClickListener(this);
        setBtn.setOnClickListener(this);
        tv.setOnClickListener(this);
    }
    private void initAnimation()
    {
        alpaAnimation = AnimationUtils.loadAnimation(this, R.anim.alphaanim);
        scaleAnimation = AnimationUtils.loadAnimation(this, R.anim.scaleanim);
        rotateAnimation = AnimationUtils.loadAnimation(this, R.anim.rotateanim);
        translateAnimation = AnimationUtils.loadAnimation(this, R.anim.translateanim);
        setAnimation = AnimationUtils.loadAnimation(this, R.anim.setanim);
    }
    @Override
    public void onClick(View view) {
        switch(view.getId()){
            case R.id.btn_alpha_anim:
                tv.startAnimation(alpaAnimation);
                break;
            case R.id.btn_scale_anim:
                tv.startAnimation(scaleAnimation);
                break;
            case R.id.btn_rotate_anim:
                tv.startAnimation(rotateAnimation);
                break;
            case R.id.btn_translate_anim:
                tv.startAnimation(translateAnimation);
                break;
            case R.id.btn_set_anim:
                tv.startAnimation(setAnimation);
                break;
        }
    }
}
