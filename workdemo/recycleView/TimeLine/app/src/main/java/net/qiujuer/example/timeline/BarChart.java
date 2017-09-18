package net.qiujuer.example.timeline;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;

import java.util.ArrayList;
import java.util.List;


/**
 * Created by Fussen on 2017/4/21.
 * <p>
 * 不可滚动的条形图
 */
public class BarChart extends View {

    private static final String TAG = "BarChart";
    private int mHeight;
    private int mWidth;
    private int marginX =100;
    public BarChart(Context context) {
        this(context, null);
    }

    public BarChart(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public BarChart(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }
    int tempCounts=0;
    @Override
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        tempCounts++;
        Log.i(TAG,"onMeasure:"+tempCounts);
        //宽度的模式
        int mWidthModle = MeasureSpec.getMode(widthMeasureSpec);
        //宽度大小
        int mWidthSize = MeasureSpec.getSize(widthMeasureSpec);

        int mHeightModle = MeasureSpec.getMode(heightMeasureSpec);
        int mHeightSize = MeasureSpec.getSize(heightMeasureSpec);
        //如果明确大小,直接设置大小
        if (mWidthModle == MeasureSpec.EXACTLY) {
            mWidth = mWidthSize;
        } else {
            //计算宽度,可以根据实际情况进行计算
            mWidth = (getPaddingLeft() + getPaddingRight());
            //如果为AT_MOST, 不允许超过默认宽度的大小
            if (mWidthModle == MeasureSpec.AT_MOST) {
                mWidth = Math.min(mWidth, mWidthSize);
            }
        }
        if (mHeightModle == MeasureSpec.EXACTLY) {
            mHeight = mHeightSize;
        } else {
            mHeight = (getPaddingTop() + getPaddingBottom());
            if (mHeightModle == MeasureSpec.AT_MOST) {
                mHeight = Math.min(mHeight, mHeightSize);
            }
        }
        //设置测量完成的宽高
        setMeasuredDimension(mWidth, mHeight);
    }
    @Override
    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
        tempCounts++;
        Log.i(TAG,"onLayout:"+tempCounts);
        mWidth = getWidth();
        mHeight = getHeight();
    }
    @Override
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        tempCounts++;
        Log.i(TAG,"onDraw:"+tempCounts);
        Paint paint=new Paint();
        paint.setColor(Color.RED);  //设置画笔颜色
        paint.setStyle(Paint.Style.FILL);//设置填充样式
        paint.setStrokeWidth(15);//设置画笔宽度
        /**
         * float left, float top, float right, float bottom, Paint paint
         * 距离 左上方 x轴位置
         */
//        //第一个柱子 宽度200 高度200颜色 红色
//        canvas.drawRect(100, 40, 300, 340, paint);//直接构造
//
//        //第二个柱子 宽度50 高度100 颜色 黑色
//        paint.setColor(Color.BLACK);  //设置画笔颜色
//        canvas.drawRect(300, 240, 400, 340, paint);//直接构造
//
//        //第三个柱子 宽度50 高度300 颜色 黑色
//        paint.setColor(Color.BLUE);  //设置画笔颜色
//        canvas.drawRect(400, 40, 450, 340, paint);//直接构造
//
//        //第4个柱子 宽度200 高度100 颜色 黑色
//        paint.setColor(Color.YELLOW);  //设置画笔颜色
//        canvas.drawRect(450, 240, 650, 340, paint);//直接构造
        for (int i = 0; i <horizontalList.size() ; i++) {
            Log.i(TAG,"horizontalList.I:"+horizontalList.get(i));
        }
        for (int i = 0; i <horizontalList.size() ; i++) {
            if(i==0){
                canvas.drawRect(marginX, mHeight-barWidth.get(i), horizontalList.get(i)+marginX, mHeight, paint);//直接构造
            }else {
                Log.i(TAG,"barWidth.get(i):"+barWidth.get(i));
                canvas.drawRect(marginX+getXWidth(i), mHeight-barWidth.get(i), getXWidth(i)+marginX+horizontalList.get(i), mHeight, paint);//直接构造
            }
        }
    }
    float temp =0;
    public float getXWidth(int index){
        float temp =0;
        Log.i(TAG,"index:"+index);
        for (int i = 0; i < index; i++) {
            Log.i(TAG,"horizontalList.GET(I):"+horizontalList.get(i)+",temp:"+temp);
            temp =temp+horizontalList.get(i);
        }
        Log.i(TAG,"temp:"+temp);
        return temp;
    }
    /**
     * 设置x轴
     *
     * @param horizontalList
     */
    private List<Float> horizontalList = new ArrayList<>();//X轴宽度
    public void setHorizontalList(List<Float> horizontalList) {
        if (horizontalList != null)
            this.horizontalList = horizontalList;
    }

    /**
     * 设置柱子高度
     *
     * @param verticalList
     */
    private List<Integer> barWidth = new ArrayList<>();//X轴高度
    public void setVerticalList(List<Integer> verticalList) {
        if (verticalList != null) {
            this.barWidth = verticalList;
        }
        invalidate();
    }

}