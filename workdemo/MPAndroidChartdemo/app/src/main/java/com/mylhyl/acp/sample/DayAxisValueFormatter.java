package com.mylhyl.acp.sample;

import com.github.mikephil.charting.charts.BarLineChartBase;
import com.github.mikephil.charting.components.AxisBase;
import com.github.mikephil.charting.formatter.IAxisValueFormatter;

/**
 * Created by philipp on 02/06/16.
 */
public class DayAxisValueFormatter implements IAxisValueFormatter
{
    protected String[] mMonths = new String[]{
            "00:00", "01:00", "02:00", "03:00", "04:00", "05:00",
            "06:00",  "07:00", "08:00", "09:00", "10:00", "11:00",
            "12:00","13:00", "14:00", "15:00", "16:00", "17:00",
            "18:00","19:00", "20:00", "21:00", "22:00", "23:00",
            "24:00"
    };
//    protected String[] mMonths = new String[]{
//            "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"
//    };

    private BarLineChartBase<?> chart;

    public DayAxisValueFormatter(BarLineChartBase<?> chart) {
        this.chart = chart;
    }
 int count=0;
    @Override
    public String getFormattedValue(float value, AxisBase axis) {
        return StringtoShow((int)value);
    }

    public static String StringtoShow(int va){
        String v =va+"";
        if(v.length()==3){
            v =v.substring(0,1)+"."+v.substring(1,3);
        }else if(v.length()== 4){
            v =v.substring(0,2)+"."+v.substring(2,4);
        }
        return v;
    }
}
