package com.liuguilin.mpandroidchartsample.utils;
/*
 *  项目名：  MPAndroidChartSample 
 *  包名：    com.liuguilin.mpandroidchartsample.utils
 *  文件名:   MyValueFormatter
 *  创建者:   LGL
 *  创建时间:  2016/11/18 13:58
 *  描述：    日期格式化
 */

import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.formatter.IValueFormatter;
import com.github.mikephil.charting.utils.ViewPortHandler;

import java.text.DecimalFormat;

public class MyValueFormatter implements IValueFormatter {

    private DecimalFormat mFormat;

    public MyValueFormatter() {
        mFormat = new DecimalFormat("###,###,###,##0.0");
    }

    @Override
    public String getFormattedValue(float value, Entry entry, int dataSetIndex, ViewPortHandler viewPortHandler) {
        return mFormat.format(value) + " $";
    }
}
