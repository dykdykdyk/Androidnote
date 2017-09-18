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
import android.graphics.RectF;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;

import com.github.mikephil.charting.charts.BarChart;
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
import com.github.mikephil.charting.utils.MPPointF;
import com.github.mikephil.charting.utils.ViewPortHandler;

import java.util.ArrayList;

public class BarChartActivity extends Activity implements OnChartValueSelectedListener, View.OnClickListener {
    private BarChart mBarChart;
    private Button btn_anim_y;
    ArrayList<BarEntry> yVals1;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_barchar);
        mBarChart =(BarChart)findViewById(R.id.mBarChart);
        btn_anim_y =(Button)findViewById(R.id.btn_anim_y);
        btn_anim_y.setOnClickListener(this);
        initStepChart(mBarChart);
    }

    //初始化
    private void initStepChart(BarChart mBarChart) {
        //设置表格上的点，被点击的时候，的回调函数
        mBarChart.setOnChartValueSelectedListener(this);
        mBarChart.setDrawBarShadow(false);
        mBarChart.setDrawValueAboveBar(true);// 如果设置为true，所有值都高于其 bar 的，而不是低于其顶部。默认：true
        mBarChart.getDescription().setEnabled(false);
//        Description d = new Description();
//        d.setTextColor(Color.parseColor("#fffafafa"));
//        mBarChart.setDescription(d);
        mBarChart.setMaxVisibleValueCount(60);
        // 扩展现在只能分别在x轴和y轴
        mBarChart.setPinchZoom(false);//设置x轴和y轴能否同时缩放。默认是否
        //是否显示表格颜色
        mBarChart.setDrawGridBackground(false);//设置图表内格子背景是否显示，默认是false
//        mBarChart.setMinimumWidth(70);
        IAxisValueFormatter xAxisFormatter = new DayAxisValueFormatter(mBarChart);
        XAxis xAxis = mBarChart.getXAxis();
        xAxis.setPosition(XAxis.XAxisPosition.BOTTOM);//把坐标轴放在下面
        xAxis.setDrawGridLines(false);//是否显示X坐标轴上的刻度竖线，默认是true
        xAxis.setGranularity(1f); // only intervals of 1 day
        xAxis.setLabelCount(7);
        xAxis.setAxisLineWidth(0f);
//        xAxis.setSpaceBetweenLabels
//                xAxis.setAxisLineWidth(0);
//        xAxis.setSpaceMax(0);
//        xAxis.setSpaceMin(0);
//        xAxis.setAxisLineWidth(0f);
//        xAxis.setGridLineWidth(0f);
        xAxis.setValueFormatter(xAxisFormatter);
        xAxis.setDrawAxisLine(false);//不显示x轴横线
//        xAxis.setAvoidFirstLastClipping(true);//图表将避免第一个和最后一个标签条目被减掉在图表或屏幕的边缘
        xAxis.setTextColor(Color.parseColor("#fffafafa"));
        //设置悬浮
        YAxis leftAxis = mBarChart.getAxisLeft();
        leftAxis.setEnabled(false);
        YAxis rightAxis = mBarChart.getAxisRight();
        rightAxis.setEnabled(false);//不显示y轴右边坐标轴以及刻度竖线
        // 设置标示，就是那个一组y的value的

         mBarChart.setBorderWidth(0);
        Legend l = mBarChart.getLegend();
        l.setVerticalAlignment(Legend.LegendVerticalAlignment.BOTTOM);
        l.setHorizontalAlignment(Legend.LegendHorizontalAlignment.LEFT);
        l.setOrientation(Legend.LegendOrientation.HORIZONTAL);
        l.setDrawInside(false);
        //样式
        l.setForm(Legend.LegendForm.SQUARE);
        //字体
        l.setFormSize(9f);
        //大小
        l.setTextSize(11f);
        l.setXEntrySpace(0f);
        l.setEnabled(false);//取消Label

        XYMarkerView mv = new XYMarkerView(this, xAxisFormatter);
        mv.setChartView(mBarChart); // For bounds control
        mBarChart.setMarker(mv); // Set the marker to the chart
        //模拟数据
        yVals1 = new ArrayList<BarEntry>();
//        yVals1.add(new BarEntry(0, 2));//0
//        for (int i = 0; i <25 ; i++) {
//            yVals1.add(new BarEntry(731, i+2));//0
//        }
//        yVals1.add(new BarEntry(801, i+2));//0
//        yVals1.add(new BarEntry(802, i+2));//0
//        yVals1.add(new BarEntry(803, i+2));//0
//        yVals1.add(new BarEntry(804, i+2));//0
//        yVals1.add(new BarEntry(805, i+2));//0
//        yVals1.add(new BarEntry(806, i+2));//0
//        yVals1.add(new BarEntry(1, 1));
//        yVals1.add(new BarEntry(2, 1));
//        yVals1.add(new BarEntry(3, 1));
//        yVals1.add(new BarEntry(4, 1));
//        yVals1.add(new BarEntry(5, 3));
//        yVals1.add(new BarEntry(6, 1));//6
//        yVals1.add(new BarEntry(7, 5));
//        yVals1.add(new BarEntry(8, 1));
//        yVals1.add(new BarEntry(9, 7));
//        yVals1.add(new BarEntry(10, 7));
//        yVals1.add(new BarEntry(11, 7));
//        yVals1.add(new BarEntry(12, 7));//12
//        yVals1.add(new BarEntry(13, 7));
//        yVals1.add(new BarEntry(14, 7));
//        yVals1.add(new BarEntry(15, 7));
//        yVals1.add(new BarEntry(16, 7));
//        yVals1.add(new BarEntry(17, 7));
//        yVals1.add(new BarEntry(18, 7));//18
//        yVals1.add(new BarEntry(19, 7));
//        yVals1.add(new BarEntry(20, 7));
//        yVals1.add(new BarEntry(21, 7));
//        yVals1.add(new BarEntry(22, 7));
//        yVals1.add(new BarEntry(23, 7));
//        yVals1.add(new BarEntry(24, 7));//24
        setData(yVals1, mBarChart);
        mBarChart.setNoDataText("没有数据呢(⊙o⊙)");
        mBarChart.animateY(3000);
    }
    //设置数据
    private void setData(ArrayList<BarEntry> yVals1, BarChart mBarChart) {
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
            set1.setDrawIcons(false);
            //设置有四种颜色
//            set1.setColors(new int[] { R.color.common_red, R.color.colorAccent});
            set1.setColors(new int[] { R.color.bg_common_green, R.color.abc_search_url_text_normal});

//            set1.setColors(Color.parseColor("#fffafafa"));//设置条形图的颜色
//            set1.setColors(ColorTemplate.MATERIAL_COLORS);
            set1.setValueTextColor(Color.parseColor("#fffafafa"));
//            set1.setBarSpacePercent(2f);
//            set1.setBarSpacePercent(2f);
            ArrayList<IBarDataSet> dataSets = new ArrayList<IBarDataSet>();
            dataSets.add(set1);
            BarData data = new BarData(dataSets);
            data.setValueTextSize(10f);
            data.setBarWidth(2f);

//            data.groupBars(0, 5, 0);
            set1.setValueFormatter(new IValueFormatter() {
                @Override
                public String getFormattedValue(float value, Entry entry,
                                                int dataSetIndex, ViewPortHandler viewPortHandler) {
                    int n = (int) value;
                    Log.i("TAG","n:"+n);
//                    if(n ==0){
//                        return "";
//                    }
                    return n + "";
                }
            });

            //设置数据
//            mBarChart.setVisibleXRange(3,7);
            mBarChart.setData(data);
//            mBarChart.setFitBars(true);
        }
    }
    protected RectF mOnValueSelectedRectF = new RectF();
    @Override
    public void onValueSelected(Entry e, Highlight h) {
        if (e == null)
            return;

        RectF bounds = mOnValueSelectedRectF;
        mBarChart.getBarBounds((BarEntry) e, bounds);
        MPPointF position = mBarChart.getPosition(e, YAxis.AxisDependency.LEFT);

        Log.i("bounds", bounds.toString());
        Log.i("position", position.toString());

        Log.i("x-index",
                "low: " + mBarChart.getLowestVisibleX() + ", high: "
                        + mBarChart.getHighestVisibleX());

        MPPointF.recycleInstance(position);
    }

    @Override
    public void onNothingSelected() {

    }
    float i = 2f;
    @Override
    public void onClick(View v) {
        switch (v.getId()) {
            //y轴动画
            case R.id.btn_anim_y:
//                mBarChart.animateY(3000);
                   yVals1.add(new BarEntry(2+i*2, 8+i*10));
                setData(yVals1,mBarChart);
                i++;
                break;
        }
    }
}
