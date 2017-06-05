package com.example.lenovo.touchview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;

/**
 * Created by dengyangkang on 2017/6/3.
 */

public class CircleProgressView extends View {

    private static final String TAG = "CircleProgressBar";

    private int mMaxProgress = 100;//最大进度值

    private int mProgress = 0;//当前进度值

    private final int mCircleLineStrokeWidth = 8;//圆弧宽度
    private final int mCircleDiameterLength = 200;//圆弧直径

    private final int mTxtStrokeWidth = 2;//字体宽度

    // 画圆所在的距形区域
    private final RectF mRectF;

    private final Paint mPaint;

    private final Context mContext;

    private String mTxtHint1;//显示文案文字上面

    private String mTxtHint2;//显示文案文字下面

    public CircleProgressView(Context context, AttributeSet attrs) {
        super(context, attrs);

        mContext = context;
        mRectF = new RectF();
        mPaint = new Paint();
    }

    @Override
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int width = this.getWidth();
        int height = this.getHeight();

//        if (width != height) {
//            int min = Math.min(width, height);
//            width = min;
//            height = min;
//        }

        // 设置画笔相关属性
        mPaint.setAntiAlias(true);//抗锯齿
        mPaint.setColor(Color.parseColor("#22000000"));
        canvas.drawColor(Color.TRANSPARENT);//设置透明
        mPaint.setStrokeWidth(mCircleLineStrokeWidth);
        mPaint.setStyle(Paint.Style.STROKE);
        // 位置
        mRectF.left = width/2-mCircleDiameterLength; // 左上角x
        mRectF.top = height / 4-mCircleDiameterLength; // 右上角y
        mRectF.right = width/2+mCircleDiameterLength; // 左下角x
        mRectF.bottom = height / 4+mCircleDiameterLength;// 右下角y

        // 绘制圆圈，进度条背景
        /**
         * 参数：
         RectF oval:生成椭圆的矩形
         float startAngle：弧开始的角度，以X轴正方向为0度
         float sweepAngle：弧持续的角度
         boolean useCenter:是否有弧的两边，True，还两边，False，只有一条弧
         */
        canvas.drawArc(mRectF, -90, 360, false, mPaint);
        mPaint.setColor(Color.rgb(0xf8, 0x60, 0x30));
        canvas.drawArc(mRectF, -90, ((float) mProgress / mMaxProgress) * 360, false, mPaint);

        // 绘制进度文案显示
        mPaint.setStrokeWidth(mTxtStrokeWidth);
        String text = mProgress + "%";
        int textHeight = height / 4;
        mPaint.setTextSize(textHeight);
        int textWidth = (int) mPaint.measureText(text, 0, text.length());
        mPaint.setStyle(Paint.Style.FILL);
        canvas.drawText(text, width / 2 - textWidth / 2, height / 2 + textHeight / 2, mPaint);

        if (!TextUtils.isEmpty(mTxtHint1)) {
            mPaint.setStrokeWidth(mTxtStrokeWidth);
            text = mTxtHint1;
            textHeight = height / 8;
            mPaint.setTextSize(textHeight);
            mPaint.setColor(Color.rgb(0x99, 0x99, 0x99));
            textWidth = (int) mPaint.measureText(text, 0, text.length());
            mPaint.setStyle(Paint.Style.FILL);
            canvas.drawText(text, width / 2 - textWidth / 2, height / 4 + textHeight / 2, mPaint);
        }

        if (!TextUtils.isEmpty(mTxtHint2)) {
            mPaint.setStrokeWidth(mTxtStrokeWidth);
            text = mTxtHint2;
            textHeight = height / 8;
            mPaint.setTextSize(textHeight);
            textWidth = (int) mPaint.measureText(text, 0, text.length());
            mPaint.setStyle(Paint.Style.FILL);
            Math.abs(10);
            canvas.drawText(text, width / 2 - textWidth / 2, 3 * height / 4 + textHeight / 2, mPaint);
        }
    }
    @Override
    public boolean onTouchEvent(MotionEvent event) {
        int xCounts=(int)event.getX();
        int yCounts=(int)event.getY();
        switch (event.getAction()) {
            case MotionEvent.ACTION_DOWN:
                // 通知重绘
                postInvalidate();   //该方法会调用onDraw方法，重新绘图
                break;
            case MotionEvent.ACTION_MOVE:
        // 按下
        Log.i(TAG,"event event.getX():"+ (int)event.getX()+"event.getY():"+ (int)event.getY());
        Log.i(TAG,"event  mRectF.left:"+  mRectF.left+", mRectF.top:"+  mRectF.top);
        Log.i(TAG,"event  mRectF.right:"+  mRectF.right+", mRectF.bottom:"+  mRectF.bottom);
        /**
         *         mRectF.left = width/2-mCircleDiameterLength; // 左上角x  x轴最小值
         mRectF.top = height / 4-mCircleDiameterLength; // 左上角y  y轴最小值
         mRectF.right = width/2+mCircleDiameterLength; // 左下角x   x轴最大值
         mRectF.bottom = height / 4+mCircleDiameterLength;// 右下角y  y轴最大值
         (mRectF.right - mRectF.left)/2
         */
                Math.sqrt();
        if( mRectF.left+(mRectF.right - mRectF.left)/2<=xCounts  && xCounts<=mRectF.right && yCounts<=(mRectF.top+(mRectF.bottom -mRectF.top)/2)) {//第一象限
            Log.i(TAG, "第一象限");
            //((float) mProgress / mMaxProgress)
            Log.i(TAG, "mProgress:" + mProgress);
            Log.i(TAG, "1:" + (xCounts - (mRectF.left + (mRectF.right - mRectF.left) / 2)));
            Log.i(TAG, "2:" + ((mRectF.right - mRectF.left) / 2));
            Log.i(TAG, "3:" + (int) ((((float) (xCounts - (mRectF.left + (mRectF.right - mRectF.left) / 2))) / (float) ((mRectF.right - mRectF.left) / 2)) * 25));
            Log.i(TAG, "mProgressmProgress:" + mProgress);
            mProgress = (int) ((((float) (xCounts - (mRectF.left + (mRectF.right - mRectF.left) / 2))) / (float) ((mRectF.right - mRectF.left) / 2)) * 25);
            Log.i(TAG, "mProgress:" + mProgress);
            this.invalidate();
        }
                break;
            case MotionEvent.ACTION_UP:
                // 抬起
//                cx = (int) event.getX();
//                cy = (int) event.getY();
                // 通知重绘
                postInvalidate();
                break;
        }

            /*
             * 备注1：此处一定要将return super.onTouchEvent(event)修改为return true，原因是：
             * 1）父类的onTouchEvent(event)方法可能没有做任何处理，但是返回了false。
             * 2)一旦返回false，在该方法中再也不会收到MotionEvent.ACTION_MOVE及MotionEvent.ACTION_UP事件。
             */
        //return super.onTouchEvent(event);
        return true;
    }
    public int getMaxProgress() {
        return mMaxProgress;
    }

    public void setMaxProgress(int maxProgress) {
        this.mMaxProgress = maxProgress;
    }

    public void setProgress(int progress) {
        this.mProgress = progress;
        this.invalidate();
    }

    public void setProgressNotInUiThread(int progress) {
        this.mProgress = progress;
        this.postInvalidate();
    }

    public String getmTxtHint1() {
        return mTxtHint1;
    }

    public void setmTxtHint1(String mTxtHint1) {
        this.mTxtHint1 = mTxtHint1;
    }

    public String getmTxtHint2() {
        return mTxtHint2;
    }

    public void setmTxtHint2(String mTxtHint2) {
        this.mTxtHint2 = mTxtHint2;
    }
}