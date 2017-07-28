package com.example.haoz.hellochartdemo;

import android.graphics.Color;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;

import java.util.ArrayList;
import java.util.List;

import lecho.lib.hellocharts.gesture.ZoomType;
import lecho.lib.hellocharts.listener.ColumnChartOnValueSelectListener;
import lecho.lib.hellocharts.model.Axis;
import lecho.lib.hellocharts.model.AxisValue;
import lecho.lib.hellocharts.model.Column;
import lecho.lib.hellocharts.model.ColumnChartData;
import lecho.lib.hellocharts.model.SubcolumnValue;
import lecho.lib.hellocharts.model.Viewport;
import lecho.lib.hellocharts.util.ChartUtils;
import lecho.lib.hellocharts.view.ColumnChartView;

public class MainActivity extends AppCompatActivity {
    public final static String[] months = new String[] { "00:00", " ", " ",
            " ", " ", " ", "06:00", " ", " ", " ", " ", " ","12:00",
            " ", " ", " ", " ", " ", "18:00 ",
            "", " ", " ", " ", " ","24:00"};

    ColumnChartView columnChart;
    ColumnChartData columnData;
    List<Column> lsColumn = new ArrayList<Column>();
    List<SubcolumnValue> lsValue;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.fragment_line_chart);
        columnChart =(ColumnChartView) findViewById(R.id.chart);
        dataInit1();
    }
    private void dataInit1() {

        int numSubcolumns = 1;
        int numColumns = months.length;

        List<AxisValue> axisValues = new ArrayList<AxisValue>();
        List<Column> columns = new ArrayList<Column>();
        List<SubcolumnValue> values;
        for (int i = 0; i < numColumns; ++i) {

            values = new ArrayList<SubcolumnValue>();
            for (int j = 0; j < numSubcolumns; ++j) {
                values.add(new SubcolumnValue((float) Math.random() * 50f + 5,
                        ChartUtils.pickColor()));
            }
// 点击柱状图就展示数据量
            axisValues.add(new AxisValue(i).setLabel(months[i]));

            columns.add(new Column(values).setHasLabelsOnlyForSelected(true));
        }
        //设置缩放
        Viewport maxV=columnChart.getMaximumViewport();
        columnChart.setMaximumViewport(new Viewport(maxV.left, maxV.top * 1.8f,
                maxV.right, maxV.bottom));
        columnChart.setZoomEnabled(true);

        Viewport v = new Viewport(columnChart.getMaximumViewport());
        v.left = 0;//代表显示图表起始x轴坐标，0表示第一个
        v.right = 3;//代表显示图表结束x轴坐标，3表示第3个
        columnChart.setCurrentViewport(v);
        columnChart.setZoomLevel(0 ,0, 3);

        columnData = new ColumnChartData(columns);

        columnData.setAxisXBottom(new Axis(axisValues).setHasLines(false)
                .setTextColor(Color.BLACK));
//        columnData.setAxisYLeft(new Axis().setHasLines(true)
//                .setTextColor(Color.BLACK).setMaxLabelChars(2));

        columnChart.setColumnChartData(columnData);

// Set value touch listener that will trigger changes for chartTop.
        columnChart.setOnValueTouchListener(new ValueTouchListener());


// Set selection mode to keep selected month column highlighted.
        columnChart.setValueSelectionEnabled(true);

        columnChart.setZoomType(ZoomType.HORIZONTAL);

    }
    private void dataInit() {

        int numSubcolumns = 1;
        int numColumns = months.length;

        List<AxisValue> axisValues = new ArrayList<AxisValue>();
        List<Column> columns = new ArrayList<Column>();
        List<SubcolumnValue> values;
        for (int i = 0; i < numColumns; ++i) {
            values = new ArrayList<SubcolumnValue>();
            for (int j = 0; j < numSubcolumns; ++j) {
                values.add(new SubcolumnValue((float) Math.random() * 50f + 5,
                        ChartUtils.pickColor()));
            }

// 点击柱状图就展示数据量
            axisValues.add(new AxisValue(i).setLabel(months[i]));
            columns.add(new Column(values).setHasLabelsOnlyForSelected(true));
            columns.get(i).setHasLabelsOnlyForSelected(true);//设置点击时是否在顶部显示数据
        }
        Axis axisX = new Axis();// X轴属性
        axisX.setHasLines(false);// 是否显示X轴网格线
        axisX.setHasSeparationLine(false);// 是否显示X轴网格线

        columnData = new ColumnChartData(columns);
        columnData.setAxisXBottom(axisX.setHasLines(false)
                .setTextColor(Color.BLACK));
//        columnData.setAxisYLeft(new Axis().setHasLines(true)
//                .setTextColor(Color.BLACK).setMaxLabelChars(2));
        columnChart.setColumnChartData(columnData);
        columnChart.setOnValueTouchListener(new ValueTouchListener());
        Viewport maxV=columnChart.getMaximumViewport();
        columnChart.setMaximumViewport(new Viewport(maxV.left, maxV.top * 1.8f,
                maxV.right, maxV.bottom));
        //设置支持缩放
        columnChart.setZoomEnabled(true);
//        columnData.set
//        column. setHasLabelsOnlyForSelected(true);//设置点击时是否在顶部显示数据
        //设置缩放模式，水平（只对x轴缩放）
        //设置缩放级别，1为默认，最大级别是20；
       // setZoomLevel(float x, float y, float zoomLevel);//参数中的x,y貌似不用在意，看文档貌似是说maxViewPort,再提一句这个viewport在我的理解中也是指一个长条形，
        //于是我这样用了
        Viewport v = new Viewport(columnChart.getMaximumViewport());
        v.left = 0;//代表显示图表起始x轴坐标，0表示第一个
        v.right = 3;//代表显示图表结束x轴坐标，3表示第3个
        columnChart.setCurrentViewport(v);
        columnChart.setZoomLevel(0 ,0, 3);
// Set selection mode to keep selected month column highlighted.
        columnChart.setValueSelectionEnabled(true);
        columnChart.setZoomType(ZoomType.HORIZONTAL);
//        columnChart.set
//        columnChart.setZoomEnabled(false);
    }
    /**
     * 柱状图监听器
     *
     * @author 1017
     *
     */
    private class ValueTouchListener implements
            ColumnChartOnValueSelectListener {

        @Override
        public void onValueSelected(int columnIndex, int subcolumnIndex,
                                    SubcolumnValue value) {
// generateLineData(value.getColor(), 100);
        }

        @Override
        public void onValueDeselected() {

// generateLineData(ChartUtils.COLOR_GREEN, 0);

        }
    }
}
