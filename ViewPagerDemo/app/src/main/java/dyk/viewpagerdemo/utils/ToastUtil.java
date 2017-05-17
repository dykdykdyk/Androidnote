package dyk.viewpagerdemo.utils;

import android.content.Context;
import android.widget.Toast;

/**
 * Created by dengyangkang on 2017/5/10.
 * 上线后 将 TOASTLEVEL 改为2
 */
public class ToastUtil {
    public static final int TOASTNOSHOW =1;
    public static final int TOASTLEVEL=0;
    //长
    public static void Long(Context context, String msg){
        if(TOASTLEVEL<=TOASTNOSHOW){
            Toast.makeText(context,msg,Toast.LENGTH_LONG).show();
        }
    }
    //短
    public static void Short(Context context, String msg){
        if(TOASTLEVEL<=TOASTNOSHOW){
            Toast.makeText(context,msg,Toast.LENGTH_SHORT).show();
        }
    }
    //自定义时间
    public static void Customview(Context context,String msg,int time){
        if(TOASTLEVEL<=TOASTNOSHOW){
            Toast.makeText(context,msg,time).show();
        }
    }
}
