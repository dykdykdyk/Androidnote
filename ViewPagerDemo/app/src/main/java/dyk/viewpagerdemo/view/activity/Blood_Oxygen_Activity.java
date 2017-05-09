package dyk.viewpagerdemo.view.activity;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.View;
import android.widget.TextView;

import dyk.viewpagerdemo.R;
import dyk.viewpagerdemo.view.fragment.Fragment_Blood_Oxygen;
import dyk.viewpagerdemo.view.fragment.Fragment_Blood_Oxygen_Day;
import dyk.viewpagerdemo.view.fragment.Fragment_Blood_Oxygen_Month;
import dyk.viewpagerdemo.view.fragment.Fragment_Blood_Oxygen_Week;

/**
 * Created by dengyangkang on 2017/5/4.
 */

public class Blood_Oxygen_Activity extends FragmentActivity {
    FragmentManager manager;
    TextView tv_day,tv_week,tv_month;
    Fragment_Blood_Oxygen_Day fragment_blood_oxygen_day;
    Fragment_Blood_Oxygen_Week fragment_blood_oxygen_week;
    Fragment_Blood_Oxygen_Month fragment_blood_oxygen_month;
    Fragment_Blood_Oxygen fragment_blood_oxygen;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.step_activity);
        fragment_blood_oxygen_day = new Fragment_Blood_Oxygen_Day();
        fragment_blood_oxygen_week = new Fragment_Blood_Oxygen_Week();
        fragment_blood_oxygen_month = new Fragment_Blood_Oxygen_Month();
        fragment_blood_oxygen =new Fragment_Blood_Oxygen();
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
                transaction.replace(R.id.step_content, fragment_blood_oxygen_day,"11");
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
                transaction.replace(R.id.step_content, fragment_blood_oxygen_week,"11");
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
                transaction.replace(R.id.step_content, fragment_blood_oxygen_month,"11");
                transaction.commit();
            }
        });
        manager = getSupportFragmentManager();
        FragmentTransaction    transaction = manager.beginTransaction();
        transaction.add(R.id.step_content, fragment_blood_oxygen,"11");
        transaction.commit();
    }
}
