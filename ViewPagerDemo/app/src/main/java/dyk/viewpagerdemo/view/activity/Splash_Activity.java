package dyk.viewpagerdemo.view.activity;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.ScaleAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;

import dyk.viewpagerdemo.R;

/**启动 动画
 * Created by dengyangkang on 2017/4/24.
 */

public class Splash_Activity extends FragmentActivity {
    Animation scaleAnimation;
    ImageView mImageView;
    LinearLayout splsh_linearlayout ;
    FragmentManager manager;
    Guider_Activity fragment1;
    FragmentTransaction transaction;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(Window.FEATURE_NO_TITLE);//去掉标题栏
        getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN, WindowManager.LayoutParams.FLAG_FULLSCREEN);//去掉信息栏
        setContentView(R.layout.splash_main);
        manager = getSupportFragmentManager();
        transaction = manager.beginTransaction();
        fragment1 = new Guider_Activity();
        splsh_linearlayout =(LinearLayout)findViewById(R.id.splsh_linearlayout);
        mImageView =new ImageView(this);
        mImageView.setImageResource(R.drawable.guide_1);
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
        }, 500); // 启动动画持续2秒钟
        new Handler().postDelayed(new Runnable() {
            @Override
            public void run() {
               Intent intent = new Intent(Splash_Activity.this,
                       Guider_Activity.class); // 从启动动画ui跳转到主ui
                startActivity(intent);
                overridePendingTransition(R.anim.out, R.anim.in);
             Splash_Activity.this.finish();
            }
        }, 1500); // 启动动画持续3秒钟
    }
}
