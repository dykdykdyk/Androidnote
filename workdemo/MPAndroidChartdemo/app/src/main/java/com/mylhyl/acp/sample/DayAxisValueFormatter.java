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
            "00:00", "06:00", "12:00", "18:00", "24:00"
    };

    private BarLineChartBase<?> chart;

    public DayAxisValueFormatter(BarLineChartBase<?> chart) {
        this.chart = chart;
    }

    @Override
    public String getFormattedValue(float value, AxisBase axis) {
        Log.i("TAG", "value:" + (int)value + "chart.getVisibleXRange()," + chart.getVisibleXRange());
        if((int)value  ==1){
            return mMonths[0];
        }
        else if((int)value ==6){
            return mMonths[1];
        } else if( (int)value==12){
            return mMonths[2];
        }  else   if( (int)value==18){
            return mMonths[3];
        }   else  if( (int)value==24){
            return mMonths[4];
        }
//        return "";
//        return StringtoShow((int)value);
        return "";
    }
    private static String StringtoShow(int va){
        String v =va+"";
        if(v.length()==3){
            v ="0"+v.substring(0,1)+":"+v.substring(1,3);
        }else if(v.length()== 4){
            v =v.substring(0,2)+":"+v.substring(2,4);
        }
        return v;
    }
}
