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
import com.github.mikephil.charting.utils.ColorTemplate;
import com.github.mikephil.charting.utils.MPPointF;
import com.github.mikephil.charting.utils.ViewPortHandler;

import java.util.ArrayList;

public class StackedBarChartActivity extends Activity implements OnChartValueSelectedListener, View.OnClickListener {
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
    private void initStepChart(BarChart mChart) {
        mChart.getDescription().setEnabled(false);

        // if more than 60 entries are displayed in the chart, no values will be
        // drawn
        mChart.setMaxVisibleValueCount(40);

        // scaling can now only be done on x- and y-axis separately
        mChart.setPinchZoom(false);

        mChart.setDrawGridBackground(false);
        mChart.setDrawBarShadow(false);

        mChart.setDrawValueAboveBar(false);
        mChart.setHighlightFullBarEnabled(false);

        // change the position of the y-labels
        YAxis leftAxis = mChart.getAxisLeft();
        leftAxis.setValueFormatter(new MyAxisValueFormatter());
        leftAxis.setAxisMinimum(0f); // this replaces setStartAtZero(true)
//        leftAxis.setEnabled(false);
        mChart.getAxisRight().setEnabled(false);


        IAxisValueFormatter xAxisFormatter = new DayAxisValueFormatter(mChart);
        XAxis xLabels = mChart.getXAxis();
        xLabels.setPosition(XAxis.XAxisPosition.BOTTOM);
        xLabels.setDrawGridLines(false);//是否显示X坐标轴上的刻度竖线，默认是true
        xLabels.setDrawAxisLine(false);//不显示x轴横线
        // mChart.setDrawXLabels(false);
        // mChart.setDrawYLabels(false);
        xLabels.setGranularity(1f); // only intervals of 1 day
        xLabels.setValueFormatter(xAxisFormatter);
        Legend l = mChart.getLegend();
        l.setVerticalAlignment(Legend.LegendVerticalAlignment.BOTTOM);
        l.setHorizontalAlignment(Legend.LegendHorizontalAlignment.LEFT);
        l.setOrientation(Legend.LegendOrientation.HORIZONTAL);
        l.setDrawInside(false);
        l.setFormSize(8f);
        l.setFormToTextSpace(4f);
        l.setXEntrySpace(6f);
//        XYMarkerView mv = new XYMarkerView(this, xAxisFormatter);
//        mv.setChartView(mBarChart); // For bounds control
//        mBarChart.setMarker(mv); // Set the marker to the chart
        yVals1 = new ArrayList<BarEntry>();
        mBarChart.setNoDataText("没有数据呢(⊙o⊙)");
        mBarChart.animateY(3000);
    }
    //设置数据
    private void setData(ArrayList yVals1, BarChart mBarChart) {
        BarDataSet set1;
        if (mBarChart.getData() != null &&
                mBarChart.getData().getDataSetCount() > 0) {
            set1 = (BarDataSet) mBarChart.getData().getDataSetByIndex(0);
            set1.setValues(yVals1);
            mBarChart.getData().notifyDataChanged();
            mBarChart.notifyDataSetChanged();
            mBarChart.invalidate();
        } else {
            set1 = new BarDataSet(yVals1, "statistics Vienna");
            set1.setDrawIcons(false);
            //设置有四种颜色
            set1.setColors(getColors());//设置条形图的颜色
//            set1.setColors(ColorTemplate.MATERIAL_COLORS);
            set1.setStackLabels(new String[]{"深睡","浅睡"});
            set1.setValueTextColor(Color.parseColor("#fffafafa"));
            set1.setDrawValues(false);//不显示柱状图上面的值
//            set1.setVisible(false);
//            set1.setHighlightEnabled(false);
            ArrayList<IBarDataSet> dataSets = new ArrayList<IBarDataSet>();
            dataSets.add(set1);
            BarData data = new BarData(dataSets);
            data.setValueTextSize(10f);
            data.setBarWidth(0.9f);
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
            mBarChart.setFitBars(true);
            mBarChart.invalidate();
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
    private int[] getColors() {

        int stacksize = 2;

        // have as many colors as stack-values per entry
        int[] colors = new int[stacksize];
        for (int i = 0; i < colors.length; i++) {
            colors[i] = ColorTemplate.MATERIAL_COLORS[i];
        }

        return colors;
    }
    @Override
    public void onNothingSelected() {

    }
    int i = 0;
    @Override
    public void onClick(View v) {
        switch (v.getId()) {
            //y轴动画
            case R.id.btn_anim_y:
//                mBarChart.animateY(3000);
                   yVals1.add(new BarEntry(2+i*2, new float[]{i+10,i+20},null));
                setData(yVals1,mBarChart);
                i++;
                break;
        }
    }
}
