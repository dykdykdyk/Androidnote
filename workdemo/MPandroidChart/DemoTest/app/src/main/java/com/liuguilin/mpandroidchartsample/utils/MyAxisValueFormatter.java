package com.liuguilin.mpandroidchartsample.utils;
/*
 *  项目名：  MPAndroidChartSample 
 *  包名：    com.liuguilin.mpandroidchartsample.utils
 *  文件名:   MyAxisValueFormatter
 *  创建者:   LGL
 *  创建时间:  2016/11/18 13:54
 *  描述：    日期格式化
 */

import com.github.mikephil.charting.components.AxisBase;
import com.github.mikephil.charting.formatter.IAxisValueFormatter;

import java.text.DecimalFormat;

public class MyAxisValueFormatter implements IAxisValueFormatter {

    private DecimalFormat mFormat;

    public MyAxisValueFormatter() {
        mFormat = new DecimalFormat("###,###,###,##0.0");
    }

    @Override
    public String getFormattedValue(float value, AxisBase axis) {
        return mFormat.format(value) + " $";
    }

    public int getDecimalDigits() {
        return 1;
    }
}
