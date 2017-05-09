package dyk.viewpagerdemo.view.activity;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.View;
import android.widget.TextView;

import dyk.viewpagerdemo.R;
import dyk.viewpagerdemo.view.fragment.Fragment_Step_Day;
import dyk.viewpagerdemo.view.fragment.Fragment_Step_Month;
import dyk.viewpagerdemo.view.fragment.Fragment_Step_Week;

/**
 * Created by dengyangkang on 2017/5/4.
 */

/**
 * Created by dengyangkang on 2017/5/4.
 */

public  class Step_Activity extends FragmentActivity {
    FragmentManager manager;
    TextView tv_day,tv_week,tv_month;
    Fragment_Step_Day fragment_step_day;
    Fragment_Step_Week fragment_step_week;
    Fragment_Step_Month fragment_step_month;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.step_activity);
        fragment_step_day = new Fragment_Step_Day();
        fragment_step_week = new Fragment_Step_Week();
        fragment_step_month = new Fragment_Step_Month();

        tv_day =(TextView)findViewById(R.id.tv_day);
        tv_week =(TextView)findViewById(R.id.tv_week);
        tv_month =(TextView)findViewById(R.id.tv_month);
        tv_day.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                tv_day.setSelected(true);
                tv_week.setSelected(false);
                tv_month.setSelected(false);
                FragmentTransaction    transaction = manager.beginTransaction();
                transaction.replace(R.id.step_content, fragment_step_day,"11");
                transaction.commit();
            }
        });
        tv_week.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                tv_day.setSelected(false);
                tv_week.setSelected(true);
                tv_month.setSelected(false);
                FragmentTransaction    transaction = manager.beginTransaction();
                transaction.replace(R.id.step_content, fragment_step_week,"11");
                transaction.commit();
            }
        });
        tv_month.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                tv_day.setSelected(false);
                tv_week.setSelected(false);
                tv_month.setSelected(true);
                FragmentTransaction    transaction = manager.beginTransaction();
                transaction.replace(R.id.step_content, fragment_step_month,"11");
                transaction.commit();
            }
        });
        tv_day.setSelected(true);
        tv_week.setSelected(false);
        tv_month.setSelected(false);
        manager = getSupportFragmentManager();
        FragmentTransaction    transaction = manager.beginTransaction();
        transaction.add(R.id.step_content, fragment_step_day,"11");
        transaction.commit();
    }
}
