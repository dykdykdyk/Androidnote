package dyk.viewpagerdemo.view;

import android.app.Activity;

import java.util.ArrayList;
import java.util.List;

/**整个APP活动管理的类
 * Created by Administrator on 2017/04/28.
 */

public class ActicityCollector {
    public static List<Activity> activities =new ArrayList<Activity>();
    public static void addActivity(Activity activity){
        activities.add(activity);
    }
    public static void RemoveActivity(Activity activity){
        activities.remove(activity);
    }
    public static void finishAll(){
        for (Activity activity:activities) {
            if(!activity.isFinishing()){
                activity.finish();
            }
        }
    }
}
