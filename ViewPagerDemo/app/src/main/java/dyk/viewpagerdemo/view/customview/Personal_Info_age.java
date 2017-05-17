package dyk.viewpagerdemo.view.customview;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;

import com.codetroopers.betterpickers.calendardatepicker.CalendarDatePickerDialogFragment;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by dengyangkang on 2017/5/9.
 */

public class Personal_Info_age extends LinearLayout{
    SimpleDateFormat formatter;
    Activity activity;
    public Personal_Info_age(Context context, AttributeSet attrs) {
        super(context, attrs);
        activity =(Activity)context;
        CalendarDatePickerDialogFragment cdp = new CalendarDatePickerDialogFragment();
//        cdp.show(activity.getFragmentManager(), "Material Calendar Example");
//        cdp.onSaveInstanceState();
        cdp.setOnDateSetListener(new CalendarDatePickerDialogFragment.OnDateSetListener() {
            @Override
            public void onDateSet(CalendarDatePickerDialogFragment dialog, int year, int monthOfYear, int dayOfMonth) {
                try {
                    formatter = new SimpleDateFormat("dd/MM/yyyy");
                    String dateInString = dayOfMonth + "/" + (monthOfYear + 1) + "/" + year;
                    Date date = formatter.parse(dateInString);

//                    txtcalendar.setText(formatter.format(date).toString());

                    formatter = new SimpleDateFormat("dd/MMM/yyyy");

//                    txtcalendar.setText(txtcalendar.getText().toString() + "\n" + formatter.format(date).toString());

                    formatter = new SimpleDateFormat("dd-MM-yyyy");

//                    txtcalendar.setText(txtcalendar.getText().toString() + "\n" + formatter.format(date).toString());

                    formatter = new SimpleDateFormat("dd.MMM.yyyy");

//                    txtcalendar.setText(txtcalendar.getText().toString() + "\n" + formatter.format(date).toString());
                } catch (Exception ex) {
//                    txtdate.setText(ex.getMessage().toString());
                }
            }
        });
    }
}
