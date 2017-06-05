package h.datetimepicker;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import com.codetroopers.betterpickers.calendardatepicker.CalendarDatePickerDialogFragment;
import com.codetroopers.betterpickers.datepicker.DatePickerBuilder;
import com.codetroopers.betterpickers.datepicker.DatePickerDialogFragment;
import com.codetroopers.betterpickers.timepicker.TimePickerBuilder;
import com.codetroopers.betterpickers.timepicker.TimePickerDialogFragment;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/**
 * Created by HPC on 09-May-16.
 * Visit https://github.com/code-troopers/android-betterpickers for library and more info
 */
public class MaterialDateTimePicker extends AppCompatActivity {

    static int hour, min;

    TextView txtdate, txttime, txtcalendar;
    Button btntimepicker, btndatepicker, btncalendarpicker;

    java.sql.Time timeValue;
    SimpleDateFormat format;
    Calendar c;
    int year, month, day;
    SimpleDateFormat formatter;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.materialdatepicker);

        c = Calendar.getInstance();
        hour = c.get(Calendar.HOUR_OF_DAY);
        min = c.get(Calendar.MINUTE);

        year = c.get(Calendar.YEAR);
        month = c.get(Calendar.MONTH);
        day = c.get(Calendar.DAY_OF_MONTH);

        txtdate = (TextView) findViewById(R.id.txtdate);
        txttime = (TextView) findViewById(R.id.txttime);
        txtcalendar = (TextView) findViewById(R.id.txtcalendar);

        btndatepicker = (Button) findViewById(R.id.btndatepicker);
        btntimepicker = (Button) findViewById(R.id.btntimepicker);
        btncalendarpicker = (Button) findViewById(R.id.btncalendarpicker);

        btncalendarpicker.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                // Get Current Date

                CalendarDatePickerDialogFragment cdp = new CalendarDatePickerDialogFragment();
                cdp.show(MaterialDateTimePicker.this.getSupportFragmentManager(), "Material Calendar Example");
                cdp.setOnDateSetListener(new CalendarDatePickerDialogFragment.OnDateSetListener() {
                    @Override
                    public void onDateSet(CalendarDatePickerDialogFragment dialog, int year, int monthOfYear, int dayOfMonth) {
                        try {
                            formatter = new SimpleDateFormat("dd/MM/yyyy");
                            String dateInString = dayOfMonth + "/" + (monthOfYear + 1) + "/" + year;
                            Date date = formatter.parse(dateInString);

                            txtcalendar.setText(formatter.format(date).toString());

                            formatter = new SimpleDateFormat("dd/MMM/yyyy");

                            txtcalendar.setText(txtcalendar.getText().toString() + "\n" + formatter.format(date).toString());

                            formatter = new SimpleDateFormat("dd-MM-yyyy");

                            txtcalendar.setText(txtcalendar.getText().toString() + "\n" + formatter.format(date).toString());

                            formatter = new SimpleDateFormat("dd.MMM.yyyy");

                            txtcalendar.setText(txtcalendar.getText().toString() + "\n" + formatter.format(date).toString());
                        } catch (Exception ex) {
                            txtdate.setText(ex.getMessage().toString());
                        }
                    }
                });
            }
        });
        btndatepicker.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                DatePickerBuilder dpb = new DatePickerBuilder()
                        .setFragmentManager(getSupportFragmentManager())
                        .setStyleResId(R.style.BetterPickersDialogFragment_Light)
                        .setYearOptional(true);

                dpb.show();
                dpb.addDatePickerDialogHandler(new DatePickerDialogFragment.DatePickerDialogHandler() {
                                                   @Override
                                                   public void onDialogDateSet(int reference, int year, int monthOfYear, int dayOfMonth) {
                                                       try {
                                                           formatter = new SimpleDateFormat("dd/MM/yyyy");
                                                           String dateInString = dayOfMonth + "/" + (monthOfYear + 1) + "/" + year;
                                                           Date date = formatter.parse(dateInString);
                                                           txtdate.setText(formatter.format(date).toString());
                                                           formatter = new SimpleDateFormat("dd/MMM/yyyy");

                                                           txtdate.setText(txtdate.getText().toString() + "\n" + formatter.format(date).toString());

                                                           formatter = new SimpleDateFormat("dd-MM-yyyy");

                                                           txtdate.setText(txtdate.getText().toString() + "\n" + formatter.format(date).toString());

                                                           formatter = new SimpleDateFormat("dd.MMM.yyyy");

                                                           txtdate.setText(txtdate.getText().toString() + "\n" + formatter.format(date).toString());
                                                       } catch (Exception ex) {
                                                           txtdate.setText(ex.getMessage().toString());
                                                       }
                                                   }
                                               }

                );
            }
        });
        btntimepicker.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                TimePickerBuilder tpb = new TimePickerBuilder()
                        .setFragmentManager(getSupportFragmentManager())
                        .setStyleResId(R.style.BetterPickersDialogFragment_Light);
                tpb.show();
                tpb.addTimePickerDialogHandler(new TimePickerDialogFragment.TimePickerDialogHandler() {
                    @Override
                    public void onDialogTimeSet(int reference, int hourOfDay, int minute) {
                        try {
                            String dtStart = String.valueOf(hourOfDay) + ":" + String.valueOf(minute);
                            format = new SimpleDateFormat("HH:mm");

                            timeValue = new java.sql.Time(format.parse(dtStart).getTime());
                            txttime.setText(String.valueOf(timeValue));
                            String amPm = hourOfDay % 12 + ":" + minute + " " + ((hourOfDay >= 12) ? "PM" : "AM");
                            txttime.setText(amPm + "\n" + String.valueOf(timeValue));
                        } catch (Exception ex) {
                            txttime.setText(ex.getMessage().toString());
                        }
                    }
                });
            }
        });
    }


}
