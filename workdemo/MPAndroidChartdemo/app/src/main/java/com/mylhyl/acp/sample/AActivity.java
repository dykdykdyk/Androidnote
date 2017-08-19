package com.mylhyl.acp.sample;

import android.graphics.Color;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;

import com.github.mikephil.charting.charts.LineChart;
import com.github.mikephil.charting.components.Description;
import com.github.mikephil.charting.components.Legend;
import com.github.mikephil.charting.components.XAxis;
import com.github.mikephil.charting.components.YAxis;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.data.LineData;
import com.github.mikephil.charting.data.LineDataSet;
import com.github.mikephil.charting.formatter.IValueFormatter;
import com.github.mikephil.charting.highlight.Highlight;
import com.github.mikephil.charting.interfaces.datasets.ILineDataSet;
import com.github.mikephil.charting.listener.OnChartValueSelectedListener;
import com.github.mikephil.charting.utils.ViewPortHandler;

import java.text.DecimalFormat;
import java.util.ArrayList;

public class AActivity extends AppCompatActivity {

    LineChart chart;
    private XAxis xAxis;         //X坐标轴
    private YAxis yAxis;         //Y坐标轴
    ArrayList<Entry> values ;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_a);
        chart = (LineChart) findViewById(R.id.chart);

        Description description = new Description();
        description.setText("");
//        description.setTextColor(Color.parseColor("#fffafafa"));
        description.setTextSize(20);
        description.setTextColor(Color.parseColor("#ffffff"));
        description.setEnabled(false);
        chart.setDescription(description);//设置图表描述信息


        chart.setNoDataText("暂无数据");//没有数据时显示的文字
        chart.setNoDataTextColor(Color.parseColor("#a3a7b6"));//没有数据时显示文字的颜色

        /*-------X轴相关------*/
        XAxis xAxis = chart.getXAxis();
        xAxis.setEnabled(true);//设置轴启用或禁用 如果禁用以下的设置全部不生效
        xAxis.setDrawAxisLine(false);//是否绘制轴线
        xAxis.setAxisMinimum(0f);//设置x轴的最小值
        xAxis.setAxisMaximum(7f);//设置最大值
        xAxis.setPosition(XAxis.XAxisPosition.BOTTOM); //x轴由头部到底部
        xAxis.setDrawGridLines(false);  //取消网格线绘制
        xAxis.setTextColor(Color.parseColor("#ffffff"));
        xAxis.setTextSize(0f);

        /*-------Y轴相关-------*/
        YAxis yAxis = chart.getAxisLeft();
        yAxis.setEnabled(true);
        yAxis.setDrawAxisLine(false);//是否绘制轴线
        yAxis.setDrawZeroLine(false);
        yAxis.setAxisMinimum(0f);//设置x轴的最小值
        yAxis.setAxisMaximum(100f);//设置最大值
        yAxis.setDrawGridLines(false);
        yAxis.setTextColor(Color.parseColor("#ffffff"));
        yAxis.setTextSize(0f);

        Legend l = chart.getLegend();
        // 字体
        // modify the legend ...
        l.setForm(Legend.LegendForm.CIRCLE);
        l.setFormSize(0f);



        chart.getAxisRight().setEnabled(false);  //去除右侧轴

        chart.setTouchEnabled(true);  //设置交互
        chart.setDragEnabled(false);  //取消位移操作
        chart.setScaleEnabled(false);  //取消缩放操作
        chart.setPinchZoom(false);  //取消缩放操作
        chart.setDoubleTapToZoomEnabled(false);  //取消缩放操作
        chart.setHighlightPerDragEnabled(false);  //取消缩放操作
//        MyMarkerView mv = new MyMarkerView(this, R.layout.mark_bg);
//        chart.setMarker(mv);

        chart.setOnChartValueSelectedListener(new OnChartValueSelectedListener() {
            @Override
            public void onValueSelected(Entry e, Highlight h) {

            }

            @Override
            public void onNothingSelected() {

            }

        });






        /*-------数据相关-----------*/
        values = new ArrayList<>();
        values.add(new Entry(0,10));
        values.add(new Entry(1,40));
        values.add(new Entry(2,70));
        values.add(new Entry(3,60));
        values.add(new Entry(4,80));
        values.add(new Entry(5,60));
        values.add(new Entry(7,70));

        initData();
    }

    private void initData() {
        LineDataSet set;
        set = new LineDataSet(values, "");
        set.setColor(Color.parseColor("#51d4b4"));
        set.setCircleColor(Color.parseColor("#51d4b4"));
        set.setValueTextColor(Color.parseColor("#00000000"));
        set.setDrawCircleHole(false);
        set.setLineWidth(3f);//设置线宽
        set.setCircleRadius(6f);//设置焦点圆心的大小
        set.setValueTextSize(15f);//设置显示值的文字大小

//        set.setDrawHighlightIndicators(false);


        //格式化显示数据
        final DecimalFormat mFormat = new DecimalFormat("###,###,##0");
        set.setValueFormatter(new IValueFormatter() {
            @Override
            public String getFormattedValue(float value, Entry entry, int dataSetIndex, ViewPortHandler viewPortHandler) {
                return mFormat.format(value);
            }
        });
        set.setFillColor(Color.parseColor("#fffafafa"));
        //保存LineDataSet集合
        ArrayList<ILineDataSet> dataSets = new ArrayList<>();
        dataSets.add(set); // add the datasets


        //创建LineData对象 属于LineChart折线图的数据集合
        LineData data = new LineData(dataSets);

        // 添加到图表中
        chart.setData(data);
        //绘制图表
        chart.invalidate();


    }
}