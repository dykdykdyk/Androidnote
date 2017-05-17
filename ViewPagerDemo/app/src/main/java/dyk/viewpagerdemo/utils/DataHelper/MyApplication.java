package dyk.viewpagerdemo.utils.DataHelper;

import android.app.Application;

import dyk.viewpagerdemo.utils.LogUtil;

/**数据帮助类
 * Created by dengyangkang on 2017/5/17.
 */

public class MyApplication extends Application{
    @Override
    public void onCreate() {
        super.onCreate();
        LogUtil.d("MyApplication","onCreate");

    }
}
