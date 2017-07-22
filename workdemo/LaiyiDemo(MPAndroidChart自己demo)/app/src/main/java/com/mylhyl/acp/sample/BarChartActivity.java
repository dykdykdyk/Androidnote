package com.mylhyl.acp.sample;
/*
 *  项目名：  MPAndroidChartSample 
 *  包名：    com.liuguilin.mpandroidchartsample
 *  文件名:   BarChartActivity
 *  创建者:   LGL
 *  创建时间:  2016/11/16 15:59
 *  描述：    条形图
 */

import android.app.Activity;
import android.graphics.Color;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

import com.github.mikephil.charting.charts.BarChart;
import com.github.mikephil.charting.components.Description;
import com.github.mikephil.charting.components.Legend;
import com.github.mikephil.charting.components.XAxis;
import com.github.mikephil.charting.components.YAxis;
import com.github.mikephil.charting.data.BarData;
import com.github.mikephil.charting.data.BarDataSet;
import com.github.mikephil.charting.data.BarEntry;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.formatter.IAxisValueFormatter;
import com.github.mikephil.charting.formatter.IValueFormatter;
import com.github.mikephil.charting.highlight.Highlight;
import com.github.mikephil.charting.interfaces.datasets.IBarDataSet;
import com.github.mikephil.charting.listener.OnChartValueSelectedListener;
import com.github.mikephil.charting.utils.ViewPortHandler;

import java.util.ArrayList;

public class BarChartActivity extends Activity implements OnChartValueSelectedListener, View.OnClickListener {
    private BarChart mBarChart;
    private Button btn_anim_y;
    ArrayList<BarEntry> yVals1;
    ArrayList<String> xVals;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_barchar);
        initView();
    }

    //初始化
    private void initView() {
        //基本控件
        btn_anim_y = (Button) findViewById(R.id.btn_anim_y);
        btn_anim_y.setOnClickListener(this);
        //条形图
        mBarChart = (BarChart) findViewById(R.id.mBarChart);
        //设置表格上的点，被点击的时候，的回调函数
        mBarChart.setOnChartValueSelectedListener(this);
        mBarChart.setDrawBarShadow(false);
        Description d = new Description();
        d.setTextColor(Color.parseColor("#fffafafa"));
        mBarChart.setDescription(d);
        mBarChart.setDrawValueAboveBar(true);// 如果设置为true，所有值都高于其 bar 的，而不是低于其顶部。默认：true
        mBarChart.getDescription().setEnabled(false);
        // 扩展现在只能分别在x轴和y轴
        mBarChart.setPinchZoom(false);//设置x轴和y轴能否同时缩放。默认是否
        //是否显示表格颜色
        mBarChart.setDrawGridBackground(false);//设置图表内格子背景是否显示，默认是false
        mBarChart.setMinimumWidth(70);
        IAxisValueFormatter xAxisFormatter = new DayAxisValueFormatter(mBarChart);
        XAxis xAxis = mBarChart.getXAxis();
        xAxis.setPosition(XAxis.XAxisPosition.BOTTOM);//把坐标轴放在下面
        xAxis.setDrawGridLines(false);//是否显示X坐标轴上的刻度竖线，默认是true
        xAxis.setDrawAxisLine(false);//不显示x轴横线
        // 只有1天的时间间隔
        xAxis.setGranularity(1f);
        xAxis.setLabelCount(7);
        xAxis.setTextColor(Color.parseColor("#fffafafa"));
        xAxis.setValueFormatter(xAxisFormatter);
        //设置悬浮
//        XYMarkerView mv = new XYMarkerView(this, xAxisFormatter);//设置点击后的悬浮信息
//        mv.setChartView(mBarChart);
//        mBarChart.setMarker(mv);
        YAxis leftAxis = mBarChart.getAxisLeft();
        leftAxis.setEnabled(false);
        YAxis rightAxis = mBarChart.getAxisRight();
        rightAxis.setEnabled(false);//不显示y轴右边坐标轴以及刻度竖线
        // 设置标示，就是那个一组y的value的
        Legend l = mBarChart.getLegend();
        l.setVerticalAlignment(Legend.LegendVerticalAlignment.BOTTOM);
        l.setHorizontalAlignment(Legend.LegendHorizontalAlignment.LEFT);
        l.setOrientation(Legend.LegendOrientation.HORIZONTAL);
        l.setDrawInside(false);
        //样式
        l.setForm(Legend.LegendForm.SQUARE);
        //字体
        l.setFormSize(9f);
        l.setEnabled(false);//取消Label
        //大小
        l.setTextSize(11f);
        l.setXEntrySpace(4f);
        String s = "12:05";
        //模拟数据
        yVals1 = new ArrayList<BarEntry>();
//        yVals1.add(new BarEntry(0, 0));
//        yVals1.add(new BarEntry(1, 0));
        setData(yVals1);
        mBarChart.setNoDataText("没有数据呢(⊙o⊙)");
        mBarChart.animateY(3000);
    }

    //设置数据
    private void setData(ArrayList yVals1) {
        BarDataSet set1;
        if (mBarChart.getData() != null &&
                mBarChart.getData().getDataSetCount() > 0) {
            set1 = (BarDataSet) mBarChart.getData().getDataSetByIndex(0);
            set1.setValues(yVals1);
            mBarChart.getData().notifyDataChanged();
            mBarChart.notifyDataSetChanged();
            mBarChart.invalidate();
        } else {
            set1 = new BarDataSet(yVals1, "");
            //设置有四种颜色
            set1.setColors(Color.parseColor("#fffafafa"));//设置条形图的颜色
            ArrayList<IBarDataSet> dataSets = new ArrayList<IBarDataSet>();
            set1.setValueTextColor(Color.parseColor("#fffafafa"));
            dataSets.add(set1);
            BarData data = new BarData(dataSets);
            data.setValueTextSize(10f);
            data.setBarWidth(0.5f);
//            set1.setBarSpacePercent();
//            set1.setGridLineWidth
//            set1.se
            set1.setValueFormatter(new IValueFormatter() {
                @Override
                public String getFormattedValue(float value,
                                                Entry entry,
                                                int dataSetIndex, ViewPortHandler viewPortHandler) {
                    int n = (int) value;
                    return n + "";
                }
            });
            //设置数据
            mBarChart.setData(data);
            mBarChart.setFitBars(true);
        }
    }

    @Override
    public void onValueSelected(Entry e, Highlight h) {
//        Toast.makeText(this,"sdfsd",Toast.LENGTH_SHORT).show();
    }

    @Override
    public void onNothingSelected() {

    }
    int i = 2;
    @Override
    public void onClick(View v) {
        switch (v.getId()) {
            //y轴动画
            case R.id.btn_anim_y:
//                mBarChart.animateY(3000);
                yVals1.add(new BarEntry(30 + i, 50 + i));
                setData(yVals1);
                i++;
                break;
        }
    }
}
