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

import com.github.mikephil.charting.charts.LineChart;
import com.github.mikephil.charting.components.Description;
import com.github.mikephil.charting.components.Legend;
import com.github.mikephil.charting.components.XAxis;
import com.github.mikephil.charting.components.YAxis;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.data.LineData;
import com.github.mikephil.charting.data.LineDataSet;
import com.github.mikephil.charting.formatter.IAxisValueFormatter;
import com.github.mikephil.charting.formatter.IValueFormatter;
import com.github.mikephil.charting.interfaces.datasets.ILineDataSet;
import com.github.mikephil.charting.utils.ViewPortHandler;

import java.text.DecimalFormat;
import java.util.ArrayList;

public class LineChartActivity extends Activity  {
    private LineChart lineChart;
    ArrayList<Entry> values1;
//  private Typeface mTf;
int i =0;

    public void ReFreshLineChart(String x, final int y,final LineChart chart,
                                 final ArrayList<Entry> vals) {
        final float f = Float.parseFloat(x);
        runOnUiThread(new Runnable() {
            @Override
            public void run() {
                vals.add(new Entry(f, y));
                setDataLineChart(vals,chart);
            }
        });
    }
    private void setDataLineChart(ArrayList<Entry> values1,LineChart lineChart) {
        //判断图表中原来是否有数据
        LineDataSet set1;
        if (lineChart.getData() != null &&
                lineChart.getData().getDataSetCount() > 0) {
            //获取数据1
            set1 = (LineDataSet) lineChart.getData().getDataSetByIndex(0);
            set1.setValues(values1);
            //刷新数据
            lineChart.getData().notifyDataChanged();
            lineChart.notifyDataSetChanged();
            lineChart.invalidate();
        } else {
            //设置数据1  参数1：数据源 参数2：图例名称
            set1 = new LineDataSet(values1, "");
            set1.setColor(Color.parseColor("#fffafafa"));
            set1.setCircleColor(Color.parseColor("#fffafafa"));
            set1.setValueTextColor(Color.parseColor("#fffafafa"));
            set1.setDrawCircleHole(false);
            set1.setLineWidth(1f);//设置线宽
            set1.setCircleRadius(3f);//设置焦点圆心的大小
//            set1.enableDashedHighlightLine(10f, 5f, 0f);//点击后的高亮线的显示样式
//            set1.setHighlightLineWidth(2f);//设置点击交点后显示高亮线宽
            set1.setHighlightEnabled(false);//是否禁用点击高亮线
//            set1.setHighLightColor(Color.parseColor("#fffafafa"));//设置点击交点后显示交高亮线的颜色
            set1.setValueTextSize(15f);//设置显示值的文字大小
            set1.setDrawFilled(false);//设置禁用范围背景填充

            //格式化显示数据
            final DecimalFormat mFormat = new DecimalFormat("###,###,##0");
            set1.setValueFormatter(new IValueFormatter() {
                @Override
                public String getFormattedValue(float value, Entry entry, int dataSetIndex, ViewPortHandler viewPortHandler) {
                    int n = (int) value;
                    return n + "";
                }
            });
            set1.setFillColor(Color.parseColor("#fffafafa"));
            //保存LineDataSet集合
            ArrayList<ILineDataSet> dataSets = new ArrayList<>();
            dataSets.add(set1); // add the datasets
            //创建LineData对象 属于LineChart折线图的数据集合
            LineData data = new LineData(dataSets);
            // 添加到图表中
            lineChart.setData(data);
            //绘制图表
            lineChart.invalidate();
        }
    }
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_linechart);
        lineChart = (LineChart) findViewById(R.id.mlineChart);
        (findViewById(R.id.btn_a)).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                ReFreshLineChart("710",3,lineChart,values1);
                ReFreshLineChart("711",4,lineChart,values1);
                ReFreshLineChart("712",5,lineChart,values1);
                ReFreshLineChart("713",6,lineChart,values1);
                ReFreshLineChart("714",7,lineChart,values1);
                ReFreshLineChart("715",8,lineChart,values1);
                ReFreshLineChart("716",9,lineChart,values1);
            }
        });
//创建描述信息
        Description description = new Description();
        description.setText("");
//        description.setTextColor(Color.parseColor("#fffafafa"));
        description.setTextSize(20);
        lineChart.setDescription(description);//设置图表描述信息
        lineChart.setNoDataText("没有数据熬");//没有数据时显示的文字
        lineChart.setNoDataTextColor(Color.parseColor("#fffafafa"));//没有数据时显示文字的颜色
        lineChart.setDrawGridBackground(false);//chart 绘图区后面的背景矩形将绘制
        lineChart.setDrawBorders(false);//禁止绘制图表边框的线
        //lineChart.setBorderColor(); //设置 chart 边框线的颜色。
        //lineChart.setBorderWidth(); //设置 chart 边界线的宽度，单位 dp。
        //lineChart.setLogEnabled(true);//打印日志
        //lineChart.notifyDataSetChanged();//刷新数据
        //lineChart.invalidate();//重绘
        //获取此图表的x轴
        XAxis xAxis = lineChart.getXAxis();
        IAxisValueFormatter xAxisFormatter = new DayAxisValueFormatter(lineChart);
        xAxis.setEnabled(true);//设置轴启用或禁用 如果禁用以下的设置全部不生效
        xAxis.setDrawAxisLine(false);//是否绘制轴线
        xAxis.setDrawGridLines(false);//设置x轴上每个点对应的线
//        xAxis.setDrawLabels(true);//绘制标签  指x轴上的对应数值
        xAxis.setPosition(XAxis.XAxisPosition.BOTTOM);//设置x轴的显示位置
        xAxis.setTextSize(11f);//设置字体
//        xAxis.setLabelCount(7);
        xAxis.setTextColor(Color.parseColor("#fffafafa"));//设置字体颜色
        xAxis.setValueFormatter(xAxisFormatter);
        //设置竖线的显示样式为虚线
        //lineLength控制虚线段的长度
        //spaceLength控制线之间的空间
//        xAxis.enableGridDashedLine(10f, 10f, 0f);
//        xAxis.setAxisMinimum(0f);//设置x轴的最小值
//        xAxis.setAxisMaximum(10f);//设置最大值
        xAxis.setAvoidFirstLastClipping(false);//图表将避免第一个和最后一个标签条目被减掉在图表或屏幕的边缘
//        xAxis.setLabelRotationAngle(10f);//设置x轴标签的旋转角度
//        设置x轴显示标签数量  还有一个重载方法第二个参数为布尔值强制设置数量 如果启用会导致绘制点出现偏差
//        xAxis.setLabelCount(10);
//        xAxis.setTextColor(Color.BLUE);//设置轴标签的颜色
//        xAxis.setTextSize(24f);//设置轴标签的大小
//        xAxis.setGridLineWidth(10f);//设置竖线大小
//        xAxis.setGridColor(Color.RED);//设置竖线颜色
//        xAxis.setAxisLineColor(Color.GREEN);//设置x轴线颜色
//        xAxis.setAxisLineWidth(5f);//设置x轴线宽度
//        xAxis.setValueFormatter();//格式化x轴标签显示字符

        Legend mLegend = lineChart.getLegend();
        mLegend.setForm(Legend.LegendForm.CIRCLE);
        // 字体
        mLegend.setFormSize(0f);
        // 颜色
        /**
         * Y轴默认显示左右两个轴线
         */
        //获取右边的轴线
        YAxis rightAxis = lineChart.getAxisRight();
        //设置图表右边的y轴禁用
        rightAxis.setEnabled(false);
        //获取左边的轴线
        YAxis leftAxis = lineChart.getAxisLeft();
        leftAxis.setEnabled(false);
        //设置网格线为虚线效果
//        leftAxis.enableGridDashedLine(10f, 10f, 0f);
        //是否绘制0所在的网格线
        leftAxis.setDrawZeroLine(false);
        /**
         * Entry 坐标点对象  构造函数 第一个参数为x点坐标 第二个为y点
         */
        values1 = new ArrayList<>();
        //LineDataSet每一个对象就是一条连接线
    }
    private void setData(ArrayList<Entry> values1) {
        //判断图表中原来是否有数据
        LineDataSet set1;
        if (lineChart.getData() != null &&
                lineChart.getData().getDataSetCount() > 0) {
            //获取数据1
            set1 = (LineDataSet) lineChart.getData().getDataSetByIndex(0);
            set1.setValues(values1);
            //刷新数据
            lineChart.getData().notifyDataChanged();
            lineChart.notifyDataSetChanged();
            lineChart.invalidate();
        } else {
            //设置数据1  参数1：数据源 参数2：图例名称
            set1 = new LineDataSet(values1, "");
            set1.setColor(Color.parseColor("#fffafafa"));
            set1.setCircleColor(Color.parseColor("#fffafafa"));
            set1.setValueTextColor(Color.parseColor("#fffafafa"));
            set1.setDrawCircleHole(false);
            set1.setLineWidth(1f);//设置线宽
            set1.setCircleRadius(3f);//设置焦点圆心的大小
//            set1.enableDashedHighlightLine(10f, 5f, 0f);//点击后的高亮线的显示样式
//            set1.setHighlightLineWidth(2f);//设置点击交点后显示高亮线宽
            set1.setHighlightEnabled(false);//是否禁用点击高亮线
//            set1.setHighLightColor(Color.parseColor("#fffafafa"));//设置点击交点后显示交高亮线的颜色
            set1.setValueTextSize(15f);//设置显示值的文字大小
            set1.setDrawFilled(false);//设置禁用范围背景填充

            //格式化显示数据
            final DecimalFormat mFormat = new DecimalFormat("###,###,##0");
            set1.setValueFormatter(new IValueFormatter() {
                @Override
                public String getFormattedValue(float value, Entry entry, int dataSetIndex, ViewPortHandler viewPortHandler) {
                    return mFormat.format(value);
                }
            });
            set1.setFillColor(Color.parseColor("#fffafafa"));
            //保存LineDataSet集合
            ArrayList<ILineDataSet> dataSets = new ArrayList<>();
            dataSets.add(set1); // add the datasets
            //创建LineData对象 属于LineChart折线图的数据集合
            LineData data = new LineData(dataSets);
            // 添加到图表中
            lineChart.setData(data);
            //绘制图表
            lineChart.invalidate();
        }
    }

}