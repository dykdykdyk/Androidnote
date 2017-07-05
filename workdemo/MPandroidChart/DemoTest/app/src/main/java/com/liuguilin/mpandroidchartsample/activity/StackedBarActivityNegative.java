package com.liuguilin.mpandroidchartsample.activity;
/*
 *  项目名：  MPAndroidChartSample 
 *  包名：    com.liuguilin.mpandroidchartsample.activity
 *  文件名:   StackedBarActivityNegative
 *  创建者:   LGL
 *  创建时间:  2016/11/18 11:24
 *  描述：    正负堆叠条形图
 */

import android.graphics.Color;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;

import com.github.mikephil.charting.charts.HorizontalBarChart;
import com.github.mikephil.charting.components.AxisBase;
import com.github.mikephil.charting.components.Legend;
import com.github.mikephil.charting.components.XAxis;
import com.github.mikephil.charting.components.YAxis;
import com.github.mikephil.charting.data.BarData;
import com.github.mikephil.charting.data.BarDataSet;
import com.github.mikephil.charting.data.BarEntry;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.formatter.IAxisValueFormatter;
import com.github.mikephil.charting.highlight.Highlight;
import com.github.mikephil.charting.interfaces.datasets.IBarDataSet;
import com.github.mikephil.charting.interfaces.datasets.IDataSet;
import com.github.mikephil.charting.listener.OnChartValueSelectedListener;
import com.liuguilin.mpandroidchartsample.R;
import com.liuguilin.mpandroidchartsample.view.CustomFormatter;

import java.text.DecimalFormat;
import java.util.ArrayList;

public class StackedBarActivityNegative extends BaseActivity implements OnChartValueSelectedListener,View.OnClickListener {

    private HorizontalBarChart mHorizontalBarChart;

    //显示顶点值
    private Button btn_show_values;
    //x轴动画
    private Button btn_anim_x;
    //y轴动画
    private Button btn_anim_y;
    //xy轴动画
    private Button btn_anim_xy;
    //保存到sd卡
    private Button btn_save_pic;
    //切换自动最大最小值
    private Button btn_auto_mix_max;
    //高亮显示
    private Button btn_actionToggleHighlight;
    //显示边框
    private Button btn_show_border;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_statkedbar_negative);

        initView();
    }

    //初始化View
    private void initView() {

        //基本控件
        btn_show_values = (Button) findViewById(R.id.btn_show_values);
        btn_show_values.setOnClickListener(this);
        btn_anim_x = (Button) findViewById(R.id.btn_anim_x);
        btn_anim_x.setOnClickListener(this);
        btn_anim_y = (Button) findViewById(R.id.btn_anim_y);
        btn_anim_y.setOnClickListener(this);
        btn_anim_xy = (Button) findViewById(R.id.btn_anim_xy);
        btn_anim_xy.setOnClickListener(this);
        btn_save_pic = (Button) findViewById(R.id.btn_save_pic);
        btn_save_pic.setOnClickListener(this);
        btn_auto_mix_max = (Button) findViewById(R.id.btn_auto_mix_max);
        btn_auto_mix_max.setOnClickListener(this);
        btn_actionToggleHighlight = (Button) findViewById(R.id.btn_actionToggleHighlight);
        btn_actionToggleHighlight.setOnClickListener(this);
        btn_show_border = (Button) findViewById(R.id.btn_show_border);
        btn_show_border.setOnClickListener(this);

        //正负堆叠条形图
        mHorizontalBarChart = (HorizontalBarChart) findViewById(R.id.mHorizontalBarChart);

        mHorizontalBarChart.setOnChartValueSelectedListener(this);
        mHorizontalBarChart.setDrawGridBackground(false);
        mHorizontalBarChart.getDescription().setEnabled(false);

        // 扩展现在只能分别在x轴和y轴
        mHorizontalBarChart.setPinchZoom(false);

        mHorizontalBarChart.setDrawBarShadow(false);
        mHorizontalBarChart.setDrawValueAboveBar(true);
        mHorizontalBarChart.setHighlightFullBarEnabled(false);

        mHorizontalBarChart.getAxisLeft().setEnabled(false);
        mHorizontalBarChart.getAxisRight().setAxisMaximum(25f);
        mHorizontalBarChart.getAxisRight().setAxisMinimum(-25f);
        mHorizontalBarChart.getAxisRight().setDrawGridLines(false);
        mHorizontalBarChart.getAxisRight().setDrawZeroLine(true);
        mHorizontalBarChart.getAxisRight().setLabelCount(7, false);
        mHorizontalBarChart.getAxisRight().setValueFormatter(new CustomFormatter());
        mHorizontalBarChart.getAxisRight().setTextSize(9f);

        XAxis xAxis = mHorizontalBarChart.getXAxis();
        xAxis.setPosition(XAxis.XAxisPosition.BOTH_SIDED);
        xAxis.setDrawGridLines(false);
        xAxis.setDrawAxisLine(false);
        xAxis.setTextSize(9f);
        xAxis.setAxisMinimum(0f);
        xAxis.setAxisMaximum(110f);
        xAxis.setCenterAxisLabels(true);
        xAxis.setLabelCount(12);
        xAxis.setGranularity(10f);
        //日期格式化
        xAxis.setValueFormatter(new IAxisValueFormatter() {

            private DecimalFormat format = new DecimalFormat("###");

            @Override
            public String getFormattedValue(float value, AxisBase axis) {
                return format.format(value) + "-" + format.format(value + 10);
            }


            public int getDecimalDigits() {
                return 0;
            }
        });

        Legend l = mHorizontalBarChart.getLegend();
        l.setVerticalAlignment(Legend.LegendVerticalAlignment.BOTTOM);
        l.setHorizontalAlignment(Legend.LegendHorizontalAlignment.RIGHT);
        l.setOrientation(Legend.LegendOrientation.HORIZONTAL);
        l.setDrawInside(false);
        l.setFormSize(8f);
        l.setFormToTextSpace(4f);
        l.setXEntrySpace(6f);

        // 重要:当使用负值在堆叠酒吧,总是确保-值数组中的第一个
        ArrayList<BarEntry> yValues = new ArrayList<BarEntry>();
        yValues.add(new BarEntry(5, new float[]{-10, 10}));
        yValues.add(new BarEntry(15, new float[]{-12, 13}));
        yValues.add(new BarEntry(25, new float[]{-15, 15}));
        yValues.add(new BarEntry(35, new float[]{-17, 17}));
        yValues.add(new BarEntry(45, new float[]{-19, 20}));
        yValues.add(new BarEntry(55, new float[]{-19, 19}));
        yValues.add(new BarEntry(65, new float[]{-16, 16}));
        yValues.add(new BarEntry(75, new float[]{-13, 14}));
        yValues.add(new BarEntry(85, new float[]{-10, 11}));
        yValues.add(new BarEntry(95, new float[]{-5, 6}));
        yValues.add(new BarEntry(105, new float[]{-1, 2}));

        BarDataSet set = new BarDataSet(yValues, "全国人口普查");
        set.setValueFormatter(new CustomFormatter());
        set.setValueTextSize(7f);
        set.setAxisDependency(YAxis.AxisDependency.RIGHT);
        set.setColors(new int[]{Color.rgb(99, 67, 72), Color.rgb(14, 181, 136)});
        set.setStackLabels(new String[]{"男人", "女人"});

        String[] xLabels = new String[]{"0-10", "10-20", "20-30", "30-40", "40-50", "50-60", "60-70", "70-80", "80-90", "90-100", "100+"};

        BarData data = new BarData(set);
        data.setBarWidth(8.5f);
        mHorizontalBarChart.setData(data);
        mHorizontalBarChart.invalidate();
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
            //显示顶点值
            case R.id.btn_show_values:
                for (IDataSet set : mHorizontalBarChart.getData().getDataSets())
                    set.setDrawValues(!set.isDrawValuesEnabled());

                mHorizontalBarChart.invalidate();
                break;
            //x轴动画
            case R.id.btn_anim_x:
                mHorizontalBarChart.animateX(3000);
                break;
            //y轴动画
            case R.id.btn_anim_y:
                mHorizontalBarChart.animateY(3000);
                break;
            //xy轴动画
            case R.id.btn_anim_xy:
                mHorizontalBarChart.animateXY(3000, 3000);
                break;
            //保存到sd卡
            case R.id.btn_save_pic:
                if (mHorizontalBarChart.saveToGallery("title" + System.currentTimeMillis(), 50)) {
                    Toast.makeText(getApplicationContext(), "保存成功",
                            Toast.LENGTH_SHORT).show();
                } else
                    Toast.makeText(getApplicationContext(), "保存失败",
                            Toast.LENGTH_SHORT).show();
                break;
            //切换自动最大最小值
            case R.id.btn_auto_mix_max:
                mHorizontalBarChart.setAutoScaleMinMaxEnabled(!mHorizontalBarChart.isAutoScaleMinMaxEnabled());
                mHorizontalBarChart.notifyDataSetChanged();
                break;
            //高亮显示
            case R.id.btn_actionToggleHighlight:
                if (mHorizontalBarChart.getData() != null) {
                    mHorizontalBarChart.getData().setHighlightEnabled(
                            !mHorizontalBarChart.getData().isHighlightEnabled());
                    mHorizontalBarChart.invalidate();
                }
                break;
            //显示边框
            case R.id.btn_show_border:
                for (IBarDataSet set : mHorizontalBarChart.getData().getDataSets())
                    ((BarDataSet) set).setBarBorderWidth(set.getBarBorderWidth() == 1.f ? 0.f : 1.f);
                mHorizontalBarChart.invalidate();
                break;
        }
    }
}
