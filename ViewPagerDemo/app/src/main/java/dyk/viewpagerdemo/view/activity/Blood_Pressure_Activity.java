package dyk.viewpagerdemo.view.activity;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.View;
import android.widget.TextView;

import dyk.viewpagerdemo.R;
import dyk.viewpagerdemo.view.fragment.Fragment_Blood_Pressure;
import dyk.viewpagerdemo.view.fragment.Fragment_Blood_Pressure_Day;
import dyk.viewpagerdemo.view.fragment.Fragment_Blood_Pressure_Month;
import dyk.viewpagerdemo.view.fragment.Fragment_Blood_Pressure_Week;

/**
 * Created by dengyangkang on 2017/5/4.
 */

public class Blood_Pressure_Activity extends FragmentActivity {
    FragmentManager manager;
   TextView tv_day,tv_week,tv_month;
    Fragment_Blood_Pressure_Day fragment_blood_pressure_day;
    Fragment_Blood_Pressure_Week fragment_blood_pressure_week;
    Fragment_Blood_Pressure_Month fragment_blood_pressure_month;
    Fragment_Blood_Pressure fragment_blood_pressure;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.step_activity);
        fragment_blood_pressure_day = new Fragment_Blood_Pressure_Day();
        fragment_blood_pressure_week = new Fragment_Blood_Pressure_Week();
        fragment_blood_pressure_month = new Fragment_Blood_Pressure_Month();
        fragment_blood_pressure =new Fragment_Blood_Pressure();
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
                transaction.replace(R.id.step_content, fragment_blood_pressure_day,"11");
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
                transaction.replace(R.id.step_content, fragment_blood_pressure_week,"11");
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
                transaction.replace(R.id.step_content, fragment_blood_pressure_month,"11");
                transaction.commit();
            }
        });
        manager = getSupportFragmentManager();
        FragmentTransaction    transaction = manager.beginTransaction();
        transaction.add(R.id.step_content, fragment_blood_pressure,"11");
        transaction.commit();
    }
}
