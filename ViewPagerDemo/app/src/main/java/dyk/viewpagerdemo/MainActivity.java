package dyk.viewpagerdemo;

import android.app.Activity;
import android.os.Bundle;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.LinearLayout;

import java.util.ArrayList;

/**
 * @author yangyu
 *	功能描述：主程序入口类
 */
public class MainActivity extends Activity implements OnClickListener,OnPageChangeListener {
	//定义ViewPager对象
	private ViewPager viewPager;

	//定义ViewPager适配器
	private ViewPagerAdapter vpAdapter;

	//定义一个ArrayList来存放View
	private ArrayList<View> views;

	//引导图片资源
	private static final int[] pics = {R.mipmap.guider_1,R.mipmap.guider_2,R.mipmap.guider_3};

	//底部小点的图片
	private ImageView[] points;

	//记录当前选中位置
	private int currentIndex;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		requestWindowFeature(Window.FEATURE_NO_TITLE);//去掉标题栏
		getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN, WindowManager.LayoutParams.FLAG_FULLSCREEN);//去掉信息栏
		setContentView(R.layout.activity_main);
		initView();

		initData();
	}

	/**
	 * 初始化组件
	 */
	private void initView(){
		//实例化ArrayList对象
		views = new ArrayList<View>();

		//实例化ViewPager
		viewPager = (ViewPager) findViewById(R.id.viewpager);

		//实例化ViewPager适配器
		vpAdapter = new ViewPagerAdapter(views);
	}

	/**
	 * 初始化数据
	 */
	private void initData(){
		//定义一个布局并设置参数
		LinearLayout.LayoutParams mParams = new LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT,
				LinearLayout.LayoutParams.MATCH_PARENT);

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
		LinearLayout linearLayout = (LinearLayout) findViewById(R.id.ll);

		points = new ImageView[pics.length];

		//循环取得小点图片
		for (int i = 0; i < pics.length; i++) {
			//得到一个LinearLayout下面的每一个子元素
			points[i] = (ImageView) linearLayout.getChildAt(i);
			//默认都设为灰色
			points[i].setEnabled(true);
			//给每个小点设置监听
			points[i].setOnClickListener(this);
			//设置位置tag，方便取出与当前位置对应
			points[i].setTag(i);
		}

		//设置当面默认的位置
		currentIndex = 0;
		//设置为白色，即选中状态
		points[currentIndex].setEnabled(false);
	}

	/**
	 * 当滑动状态改变时调用
	 */
	@Override
	public void onPageScrollStateChanged(int arg0) {

	}

	/**
	 * 当当前页面被滑动时调用
	 */

	@Override
	public void onPageScrolled(int arg0, float arg1, int arg2) {

	}

	/**
	 * 当新的页面被选中时调用
	 */

	@Override
	public void onPageSelected(int position) {
		//设置底部小点选中状态
		setCurDot(position);
	}

	/**
	 * 通过点击事件来切换当前的页面
	 */
	@Override
	public void onClick(View v) {
		int position = (Integer)v.getTag();
		setCurView(position);
		setCurDot(position);
	}

	/**
	 * 设置当前页面的位置
	 */
	private void setCurView(int position){
		if (position < 0 || position >= pics.length) {
			return;
		}
		viewPager.setCurrentItem(position);
	}

	/**
	 * 设置当前的小点的位置
	 */
	private void setCurDot(int positon){
		if (positon < 0 || positon > pics.length - 1 || currentIndex == positon) {
			return;
		}
		points[positon].setEnabled(false);
		points[currentIndex].setEnabled(true);

		currentIndex = positon;
	}

}
