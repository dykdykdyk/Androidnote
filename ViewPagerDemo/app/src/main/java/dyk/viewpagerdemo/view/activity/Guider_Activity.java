package dyk.viewpagerdemo.view.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.util.Log;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;

import java.util.ArrayList;

import dyk.viewpagerdemo.R;
import dyk.viewpagerdemo.view.adapter.ViewPagerAdapter;

/**
 * @author yangyu
 *	功能描述：主程序入口类
 */
public class Guider_Activity extends Activity implements OnPageChangeListener {
	private String TAG ="Guider_Fragment";
	//定义ViewPager对象
	private ViewPager viewPager;
	//定义ViewPager适配器
	private ViewPagerAdapter vpAdapter;
	//定义一个ArrayList来存放View
	private ArrayList<View> views;
	//引导图片资源
	private static final int[] pics = {R.drawable.guider_1,R.drawable.guider_2,R.drawable.guider_3};
    private ImageView mGuide_red_point;
	private ArrayList<ImageView> mImageViewArrayList;
	private LinearLayout  mLlContainear;
	private int mPointWidth;
	private TextView guider_tv_enter;
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		requestWindowFeature(Window.FEATURE_NO_TITLE);//去掉标题栏
		getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN, WindowManager.LayoutParams.FLAG_FULLSCREEN);//去掉信息栏
		setContentView(R.layout.guider_activity);
		initView();
		initData();
	}

	/**
	 * 初始化组件
	 */
	private void initView(){
		//实例化ArrayList对象
		guider_tv_enter =(TextView)findViewById(R.id.guider_tv_enter);
		guider_tv_enter.setOnClickListener(new View.OnClickListener() {
			@Override
			public void onClick(View v) {
				startActivity(new Intent(Guider_Activity.this,Main_Activity.class));
			}
		});
		views = new ArrayList<View>();
		mImageViewArrayList =  new ArrayList<ImageView>();
		//实例化ViewPager
		viewPager = (ViewPager)findViewById(R.id.viewpager);
		mGuide_red_point = (ImageView)findViewById(R.id.guide_red_point);
		//实例化ViewPager适配器
		vpAdapter = new ViewPagerAdapter(views);
		mLlContainear =(LinearLayout)findViewById(R.id.llContainer);
	}

	/**
	 * 初始化数据
	 */
	private void initData(){
		//定义一个布局并设置参数
		LinearLayout.LayoutParams mParams = new LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT,
				LinearLayout.LayoutParams.MATCH_PARENT);
// 动态得出圆点的个数，距离，并添加到线性布局中

		for (int i = 0;i<pics.length;i++){
			ImageView iv = new ImageView(this);
			iv.setBackgroundResource(pics[i]);
			mImageViewArrayList.add(iv);
			ImageView circleView = new ImageView(this);
			circleView.setBackgroundResource(R.drawable.guide_circle_shape_select);
			LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(
					LinearLayout.LayoutParams.WRAP_CONTENT,LinearLayout.LayoutParams.WRAP_CONTENT);
			if (i>0){
				params.leftMargin = 15;
			}
			circleView.setLayoutParams(params);
			mLlContainear.addView(circleView);//在添加到布局文件中是的时需要注意一点：要添加的父布局是什么布局，这里添加的就是什么布局。
		}
		//初始化引导图片列表
		for(int i=0; i<pics.length; i++) {
			ImageView iv = new ImageView(this);
			iv.setLayoutParams(mParams);
			iv.setImageResource(pics[i]);
			iv.setScaleType(ImageView.ScaleType. CENTER_CROP);
			views.add(iv);
		}

		//设置数据
		viewPager.setAdapter(vpAdapter);
		//设置监听
		viewPager.setOnPageChangeListener(this);
		//初始化底部小点
		initPoint();
	}
	/**
	 * 初始化底部小点
	 */
	private void initPoint(){
		mGuide_red_point.getViewTreeObserver().addOnGlobalLayoutListener(
				new ViewTreeObserver.OnGlobalLayoutListener() {
					@Override
					public void onGlobalLayout() {
						mGuide_red_point.getViewTreeObserver().removeOnGlobalLayoutListener(this);
						mPointWidth = mLlContainear.getChildAt(1).getLeft()-
								mLlContainear.getChildAt(0).getLeft();
					}
				});
	}

	/**
	 * 当滑动状态改变时调用
	 */
	@Override
	public void onPageScrollStateChanged(int arg0) {

	}

	/**
	 * 当前页面被滑动时调用
	 */
	RelativeLayout.LayoutParams params;
	@Override
	public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
		Log.i(TAG,"position: "+position);
			int leftMargin = (int) (position * mPointWidth + mPointWidth * positionOffset);
		RelativeLayout.LayoutParams	params = (RelativeLayout.LayoutParams)
					mGuide_red_point.getLayoutParams();
			params.leftMargin = leftMargin;
		mGuide_red_point.setLayoutParams(params);
	}

	/**
	 * This method will be invoked when a new page becomes selected. Animation is not
	 * necessarily complete.
	 *
	 * @param position Position index of the new selected page.
	 */
	@Override
	public void onPageSelected(int position) {
		Log.i(TAG,"onPageSelected position: "+position);
	}
}
