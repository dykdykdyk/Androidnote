package net.qiujuer.example.timeline;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
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
    private int marginX =100;//第一条柱子距离左边的距离
    private int marginLineX =50;//x轴横线距离左边的距离
    private int TextHeigth =30;//绘制x轴字体所占高度
    private int DeepSleep =300;//深睡高度 -40
    private int ShalowSleep =200;//深睡高度 -40
    private int Wakeup =100;//清醒高度 -40
    private int ColorMeasure =30;//保留高度(可能需要画方块颜色)
    //文字的size
    private float textSize = sp2px(14);

    private float nuitWidth=0;//柱子单位的宽度
    private float Maxnuit=60*24;//将宽度平均分成多少份
    Paint Linepaint;//画线的画笔
    Paint Barpaint;//画柱子的画笔
    Paint Textpaint;//画字体的画笔
    public BarChart(Context context) {
        this(context, null);
    }

    public BarChart(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public BarChart(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        init();
    }

    private void init() {
        //线画笔
        Linepaint = new Paint();
        Linepaint.setAntiAlias(true);
        Linepaint.setColor(Color.GRAY);
        Linepaint.setStyle(Paint.Style.FILL);//设置填充样式
        Linepaint.setStrokeWidth(5);//设置画笔宽度

        //柱子画笔
        Barpaint = new Paint();
        Barpaint.setAntiAlias(true);//设置抗锯齿
        Barpaint.setColor(Color.RED);//设置颜色
        Barpaint.setStyle(Paint.Style.FILL);//设置填充样式
        Barpaint.setStrokeWidth(15);//设置画笔宽度

        // 字体画笔
        Textpaint = new Paint();
        Textpaint.setAntiAlias(true);//设置抗锯齿
        Textpaint.setColor(Color.BLACK);//设置颜色
        Textpaint.setStyle(Paint.Style.FILL);//设置填充样式
        Textpaint.setTextSize(textSize);//px单位
        Textpaint.setTextAlign(Paint.Align.CENTER);
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
        nuitWidth =mWidth/Maxnuit;
        Log.i(TAG,"nuitWidth："+nuitWidth);
    }
    @Override
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        tempCounts++;
        Log.i(TAG,"onDraw:"+tempCounts);
        Log.i(TAG,"mHeight:"+mHeight);
        for (int i = 1; i <horizontalList.size(); i++) {
            if(barWidth.get(i) ==2){//深睡
                Barpaint.setColor(Color.parseColor("#1C86EE"));
                canvas.drawRect(StringToWidth(horizontalList.get(i-1))*nuitWidth, mHeight-DeepSleep-TextHeigth-ColorMeasure, StringToWidth(horizontalList.get(i))*nuitWidth, mHeight-TextHeigth-ColorMeasure, Barpaint);//直接构造
                Log.i(TAG,"111:"+StringToWidth(horizontalList.get(i-1))*nuitWidth+",后："+StringToWidth(horizontalList.get(i))*nuitWidth);
            }else if(barWidth.get(i) ==3){//浅睡
                Barpaint.setColor(Color.parseColor("#A4D3EE"));
                canvas.drawRect(StringToWidth(horizontalList.get(i-1))*nuitWidth, mHeight-ShalowSleep-TextHeigth-ColorMeasure, StringToWidth(horizontalList.get(i))*nuitWidth, mHeight-TextHeigth-ColorMeasure, Barpaint);//直接构造
                Log.i(TAG,"222:"+StringToWidth(horizontalList.get(i-1))*nuitWidth+",后："+StringToWidth(horizontalList.get(i))*nuitWidth);
            }else if(barWidth.get(i) ==0){//清醒
                Barpaint.setColor(Color.parseColor("#fffe832e"));
                Log.i(TAG,"333:"+StringToWidth(horizontalList.get(i-1))*nuitWidth+",后："+StringToWidth(horizontalList.get(i))*nuitWidth);
                canvas.drawRect(StringToWidth(horizontalList.get(i-1))*nuitWidth, mHeight-Wakeup-TextHeigth-ColorMeasure, StringToWidth(horizontalList.get(i))*nuitWidth, mHeight-TextHeigth-ColorMeasure, Barpaint);//直接构造
            }
        }
        drawLine(canvas);
        drawXLineText(canvas);
//        drawXLineText2(canvas);
    }

    /**
     * 画线
     *
     * @param canvas 画布
    */
    private void drawLine(Canvas canvas) {
        canvas.drawLine(marginLineX, mHeight-TextHeigth-ColorMeasure, mWidth-marginLineX, mHeight-TextHeigth-ColorMeasure, Linepaint);//画X轴横线
    }

    public int StringToWidth(String str){
        int tempCounts =0;
        int index =str.indexOf(":");
        int hour =Integer.parseInt(str.substring(0,index));
        int minute =Integer.parseInt(str.substring(index+1));
        tempCounts =hour *60+minute;
        return tempCounts;
    }
    /**
     * 画x轴下方 每根柱子指定的时间
     *
     * @param canvas 画布
     */
    private void drawXLineText(Canvas canvas) {
        canvas.drawText("00:00", marginLineX, mHeight-ColorMeasure, Textpaint);//画 00:00
        canvas.drawText("12:00", (mWidth-marginLineX)/2, mHeight-ColorMeasure, Textpaint);//画 00:00
        canvas.drawText("24:00", mWidth-marginLineX, mHeight-ColorMeasure, Textpaint);//画 00:00
    }
    /**
     * 保留位置 测试距离
     *
     * @param canvas 画布
     */
    private void drawXLineText2(Canvas canvas) {
        canvas.drawText("00:00", marginLineX+20, mHeight, Textpaint);//画 00:00
    }
    float temp =0;
    public float getXWidth(int index){
        float temp =0;
        for (int i = 0; i < index; i++) {
//            temp =temp+horizontalList.get(i);
        }
        return temp;
    }
    /**
     * 设置x轴
     *
     * @param horizontalList
     */
    private List<String> horizontalList = new ArrayList<>();//X轴数据
    public void setHorizontalList(List<String> horizontalList) {
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

    /**
     * Android 系统标准单位是px，这里 转换成dip返回
     * @param value
     * @return
     */
    public int dp2px(float value) {
        return (int) TypedValue.applyDimension(TypedValue.COMPLEX_UNIT_DIP, value, getResources().getDisplayMetrics());
    }

    /**
     * Android 系统标准单位是px，这里 转换成dip返回
     * @param value 这里转换成sp返回
     * @return
     */
    public float sp2px(float value) {
        Context c = getContext();
        Resources r;
        if (c == null)
            r = Resources.getSystem();
        else
            r = c.getResources();
        return TypedValue.applyDimension(
                TypedValue.COMPLEX_UNIT_SP, value, r.getDisplayMetrics());
    }
}