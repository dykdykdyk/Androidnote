package dyk.viewpagerdemo.view.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v4.widget.DrawerLayout;
import android.view.Gravity;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.Toast;

import com.reginald.swiperefresh.CustomSwipeRefreshLayout;

import java.util.List;

import dyk.viewpagerdemo.R;
import dyk.viewpagerdemo.view.adapter.SlidingListviewAdapter;
import dyk.viewpagerdemo.view.customview.SwipereFresh_HeadView;


/**步数 睡眠 心率 体温 其他
 * 环境温度 气压 海拔 血压 血氧 呼吸
 * Fragment_Atmospheric_Pressure_Day
 * Created by dengyangkang on 2017/5/2.
 * ━━━━━━神兽出没━━━━━━
 * 　　　┏┓　　　┏┓
 * 　　┏┛┻━━━┛┻┓
 * 　　┃　　　　　　　┃
 * 　　┃　　　━　　　┃
 * 　　┃　┳┛　┗┳　┃
 * 　　┃　　　　　　　┃
 * 　　┃　　　┻　　　┃
 * 　　┃　　　　　　　┃
 * 　　┗━┓　　　┏━┛
 * 　　　　┃　　　┃
 * 　　　　┃　　　┃
 * 　　　　┃　　　┗━━━┓
 * 　　　　┃　　　　　　　┣┓
 * 　　　　┃　　　　　　　┏┛
 * 　　　　┗┓┓┏━┳┓┏┛
 * 　　　　　┃┫┫　┃┫┫
 * 　　　　　┗┻┛　┗┻┛
 *
 * ━━━━━━感觉萌萌哒━━━━━━
 * 神兽保佑,代码无bug
 */

public class Main_Activity extends Activity{
    protected CustomSwipeRefreshLayout mCustomSwipeRefreshLayout;
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
        leftListview.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                switch (position){
                    case 0 ://个人信息
                        startActivity(new Intent(Main_Activity.this,Personal_Activity.class));
                        break;
                    case 1 ://健康周报
                        startActivity(new Intent(Main_Activity.this,Health_Weekly_Report_Activity.class));
                        break;
                    case 2 ://跑步
                        startActivity(new Intent(Main_Activity.this,Health_Weekly_Report_Activity.class));
                        break;
                    case 3 ://设备管理
                        startActivity(new Intent(Main_Activity.this,Health_Weekly_Report_Activity.class));
                        break;
                    case 4 ://设置
                        startActivity(new Intent(Main_Activity.this,Personal_Goals_Activity.class));
                        break;
                    case 5 ://关于
                        startActivity(new Intent(Main_Activity.this,Health_Weekly_Report_Activity.class));
                        break;
                }
            }
        });
        setupCustomSwipeRefreshLayout();
    }
    protected void setupCustomSwipeRefreshLayout() {
        mCustomSwipeRefreshLayout = (CustomSwipeRefreshLayout) findViewById(R.id.swipelayout);
        // Set a custom HeadView. use default HeadView if not provided
        mCustomSwipeRefreshLayout.setCustomHeadview(new SwipereFresh_HeadView(this));
        mCustomSwipeRefreshLayout.setOnRefreshListener(new CustomSwipeRefreshLayout.OnRefreshListener() {
            @Override
            public void onRefresh() {
                // do something here when it starts to refresh
                initiateRefresh();
            }
        });
    }
    private void initiateRefresh() {
        new DummyBackgroundTask().execute(0);
    }
    //后台刷新任务
    public class DummyBackgroundTask extends AsyncTask<Integer, Void, List<String>> {

        int viewId;
        @Override
        protected List<String> doInBackground(Integer... params) {
            // Sleep for a small amount of time to simulate a background-task
//            try {
//                Thread.sleep(500);
//            } catch (InterruptedException e) {
//                e.printStackTrace();
//            }

            // Return a new random list of cheeses
//            return Cheeses.randomList(LIST_ITEM_COUNT);
            return null;
        }

        @Override
        protected void onPostExecute(List<String> result) {
            super.onPostExecute(result);

            // Tell the view that the refresh has completed
            onRefreshComplete(result);
        }

    }
    private void onRefreshComplete(List<String> result) {

        Toast.makeText(this,"刷新完毕",Toast.LENGTH_SHORT).show();
//        mListAdapter.clear();
//        for (String cheese : result) {
//            mListAdapter.add(cheese);
//        }
//        mListView.setSelection(0);
        // to notify CustomSwipeRefreshLayout that the refreshing is completed
        mCustomSwipeRefreshLayout.refreshComplete();
    }
}
