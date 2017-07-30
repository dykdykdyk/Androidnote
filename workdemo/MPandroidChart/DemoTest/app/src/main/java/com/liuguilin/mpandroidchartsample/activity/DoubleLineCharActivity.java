package com.liuguilin.mpandroidchartsample.activity;
/*
 *  项目名：  MPAndroidChartSample 
 *  包名：    com.liuguilin.mpandroidchartsample
 *  文件名:   DoubleLineCharActivity
 *  创建者:   LGL
 *  创建时间:  2016/11/16 13:52
 *  描述：    双重轴线形图
 */

import android.graphics.Color;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;

import com.github.mikephil.charting.animation.Easing;
import com.github.mikephil.charting.charts.LineChart;
import com.github.mikephil.charting.components.Legend;
import com.github.mikephil.charting.components.XAxis;
import com.github.mikephil.charting.components.YAxis;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.data.LineData;
import com.github.mikephil.charting.data.LineDataSet;
import com.github.mikephil.charting.highlight.Highlight;
import com.github.mikephil.charting.interfaces.datasets.ILineDataSet;
import com.github.mikephil.charting.listener.OnChartValueSelectedListener;
import com.github.mikephil.charting.utils.ColorTemplate;
import com.liuguilin.mpandroidchartsample.R;

import java.util.ArrayList;
import java.util.List;

public class DoubleLineCharActivity extends BaseActivity implements OnChartValueSelectedListener, View.OnClickListener {

    private LineChart mDoubleLineChar;

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
        setContentView(R.layout.activity_linechar_double);

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

        mDoubleLineChar = (LineChart) findViewById(R.id.mDoubleLineChar);
        //设置数值选择监听
        mDoubleLineChar.setOnChartValueSelectedListener(this);
        // 没有描述的文本
        mDoubleLineChar.getDescription().setEnabled(false);
        // 支持触控手势
        mDoubleLineChar.setTouchEnabled(true);
        mDoubleLineChar.setDragDecelerationFrictionCoef(0.9f);
        // 支持缩放和拖动
        mDoubleLineChar.setDragEnabled(true);
        mDoubleLineChar.setScaleEnabled(true);
        mDoubleLineChar.setDrawGridBackground(false);
        mDoubleLineChar.setHighlightPerDragEnabled(true);
        // 如果禁用,扩展可以在x轴和y轴分别完成
        mDoubleLineChar.setPinchZoom(true);
        // 设置背景颜色(灰色)
        mDoubleLineChar.setBackgroundColor(Color.BLACK);
        //设置数据
        setData(20, 30);
        //默认x动画
        mDoubleLineChar.animateX(2500);

        //获得数据
        Legend l = mDoubleLineChar.getLegend();

        //修改
        l.setForm(Legend.LegendForm.LINE);
        l.setTextSize(11f);
        l.setTextColor(Color.WHITE);
        l.setVerticalAlignment(Legend.LegendVerticalAlignment.BOTTOM);
        l.setHorizontalAlignment(Legend.LegendHorizontalAlignment.LEFT);
        l.setOrientation(Legend.LegendOrientation.HORIZONTAL);
        l.setDrawInside(false);

        //x轴
        XAxis xAxis = mDoubleLineChar.getXAxis();
        xAxis.setTextSize(11f);
        xAxis.setTextColor(Color.WHITE);
        xAxis.setDrawGridLines(false);
        xAxis.setDrawAxisLine(false);

        //左边y轴
        YAxis leftAxis = mDoubleLineChar.getAxisLeft();
        leftAxis.setTextColor(ColorTemplate.getHoloBlue());
        leftAxis.setAxisMaximum(200f);
        leftAxis.setAxisMinimum(0f);
        leftAxis.setDrawGridLines(true);
        leftAxis.setGranularityEnabled(true);

        //右边
        YAxis rightAxis = mDoubleLineChar.getAxisRight();
        rightAxis.setTextColor(Color.RED);
        rightAxis.setAxisMaximum(900);
        rightAxis.setAxisMinimum(-200);
        rightAxis.setDrawGridLines(false);
        rightAxis.setDrawZeroLine(false);
        rightAxis.setGranularityEnabled(false);
    }

    //设置数据
    private void setData(int count, float range) {

        ArrayList<Entry> yVals1 = new ArrayList<Entry>();
        for (int i = 0; i < count; i++) {
            float mult = range / 2f;
            float val = (float) (Math.random() * mult) + 50;
            yVals1.add(new Entry(i, val));
        }

        ArrayList<Entry> yVals2 = new ArrayList<Entry>();
        for (int i = 0; i < count - 1; i++) {
            float mult = range;
            float val = (float) (Math.random() * mult) + 450;
            yVals2.add(new Entry(i, val));
        }

        ArrayList<Entry> yVals3 = new ArrayList<Entry>();
        for (int i = 0; i < count; i++) {
            float mult = range;
            float val = (float) (Math.random() * mult) + 500;
            yVals3.add(new Entry(i, val));
        }

        LineDataSet set1, set2, set3;

        if (mDoubleLineChar.getData() != null &&
                mDoubleLineChar.getData().getDataSetCount() > 0) {
            set1 = (LineDataSet) mDoubleLineChar.getData().getDataSetByIndex(0);
            set2 = (LineDataSet) mDoubleLineChar.getData().getDataSetByIndex(1);
            set3 = (LineDataSet) mDoubleLineChar.getData().getDataSetByIndex(2);
            set1.setValues(yVals1);
            set2.setValues(yVals2);
            set3.setValues(yVals3);
            mDoubleLineChar.getData().notifyDataChanged();
            mDoubleLineChar.notifyDataSetChanged();
        } else {
            // 创建一个数据集,并给它一个类型
            set1 = new LineDataSet(yVals1, "鸡群");

            set1.setAxisDependency(YAxis.AxisDependency.LEFT);
            set1.isDrawValuesEnabled();
            set1.setColor(ColorTemplate.getHoloBlue());
            set1.setCircleColor(Color.WHITE);
            set1.setLineWidth(2f);
            set1.setCircleRadius(3f);
            set1.setFillAlpha(65);
            set1.setFillColor(ColorTemplate.getHoloBlue());
            set1.setHighLightColor(Color.rgb(244, 117, 117));
            set1.setDrawCircleHole(false);

            //创建一个数据集,并给它一个类型
            set2 = new LineDataSet(yVals2, "鸭群");
            set1.isDrawValuesEnabled();
            set2.setAxisDependency(YAxis.AxisDependency.RIGHT);
            set2.setColor(Color.RED);
            set2.setCircleColor(Color.WHITE);
            set2.setLineWidth(2f);
            set2.setCircleRadius(3f);
            set2.setFillAlpha(65);
            set2.setFillColor(Color.RED);
            set2.setDrawCircleHole(false);
            set2.setHighLightColor(Color.rgb(244, 117, 117));

            set3 = new LineDataSet(yVals3, "鹅群");
            set3.setAxisDependency(YAxis.AxisDependency.RIGHT);
            set3.setColor(Color.YELLOW);
            set1.isDrawValuesEnabled();
            set3.setCircleColor(Color.WHITE);
            set3.setLineWidth(2f);
            set3.setCircleRadius(3f);
            set3.setFillAlpha(65);
            set3.setFillColor(ColorTemplate.colorWithAlpha(Color.YELLOW, 200));
            set3.setDrawCircleHole(false);
            set3.setHighLightColor(Color.rgb(244, 117, 117));

            // 创建一个数据集的数据对象
            LineData data = new LineData(set1, set2, set3);
            data.setValueTextColor(Color.WHITE);
            data.setValueTextSize(9f);

            //设置数据
            mDoubleLineChar.setData(data);
        }
    }

    @Override
    public void onValueSelected(Entry e, Highlight h) {

    }

    @Override
    public void onNothingSelected() {

    }

    @Override
    public void onClick(View v) {
        switch (v.getId()) {
            //显示顶点的值开关
            case R.id.btn_show_values:
                //获取到当前值
                List<ILineDataSet> sets = mDoubleLineChar.getData().getDataSets();
                for (ILineDataSet iSet : sets) {
                    LineDataSet set = (LineDataSet) iSet;
                    //切换显示/隐藏
                    set.setDrawValues(!set.isDrawValuesEnabled());
                }
                //刷新
                mDoubleLineChar.invalidate();
                break;
            //是否填满
            case R.id.btn_actionToggleFilled:
                List<ILineDataSet> setsFilled = mDoubleLineChar.getData().getDataSets();
                for (ILineDataSet iSet : setsFilled) {
                    LineDataSet set = (LineDataSet) iSet;
                    if (set.isDrawFilledEnabled())
                        set.setDrawFilled(false);
                    else
                        set.setDrawFilled(true);
                }
                mDoubleLineChar.invalidate();
                break;
            //是否显示圆点
            case R.id.btn_actionToggleCircles:
                List<ILineDataSet> setsCircles = mDoubleLineChar.getData().getDataSets();
                for (ILineDataSet iSet : setsCircles) {
                    LineDataSet set = (LineDataSet) iSet;
                    if (set.isDrawCirclesEnabled())
                        set.setDrawCircles(false);
                    else
                        set.setDrawCircles(true);
                }
                mDoubleLineChar.invalidate();
                break;
            //切换立方
            case R.id.btn_actionToggleCubic:
                List<ILineDataSet> setsCubic = mDoubleLineChar.getData().getDataSets();
                for (ILineDataSet iSet : setsCubic) {
                    LineDataSet set = (LineDataSet) iSet;
                    set.setMode(set.getMode() == LineDataSet.Mode.CUBIC_BEZIER
                            ? LineDataSet.Mode.LINEAR
                            : LineDataSet.Mode.CUBIC_BEZIER);
                }
                mDoubleLineChar.invalidate();
                break;
            //切换尖角/矩形
            case R.id.btn_actionToggleStepped:
                List<ILineDataSet> setsStepped = mDoubleLineChar.getData().getDataSets();
                for (ILineDataSet iSet : setsStepped) {
                    LineDataSet set = (LineDataSet) iSet;
                    set.setMode(set.getMode() == LineDataSet.Mode.STEPPED
                            ? LineDataSet.Mode.LINEAR
                            : LineDataSet.Mode.STEPPED);
                }
                mDoubleLineChar.invalidate();
                break;
            //切换横向立方
            case R.id.btn_actionToggleHorizontalCubic:
                List<ILineDataSet> setsHorizontalCubic = mDoubleLineChar.getData().getDataSets();
                for (ILineDataSet iSet : setsHorizontalCubic) {
                    LineDataSet set = (LineDataSet) iSet;
                    set.setMode(set.getMode() == LineDataSet.Mode.HORIZONTAL_BEZIER
                            ? LineDataSet.Mode.LINEAR
                            : LineDataSet.Mode.HORIZONTAL_BEZIER);
                }
                mDoubleLineChar.invalidate();
                break;
            //x轴动画
            case R.id.btn_anim_x:
                mDoubleLineChar.animateX(3000);
                break;
            //y轴动画
            case R.id.btn_anim_y:
                mDoubleLineChar.animateY(3000, Easing.EasingOption.EaseInCubic);
                break;
            //xy轴动画
            case R.id.btn_anim_xy:
                mDoubleLineChar.animateXY(3000, 3000);
                break;
            //保存到sd卡
            case R.id.btn_save_sd:
                if (mDoubleLineChar.saveToPath("title" + System.currentTimeMillis(), "")) {
                    Toast.makeText(this, "保存成功", Toast.LENGTH_SHORT).show();
                } else
                    Toast.makeText(this, "保存失败", Toast.LENGTH_SHORT).show();

                break;
            //切换自动最大最小值
            case R.id.btn_auto_mix_max:
                mDoubleLineChar.setAutoScaleMinMaxEnabled(!mDoubleLineChar.isAutoScaleMinMaxEnabled());
                mDoubleLineChar.notifyDataSetChanged();
                break;
            //高亮
            case R.id.btn_actionToggleHighlight:
                if (mDoubleLineChar.getData() != null) {
                    mDoubleLineChar.getData().setHighlightEnabled(!mDoubleLineChar.getData().isHighlightEnabled());
                    mDoubleLineChar.invalidate();
                }
                break;
        }
    }
}
