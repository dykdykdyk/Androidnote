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
import com.github.mikephil.charting.formatter.IValueFormatter;
import com.github.mikephil.charting.highlight.Highlight;
import com.github.mikephil.charting.interfaces.datasets.IBarDataSet;
import com.github.mikephil.charting.listener.OnChartValueSelectedListener;
import com.github.mikephil.charting.utils.MPPointF;
import com.github.mikephil.charting.utils.ViewPortHandler;

import java.util.ArrayList;
import java.util.List;

public class BarChartActivity_Custom extends Activity implements OnChartValueSelectedListener, View.OnClickListener {
    private BarChart mBarChart;
    private Button btn_anim_y,btn_2;
    ArrayList<BarEntry> yVals1;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_barchar_custom);
        mBarChart =(BarChart)findViewById(R.id.mBarChart);
        btn_anim_y =(Button)findViewById(R.id.btn_anim_y);
        btn_2 =(Button)findViewById(R.id.btn_2);
        btn_anim_y.setOnClickListener(this);
        btn_2.setOnClickListener(this);
        initStepChart(mBarChart);
    }

    //初始化
    private void initStepChart(BarChart mChart) {
        //设置表格上的点，被点击的时候，的回调函数
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


//        IAxisValueFormatter xAxisFormatter = new DayAxisValueFormatter(mChart);
        XAxis xLabels = mChart.getXAxis();
        xLabels.setPosition(XAxis.XAxisPosition.BOTTOM);
        xLabels.setDrawGridLines(false);//是否显示X坐标轴上的刻度竖线，默认是true
        xLabels.setDrawAxisLine(false);//不显示x轴横线
        // mChart.setDrawXLabels(false);
        // mChart.setDrawYLabels(false);
        xLabels.setGranularity(1f); // only intervals of 1 day
//        xLabels.setValueFormatter(new DayAxisValueFormatter_TempWeek());
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
        //模拟数据
        yVals1 = new ArrayList<BarEntry>();
        mBarChart.setNoDataText("没有数据呢(⊙o⊙)");
//        mBarChart.animateY(3000);
    }
    public class MyBarDataSet extends BarDataSet {


        public MyBarDataSet(List<BarEntry> yVals, String label) {
            super(yVals, label);
        }
         @Override
        public int getColor(int index) {
            Log.i("DYK","(int)yVals1.get(index):"+(int)yVals1.get(index).getY());
            if((int)yVals1.get(index).getY()==5) { // less than 95 green
                Log.i("DYK", "color[0]:" + color[0]);
                return mColors.get(0);
            }else if((int)yVals1.get(index).getY()==6) { // less than 95 green
                Log.i("DYK", "color[1]:" + color[1]);
                return mColors.get(1);
            }else // greater or equal than 100 red
                Log.i("DYK", "color[2]:" + color[2]);
                return mColors.get(2);
        }
    }
    int[] color ={R.color.bg_common_green, R.color.abc_search_url_text_normal,R.color.common_red, R.color.colorAccent};
    //设置数据
    private void setData(ArrayList<BarEntry> yVals1,BarChart mBarChart) {
        MyBarDataSet set1;
        if (mBarChart.getData() != null &&
                mBarChart.getData().getDataSetCount() > 0) {
            set1 = (MyBarDataSet) mBarChart.getData().getDataSetByIndex(0);
            set1.setValues(yVals1);
            mBarChart.getData().notifyDataChanged();
            mBarChart.notifyDataSetChanged();
            mBarChart.invalidate();
        } else {
            set1 = new MyBarDataSet(yVals1, "");
            set1.setDrawIcons(false);
            //设置有四种颜色
            set1.setColors(getColors());
            set1.setStackLabels(new String[]{"深睡","浅睡","觉醒"});
            set1.setDrawValues(false);//不显示柱状图上面的值
            //设置有四种颜色
//            set1.setColors(new int[] { R.color.bg_common_green, R.color.abc_search_url_text_normal,R.color.common_red, R.color.colorAccent});
//            set1.setColors(Color.parseColor("#fffafafa"));//设置条形图的颜色
//            set1.setColors(ColorTemplate.MATERIAL_COLORS);
            set1.setValueTextColor(Color.parseColor("#fffafafa"));
//            set1.setBarSpacePercent(2f);
//            set1.setBarSpacePercent(2f);
            ArrayList<IBarDataSet> dataSets = new ArrayList<IBarDataSet>();
            dataSets.add(set1);
            BarData data = new BarData(dataSets);
            data.setValueTextSize(10f);
            data.setBarWidth(1f);
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
            mBarChart.setFitBars(true);
            mBarChart.invalidate();
        }
    }
    private int[] getColors() {
        int stacksize = 3;
        int[] colors = new int[stacksize];
        colors[0] =Color.parseColor("#303F9F");
        colors[1] =Color.parseColor("#ff7fa87f");
        colors[1] =Color.parseColor("#ffff0000");
        return colors;
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
                yVals1.add(new BarEntry(i, 5));
                setData(yVals1,mBarChart);
                i++;
                break;
            case R.id.btn_2:
//                mBarChart.animateY(3000);
                i++;
                yVals1.add(new BarEntry(i, 6));
                setData(yVals1,mBarChart);
                i++;
                break;
        }
    }
}
