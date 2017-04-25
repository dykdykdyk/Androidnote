package dyk.viewpagerdemo;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.animation.Animation;
import android.view.animation.ScaleAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;

/**
 * Created by dengyangkang on 2017/4/24.
 */

public class SplashActivity extends Activity{
    Animation scaleAnimation;
    ImageView mImageView;
    LinearLayout splsh_linearlayout ;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.splash_main);
        splsh_linearlayout =(LinearLayout)findViewById(R.id.splsh_linearlayout);
        mImageView =new ImageView(this);
        mImageView.setImageResource(R.mipmap.guide_1);
        mImageView.setLayoutParams(new LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.MATCH_PARENT));
        mImageView.setScaleType(ImageView.ScaleType. CENTER_CROP);
        scaleAnimation = new ScaleAnimation(0.0f,1.0f,0.0f,1.0f,Animation.RELATIVE_TO_SELF,0.5f,Animation.RELATIVE_TO_SELF,0.5f);
        scaleAnimation.setDuration(1000);
        new Handler().postDelayed(new Runnable() {
            @Override
            public void run() {
                mImageView.startAnimation(scaleAnimation);
                splsh_linearlayout.addView(mImageView);
            }
        }, 2000); // 启动动画持续2秒钟
        new Handler().postDelayed(new Runnable() {
            @Override
            public void run() {
               Intent intent = new Intent(SplashActivity.this,
                       MainActivity.class); // 从启动动画ui跳转到主ui
                startActivity(intent);
             SplashActivity.this.finish();
            }
        }, 3000); // 启动动画持续3秒钟
    }
}
