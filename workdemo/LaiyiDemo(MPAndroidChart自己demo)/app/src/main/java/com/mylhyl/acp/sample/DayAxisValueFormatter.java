package com.mylhyl.acp.sample;
/*
 *  项目名：  MPAndroidChartSample 
 *  包名：    com.liuguilin.mpandroidchartsample
 *  文件名:   DayAxisValueFormatter
 *  创建者:   LGL
 *  创建时间:  2016/11/17 10:15
 *  描述：    日期转换
 *  设置X轴和Y轴的Labels
 */

import android.util.Log;

import com.github.mikephil.charting.charts.BarLineChartBase;
import com.github.mikephil.charting.components.AxisBase;
import com.github.mikephil.charting.formatter.IAxisValueFormatter;

public class DayAxisValueFormatter implements IAxisValueFormatter {

    protected String[] mMonths = new String[]{
            "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Okt", "Nov", "Dec"
    };

    private BarLineChartBase<?> chart;

    public DayAxisValueFormatter(BarLineChartBase<?> chart) {
        this.chart = chart;
    }

    @Override
    public String getFormattedValue(float value, AxisBase axis) {
        Log.i("TAG", "value:" + value + "chart.getVisibleXRange()," + chart.getVisibleXRange());
        return StringtoShow((int)value);
    }
    private static String StringtoShow(int va){
        String v =va+"";
        if(v.length()==3){
            v =v.substring(0,1)+"."+v.substring(1,3);
        }else if(v.length()== 4){
            v =v.substring(0,2)+"."+v.substring(2,4);
        }
        return v;
    }
}
