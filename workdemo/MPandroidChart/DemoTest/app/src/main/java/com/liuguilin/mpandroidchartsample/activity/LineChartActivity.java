package com.liuguilin.mpandroidchartsample.activity;
/*
 *  项目名：  MPAndroidChartSample 
 *  包名：    com.liuguilin.mpandroidchartsample
 *  文件名:   LineChartActivity
 *  创建者:   LGL
 *  创建时间:  2016/11/15 18:10
 *  描述：    一个简单的演示线形图
 */

import android.graphics.Color;
import android.graphics.DashPathEffect;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;

import com.github.mikephil.charting.animation.Easing;
import com.github.mikephil.charting.charts.LineChart;
import com.github.mikephil.charting.components.Legend;
import com.github.mikephil.charting.components.LimitLine;
import com.github.mikephil.charting.components.XAxis;
import com.github.mikephil.charting.components.YAxis;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.data.LineData;
import com.github.mikephil.charting.data.LineDataSet;
import com.github.mikephil.charting.highlight.Highlight;
import com.github.mikephil.charting.interfaces.datasets.ILineDataSet;
import com.github.mikephil.charting.listener.ChartTouchListener;
import com.github.mikephil.charting.listener.OnChartGestureListener;
import com.github.mikephil.charting.listener.OnChartValueSelectedListener;
import com.github.mikephil.charting.utils.Utils;
import com.liuguilin.mpandroidchartsample.R;

import java.util.ArrayList;
import java.util.List;

public class LineChartActivity extends BaseActivity implements OnChartGestureListener, OnChartValueSelectedListener, View.OnClickListener {

    private LineChart mLineChar;
    private LineDataSet set1;

    //显示顶点值
    private Button btn_show_values;
    //是否填满
    private Button btn_actionToggleFilled;
    //是否显示圆点
    private Button btn_actionToggleCircles;
    //切换立方
    private Button btn_actionToggleCubic;
    //切换尖角/矩形
    private Button btn_actionToggleStepped;
    //切换横向立方
    private Button btn_actionToggleHorizontalCubic;
    //x轴动画
    private Button btn_anim_x;
    //y轴动画
    private Button btn_anim_y;
    //xy轴动画
    private Button btn_anim_xy;
    //保存到sd卡
    private Button btn_save_sd;
    //切换自动最大最小值
    private Button btn_auto_mix_max;
    //高亮显示
    private Button btn_actionToggleHighlight;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_linechar);

        initView();
    }

    //初始化View
    private void initView() {

        //基本控件
        btn_show_values = (Button) findViewById(R.id.btn_show_values);
        btn_show_values.setOnClickListener(this);
        btn_actionToggleFilled = (Button) findViewById(R.id.btn_actionToggleFilled);
        btn_actionToggleFilled.setOnClickListener(this);
        btn_actionToggleCircles = (Button) findViewById(R.id.btn_actionToggleCircles);
        btn_actionToggleCircles.setOnClickListener(this);
        btn_actionToggleCubic = (Button) findViewById(R.id.btn_actionToggleCubic);
        btn_actionToggleCubic.setOnClickListener(this);
        btn_actionToggleStepped = (Button) findViewById(R.id.btn_actionToggleStepped);
        btn_actionToggleStepped.setOnClickListener(this);
        btn_actionToggleHorizontalCubic = (Button) findViewById(R.id.btn_actionToggleHorizontalCubic);
        btn_actionToggleHorizontalCubic.setOnClickListener(this);
        btn_anim_x = (Button) findViewById(R.id.btn_anim_x);
        btn_anim_x.setOnClickListener(this);
        btn_anim_y = (Button) findViewById(R.id.btn_anim_y);
        btn_anim_y.setOnClickListener(this);
        btn_anim_xy = (Button) findViewById(R.id.btn_anim_xy);
        btn_anim_xy.setOnClickListener(this);
        btn_save_sd = (Button) findViewById(R.id.btn_save_sd);
        btn_save_sd.setOnClickListener(this);
        btn_auto_mix_max = (Button) findViewById(R.id.btn_auto_mix_max);
        btn_auto_mix_max.setOnClickListener(this);
        btn_actionToggleHighlight = (Button) findViewById(R.id.btn_actionToggleHighlight);
        btn_actionToggleHighlight.setOnClickListener(this);

        mLineChar = (LineChart) findViewById(R.id.mLineChar);
        //设置手势滑动事件
        mLineChar.setOnChartGestureListener(this);
        //设置数值选择监听
        mLineChar.setOnChartValueSelectedListener(this);
        //后台绘制
        mLineChar.setDrawGridBackground(false);
        //设置描述文本
        mLineChar.getDescription().setEnabled(false);
        //设置支持触控手势
        mLineChar.setTouchEnabled(true);
        //设置缩放
        mLineChar.setDragEnabled(true);
        //设置推动
        mLineChar.setScaleEnabled(true);
        //如果禁用,扩展可以在x轴和y轴分别完成
        mLineChar.setPinchZoom(true);


        //x轴
        LimitLine llXAxis = new LimitLine(10f, "标记");
        //设置线宽
        llXAxis.setLineWidth(4f);
        //
        llXAxis.enableDashedLine(10f, 10f, 0f);
        //设置
        llXAxis.setLabelPosition(LimitLine.LimitLabelPosition.RIGHT_BOTTOM);
        llXAxis.setTextSize(10f);

        XAxis xAxis = mLineChar.getXAxis();
        xAxis.enableGridDashedLine(10f, 10f, 0f);
        //设置x轴的最大值
        xAxis.setAxisMaximum(100f);
        //设置x轴的最小值
        xAxis.setAxisMinimum(0f);

        LimitLine ll1 = new LimitLine(150f, "优秀");
        ll1.setLineWidth(4f);
        ll1.enableDashedLine(10f, 10f, 0f);
        ll1.setLabelPosition(LimitLine.LimitLabelPosition.RIGHT_TOP);
        ll1.setTextSize(10f);

        LimitLine ll2 = new LimitLine(30f, "不及格");
        ll2.setLineWidth(4f);
        ll2.enableDashedLine(10f, 10f, 0f);
        ll2.setLabelPosition(LimitLine.LimitLabelPosition.RIGHT_BOTTOM);
        ll2.setTextSize(10f);

        YAxis leftAxis = mLineChar.getAxisLeft();
        //重置所有限制线,以避免重叠线
        leftAxis.removeAllLimitLines();
        //设置优秀线
        leftAxis.addLimitLine(ll1);
        //设置及格线
        leftAxis.addLimitLine(ll2);
        //y轴最大
        leftAxis.setAxisMaximum(200f);
        //y轴最小
        leftAxis.setAxisMinimum(0f);
        leftAxis.enableGridDashedLine(10f, 10f, 0f);
        leftAxis.setDrawZeroLine(false);

        // 限制数据(而不是背后的线条勾勒出了上面)
        leftAxis.setDrawLimitLinesBehindData(true);

        mLineChar.getAxisRight().setEnabled(false);

        //这里我模拟一些数据
        ArrayList<Entry> values = new ArrayList<Entry>();
        values.add(new Entry(5, 50));
        values.add(new Entry(10, 66));
        values.add(new Entry(15, 120));
        values.add(new Entry(20, 30));
        values.add(new Entry(35, 10));
        values.add(new Entry(40, 110));
        values.add(new Entry(45, 30));
        values.add(new Entry(50, 160));
        values.add(new Entry(100, 30));

        //设置数据
        setData(values);

        //默认动画
        mLineChar.animateX(2500);
        //刷新
        //mChart.invalidate();

        // 得到这个文字
        Legend l = mLineChar.getLegend();

        // 修改文字 ...
        l.setForm(Legend.LegendForm.LINE);
    }

    //传递数据集
    private void setData(ArrayList<Entry> values) {
        if (mLineChar.getData() != null && mLineChar.getData().getDataSetCount() > 0) {
            set1 = (LineDataSet) mLineChar.getData().getDataSetByIndex(0);
            set1.setValues(values);
            mLineChar.getData().notifyDataChanged();
            mLineChar.notifyDataSetChanged();
        } else {
            // 创建一个数据集,并给它一个类型
            set1 = new LineDataSet(values, "年度总结报告");

            // 在这里设置线
            set1.enableDashedLine(10f, 5f, 0f);
            set1.enableDashedHighlightLine(10f, 5f, 0f);
            set1.setColor(Color.BLACK);
            set1.setCircleColor(Color.BLACK);
            set1.setLineWidth(1f);
            set1.setCircleRadius(3f);
            set1.setDrawCircleHole(false);
            set1.setValueTextSize(9f);
            set1.setDrawFilled(true);
            set1.setFormLineWidth(1f);
            set1.setFormLineDashEffect(new DashPathEffect(new float[]{10f, 5f}, 0f));
            set1.setFormSize(15.f);

            if (Utils.getSDKInt() >= 18) {
                // 填充背景只支持18以上
                //Drawable drawable = ContextCompat.getDrawable(this, R.mipmap.ic_launcher);
                //set1.setFillDrawable(drawable);
                set1.setFillColor(Color.YELLOW);
            } else {
                set1.setFillColor(Color.BLACK);
            }
            ArrayList<ILineDataSet> dataSets = new ArrayList<ILineDataSet>();
            //添加数据集
            dataSets.add(set1);

            //创建一个数据集的数据对象
            LineData data = new LineData(dataSets);

            //谁知数据
            mLineChar.setData(data);
        }
    }

    @Override
    public void onChartGestureStart(MotionEvent me, ChartTouchListener.ChartGesture lastPerformedGesture) {

    }

    @Override
    public void onChartGestureEnd(MotionEvent me, ChartTouchListener.ChartGesture lastPerformedGesture) {
        // 完成之后停止晃动
        if (lastPerformedGesture != ChartTouchListener.ChartGesture.SINGLE_TAP)
            mLineChar.highlightValues(null);
    }

    @Override
    public void onChartLongPressed(MotionEvent me) {

    }

    @Override
    public void onChartDoubleTapped(MotionEvent me) {

    }

    @Override
    public void onChartSingleTapped(MotionEvent me) {

    }

    @Override
    public void onChartFling(MotionEvent me1, MotionEvent me2, float velocityX, float velocityY) {

    }

    @Override
    public void onChartScale(MotionEvent me, float scaleX, float scaleY) {

    }

    @Override
    public void onChartTranslate(MotionEvent me, float dX, float dY) {

    }

    @Override
    public void onValueSelected(Entry e, Highlight h) {

    }

    @Override
    public void onNothingSelected() {

    }

    //点击事件
    @Override
    public void onClick(View v) {
        switch (v.getId()) {
            //显示顶点的值开关
            case R.id.btn_show_values:
                //获取到当前值
                List<ILineDataSet> sets = mLineChar.getData().getDataSets();
                for (ILineDataSet iSet : sets) {
                    LineDataSet set = (LineDataSet) iSet;
                    //切换显示/隐藏
                    set.setDrawValues(!set.isDrawValuesEnabled());
                }
                //刷新
                mLineChar.invalidate();
                break;
            //是否填满
            case R.id.btn_actionToggleFilled:
                List<ILineDataSet> setsFilled = mLineChar.getData().getDataSets();
                for (ILineDataSet iSet : setsFilled) {
                    LineDataSet set = (LineDataSet) iSet;
                    if (set.isDrawFilledEnabled())
                        set.setDrawFilled(false);
                    else
                        set.setDrawFilled(true);
                }
                mLineChar.invalidate();
                break;
            //是否显示圆点
            case R.id.btn_actionToggleCircles:
                List<ILineDataSet> setsCircles = mLineChar.getData().getDataSets();
                for (ILineDataSet iSet : setsCircles) {
                    LineDataSet set = (LineDataSet) iSet;
                    if (set.isDrawCirclesEnabled())
                        set.setDrawCircles(false);
                    else
                        set.setDrawCircles(true);
                }
                mLineChar.invalidate();
                break;
            //切换立方
            case R.id.btn_actionToggleCubic:
                List<ILineDataSet> setsCubic = mLineChar.getData().getDataSets();
                for (ILineDataSet iSet : setsCubic) {
                    LineDataSet set = (LineDataSet) iSet;
                    set.setMode(set.getMode() == LineDataSet.Mode.CUBIC_BEZIER
                            ? LineDataSet.Mode.LINEAR
                            : LineDataSet.Mode.CUBIC_BEZIER);
                }
                mLineChar.invalidate();
                break;
            //切换尖角/矩形
            case R.id.btn_actionToggleStepped:
                List<ILineDataSet> setsStepped = mLineChar.getData().getDataSets();
                for (ILineDataSet iSet : setsStepped) {
                    LineDataSet set = (LineDataSet) iSet;
                    set.setMode(set.getMode() == LineDataSet.Mode.STEPPED
                            ? LineDataSet.Mode.LINEAR
                            : LineDataSet.Mode.STEPPED);
                }
                mLineChar.invalidate();
                break;
            //切换横向立方
            case R.id.btn_actionToggleHorizontalCubic:
                List<ILineDataSet> setsHorizontalCubic = mLineChar.getData().getDataSets();
                for (ILineDataSet iSet : setsHorizontalCubic) {
                    LineDataSet set = (LineDataSet) iSet;
                    set.setMode(set.getMode() == LineDataSet.Mode.HORIZONTAL_BEZIER
                            ? LineDataSet.Mode.LINEAR
                            : LineDataSet.Mode.HORIZONTAL_BEZIER);
                }
                mLineChar.invalidate();
                break;
            //x轴动画
            case R.id.btn_anim_x:
                mLineChar.animateX(3000);
                break;
            //y轴动画
            case R.id.btn_anim_y:
                mLineChar.animateY(3000, Easing.EasingOption.EaseInCubic);
                break;
            //xy轴动画
            case R.id.btn_anim_xy:
                mLineChar.animateXY(3000, 3000);
                break;
            //保存到sd卡
            case R.id.btn_save_sd:
                if (mLineChar.saveToPath("title" + System.currentTimeMillis(), "")) {
                    Toast.makeText(this, "保存成功", Toast.LENGTH_SHORT).show();
                } else
                    Toast.makeText(this, "保存失败", Toast.LENGTH_SHORT).show();

                break;
            //切换自动最大最小值
            case R.id.btn_auto_mix_max:
                mLineChar.setAutoScaleMinMaxEnabled(!mLineChar.isAutoScaleMinMaxEnabled());
                mLineChar.notifyDataSetChanged();
                break;
            //高亮
            case R.id.btn_actionToggleHighlight:
                if (mLineChar.getData() != null) {
                    mLineChar.getData().setHighlightEnabled(!mLineChar.getData().isHighlightEnabled());
                    mLineChar.invalidate();
                }
                break;
        }
    }
}
