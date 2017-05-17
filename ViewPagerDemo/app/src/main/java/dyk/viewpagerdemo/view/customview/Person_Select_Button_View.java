package dyk.viewpagerdemo.view.customview;

import android.content.Context;
import android.content.res.ColorStateList;
import android.util.AttributeSet;
import android.widget.TextView;

/**
 * Created by dengyangkang on 2017/5/13.
 */

public class Person_Select_Button_View extends TextView{
    private static String TAG = "ButtonM";

    private int backColor = 0;//背景颜色
    private ColorStateList textColor = null;//文字颜色

    public Person_Select_Button_View(Context context) {
        super(context);
    }
    public Person_Select_Button_View(Context context, AttributeSet attrs) {
        super(context, attrs);
    }
    public Person_Select_Button_View(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
//        TypedArray a = context.obtainStyledAttributes(attrs, R.styleable.buttonM, defStyle, 0);
    }
}
