package dyk.viewpagerdemo.view.activity;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;

import com.codetroopers.betterpickers.calendardatepicker.CalendarDatePickerDialogFragment;

import java.text.SimpleDateFormat;

import dyk.viewpagerdemo.R;
import dyk.viewpagerdemo.view.customview.DatePickerPopupWindow;

/**
 * Created by dengyangkang on 2017/5/4.
 */

public class Health_Weekly_Report_Activity extends FragmentActivity {
    RelativeLayout item_age,item_heigh,item_weigh,userinfo_systaltic_pressure,userinfo_diastolic_pressure;
    LinearLayout linear;
    SimpleDateFormat formatter;
    CalendarDatePickerDialogFragment cdp;
    Bundle testb =new Bundle();
    DatePickerPopupWindow popup;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.health_weekly_report);
    };
}
