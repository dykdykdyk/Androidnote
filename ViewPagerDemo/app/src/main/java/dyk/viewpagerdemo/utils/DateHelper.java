package dyk.viewpagerdemo.utils;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

/**
 * Created by dengyangkang on 2017/5/6.
 * 日期帮助类
 */

public class DateHelper {
    public static List<String> tempTime =new ArrayList<String>();
    public static void getTimeOfYear(){//月
        Calendar cal = Calendar.getInstance();//得到一个Calendar的实例
        cal.set(2016,01,00,00,00);
        Calendar calendar= Calendar.getInstance();
        SimpleDateFormat sdf3 = new SimpleDateFormat("yyyy.MM");
        for (int i = 0; i < 13+calendar.get(Calendar.MONTH); i++) {
//            System.out.println());
            tempTime.add(sdf3.format(cal.getTime()));
            cal.add(Calendar.MONTH, 1);
        }
    }
    public static void getTimeOfWeek(){//周
        tempTime.clear();
        Calendar cal = Calendar.getInstance();//得到一个Calendar的实例
        cal.set(2016,00,04,00,00);
        Calendar calendar= Calendar.getInstance();
        int daytemp=calendar.get(Calendar.DAY_OF_YEAR);
        calendar.set(2016,00,10,00,00);
        SimpleDateFormat sdf3 = new SimpleDateFormat("MM.dd-");
        SimpleDateFormat sdf4 = new SimpleDateFormat("MM.dd");
        for (int i = 0; i < 52+daytemp/7; i++) {
            if(i == (52+daytemp/7) -1){
                System.out.println("本周");
            }else if(i == (52+daytemp/7) -2){
                System.out.println("上周");
            }else {
                System.out.println(sdf3.format(cal.getTime())+sdf4.format(calendar.getTime()));
            }
            cal.add(Calendar.WEEK_OF_YEAR, 1);
            calendar.add(Calendar.WEEK_OF_YEAR, 1);
        }
    }
    public static void getTimeOfWeekStart(){//日期
        Calendar cal = Calendar.getInstance();//得到一个Calendar的实例
        cal.set(2016,00,01,00,00);

        Calendar cal2 = Calendar.getInstance();//得到一个Calendar的实例
        cal2.set(2017,00,01,00,00);
        Calendar cal3 = Calendar.getInstance();//得到一个Calendar的实例
        int year=cal3.get(Calendar.YEAR);//得到年
        int month=cal3.get(Calendar.MONTH)+1;//得到月，因为从0开始的，所以要加1
        int day=cal3.get(Calendar.DAY_OF_MONTH);//得到天

        Calendar curr = Calendar.getInstance();
        int week=curr.get(Calendar.DAY_OF_YEAR);
        SimpleDateFormat sdf3 = new SimpleDateFormat("MM.dd");
        for (int i = 0; i < 366+week; i++) {
            if((cal.get(Calendar.YEAR) == year) && (cal.get(Calendar.MONTH)+1 == month) &&
                    (cal.get(Calendar.DAY_OF_MONTH) == day)){
                System.out.println("今天");
            }else{
                System.out.println(sdf3.format(cal.getTime()));
            }
            cal.add(Calendar.DAY_OF_YEAR, 1);
        }
    }
}
