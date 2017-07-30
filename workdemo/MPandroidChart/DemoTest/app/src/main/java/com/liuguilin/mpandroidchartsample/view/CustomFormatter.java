package com.liuguilin.mpandroidchartsample.view;
/*
 *  项目名：  MPAndroidChartSample 
 *  包名：    com.liuguilin.mpandroidchartsample.view
 *  文件名:   CustomFormatter
 *  创建者:   LGL
 *  创建时间:  2016/11/18 14:50
 *  描述：    自定义日期格式
 */

import com.github.mikephil.charting.components.AxisBase;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.formatter.IAxisValueFormatter;
import com.github.mikephil.charting.formatter.IValueFormatter;
import com.github.mikephil.charting.utils.ViewPortHandler;

import java.text.DecimalFormat;

public class CustomFormatter implements IValueFormatter, IAxisValueFormatter {

    private DecimalFormat mFormat;

    public CustomFormatter() {
        mFormat = new DecimalFormat("###");
    }

    // data
    @Override
    public String getFormattedValue(float value, Entry entry, int dataSetIndex, ViewPortHandler viewPortHandler) {
        return mFormat.format(Math.abs(value)) + "m";
    }

    // YAxis
    @Override
    public String getFormattedValue(float value, AxisBase axis) {
        return mFormat.format(Math.abs(value)) + "m";
    }


    public int getDecimalDigits() {
        return 0;
    }
}
