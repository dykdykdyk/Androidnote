package dyk.viewpagerdemo.view;

import android.app.Activity;
import android.os.Bundle;
import android.support.v4.widget.DrawerLayout;
import android.view.Gravity;
import android.view.View;
import android.widget.ImageView;
import android.widget.ListView;

import dyk.viewpagerdemo.R;
import dyk.viewpagerdemo.view.adapter.SlidingListviewAdapter;


/**
 * Created by dengyangkang on 2017/5/2.
 */

public class Main_Activity extends Activity{
    private DrawerLayout mDrawerLayout = null;
    private ListView leftListview;
    String [] lefttitles={"个人信息","健康周报","跑步","设备管理","设置","关于"};
    int [] leftImageList={R.drawable.sliding_personal_info,R.drawable.sliding_health_news,R.drawable.sliding_run,
    R.drawable.sliding_device_manage,R.drawable.sliding_setting,R.drawable.sliding_about};
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main_activity);
        initView();
    }
    private void initView(){
        leftListview =(ListView)findViewById(R.id.sliding_listview);
        leftListview.setDividerHeight(0);//屏蔽掉listview的横线
        leftListview.setDivider(null);
        mDrawerLayout =(DrawerLayout)findViewById(R.id.drawerlayout);
        leftListview.setAdapter(new SlidingListviewAdapter(this,lefttitles,leftImageList));
        ((ImageView)findViewById(R.id.back)).setOnClickListener(new View.OnClickListener() {//打开抽屉
            @Override
            public void onClick(View v) {
                mDrawerLayout.openDrawer(Gravity.LEFT);
            }
        });
    }
}
