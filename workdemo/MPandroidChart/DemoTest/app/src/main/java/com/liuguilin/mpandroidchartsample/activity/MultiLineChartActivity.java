package com.liuguilin.mpandroidchartsample.activity;
/*
 *  项目名：  MPAndroidChartSample 
 *  包名：    com.liuguilin.mpandroidchartsample.activity
 *  文件名:   MultiLineChartActivity
 *  创建者:   LGL
 *  创建时间:  2016/11/18 11:28
 *  描述：    多数据折线图
 */

import android.os.Bundle;

import com.github.mikephil.charting.charts.LineChart;
import com.github.mikephil.charting.components.Legend;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.data.LineData;
import com.github.mikephil.charting.data.LineDataSet;
import com.github.mikephil.charting.highlight.Highlight;
import com.github.mikephil.charting.interfaces.datasets.ILineDataSet;
import com.github.mikephil.charting.listener.OnChartValueSelectedListener;
import com.github.mikephil.charting.utils.ColorTemplate;
import com.liuguilin.mpandroidchartsample.R;

import java.util.ArrayList;

public class MultiLineChartActivity extends BaseActivity implements OnChartValueSelectedListener {

    private LineChart mLineChart;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_multi_line);

        initView();
    }

    //初始化View
    private void initView() {

        mLineChart = (LineChart) findViewById(R.id.mLineChart);
        mLineChart.setOnChartValueSelectedListener(this);

        mLineChart.setDrawGridBackground(false);
        mLineChart.getDescription().setEnabled(false);
        mLineChart.setDrawBorders(false);

        mLineChart.getAxisLeft().setEnabled(false);
        mLineChart.getAxisRight().setDrawAxisLine(false);
        mLineChart.getAxisRight().setDrawGridLines(false);
        mLineChart.getXAxis().setDrawAxisLine(false);
        mLineChart.getXAxis().setDrawGridLines(false);
        mLineChart.setTouchEnabled(true);
        mLineChart.setDragEnabled(true);
        mLineChart.setScaleEnabled(true);
        mLineChart.setPinchZoom(false);

        Legend l = mLineChart.getLegend();
        l.setVerticalAlignment(Legend.LegendVerticalAlignment.TOP);
        l.setHorizontalAlignment(Legend.LegendHorizontalAlignment.RIGHT);
        l.setOrientation(Legend.LegendOrientation.VERTICAL);
        l.setDrawInside(false);

        setData();
    }

    //设置数据
    private void setData() {

        mLineChart.resetTracking();

        ArrayList<ILineDataSet> dataSets = new ArrayList<ILineDataSet>();

        for (int z = 0; z < 3; z++) {

            ArrayList<Entry> values = new ArrayList<Entry>();

            for (int i = 0; i < 15; i++) {
                double val = (Math.random() * 10);
                values.add(new Entry(i, (float) val));
            }

            LineDataSet d = new LineDataSet(values, "时间 " + (z + 1));
            d.setLineWidth(2.5f);
            d.setCircleRadius(4f);

            int color = mColors[z % mColors.length];
            d.setColor(color);
            d.setCircleColor(color);
            dataSets.add(d);
        }

        ((LineDataSet) dataSets.get(0)).enableDashedLine(10, 10, 0);
        ((LineDataSet) dataSets.get(0)).setColors(ColorTemplate.VORDIPLOM_COLORS);
        ((LineDataSet) dataSets.get(0)).setCircleColors(ColorTemplate.VORDIPLOM_COLORS);

        LineData data = new LineData(dataSets);
        mLineChart.setData(data);
        mLineChart.invalidate();
    }

    private int[] mColors = new int[]{
            ColorTemplate.VORDIPLOM_COLORS[0],
            ColorTemplate.VORDIPLOM_COLORS[1],
            ColorTemplate.VORDIPLOM_COLORS[2]
    };

    @Override
    public void onValueSelected(Entry e, Highlight h) {

    }

    @Override
    public void onNothingSelected() {

    }
}
