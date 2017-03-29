package com.example.eventdistribution;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;

public class MyLayout extends FrameLayout{
/*
 *1. Android事件分发是先传递到ViewGroup，再由ViewGroup传递到View的。
2. 在ViewGroup中可以通过onInterceptTouchEvent方法对事件传递进行拦截，onInterceptTouchEvent方法返回true代表不允许事件继续向子View传递，返回false代表不对事件进行拦截，默认返回false。
3. 子View中如果将传递的事件消费掉，ViewGroup中将无法接收到任何事件。
 */
	public MyLayout(Context context) {
		super(context);
		// TODO Auto-generated constructor stub
	}
	public MyLayout(Context context, AttributeSet attrs) {
		super(context, attrs);
		// TODO Auto-generated constructor stub
	}
	//系统默认返回false
    @Override
    public boolean onInterceptTouchEvent(MotionEvent ev) { 
        Log.e(MainActivity.TAG,"MyLayout onInterceptTouchEvent. "   
        + super.onInterceptTouchEvent(ev));  
    	return super.onInterceptTouchEvent(ev);
//        return true;
    }
  //系统默认返回false
    @Override
    public boolean onTouchEvent(MotionEvent event) {
         Log.e(MainActivity.TAG,"MyLayout onTouchEvent."   
         + super.onTouchEvent(event));  
    	return super.onTouchEvent(event);
//    	   return true;
    }
    @Override
    public boolean dispatchTouchEvent(MotionEvent ev) {
    	  Log.e(MainActivity.TAG,"MyLayout dispatchTouchEvent."   
    		         + super.onTouchEvent(ev));  
    	return super.dispatchTouchEvent(ev);
    }


}
