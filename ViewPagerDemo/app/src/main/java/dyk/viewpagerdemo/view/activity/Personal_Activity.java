package dyk.viewpagerdemo.view.activity;

import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.util.Log;
import android.view.Gravity;
import android.view.View;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;

import com.codetroopers.betterpickers.calendardatepicker.CalendarDatePickerDialogFragment;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import dyk.viewpagerdemo.R;
import dyk.viewpagerdemo.utils.ToastUtil;
import dyk.viewpagerdemo.view.customview.DatePickerPopupWindow;
import me.everything.android.ui.overscroll.OverScrollDecoratorHelper;

/**
 * Created by dengyangkang on 2017/5/4.
 */

public class Personal_Activity extends FragmentActivity implements View.OnClickListener{
    RelativeLayout item_age,item_heigh,item_weigh,userinfo_systaltic_pressure,userinfo_diastolic_pressure,user_private_advice;
    LinearLayout linear;
    ImageView devicemanage_checking;
    SimpleDateFormat formatter;
    CalendarDatePickerDialogFragment cdp;
    Bundle testb =new Bundle();
    DatePickerPopupWindow popup;
    TextView tv_userinfo_tip,userinfo_diastolic_text,userinfo_systaltic_text, sb_distance_km,sb_distance_mile
            ,sb_weight_pounds,sb_weight_kilogram,sb_height_cm,sb_height_feet,item_sex_man,item_sex_woman,
            item_hands_left,item_hands_right;
    int checkStatus =0;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.person_activity);
        linear  =(LinearLayout) findViewById(R.id.linear);
        item_age =(RelativeLayout)findViewById(R.id.item_age);
        devicemanage_checking=(ImageView)findViewById(R.id.devicemanage_checking);
        item_heigh =(RelativeLayout)findViewById(R.id.item_heigh);
        item_weigh =(RelativeLayout)findViewById(R.id.item_weigh);
        user_private_advice =(RelativeLayout)findViewById(R.id.user_private_advice);
        userinfo_systaltic_pressure =(RelativeLayout)findViewById(R.id.userinfo_systaltic_pressure);
        userinfo_diastolic_pressure =(RelativeLayout)findViewById(R.id.userinfo_diastolic_pressure);
        tv_userinfo_tip =(TextView)findViewById(R.id.tv_userinfo_tip);
        userinfo_diastolic_text =(TextView)findViewById(R.id.userinfo_diastolic_text);
        userinfo_systaltic_text =(TextView)findViewById(R.id.userinfo_systaltic_text);
        sb_distance_km =(TextView)findViewById(R.id.sb_distance_km);
        sb_distance_mile =(TextView)findViewById(R.id.sb_distance_mile);
        sb_weight_pounds =(TextView)findViewById(R.id.sb_weight_pounds);
        sb_weight_kilogram =(TextView)findViewById(R.id.sb_weight_kilogram);
        sb_height_cm =(TextView)findViewById(R.id.sb_height_cm);
        sb_height_feet =(TextView)findViewById(R.id.sb_height_feet);
        item_sex_man =(TextView)findViewById(R.id.item_sex_man);
        item_sex_woman =(TextView)findViewById(R.id.item_sex_woman);
        item_hands_right =(TextView)findViewById(R.id.item_hands_right);
        item_hands_left =(TextView)findViewById(R.id.item_hands_left);
        item_age.setOnClickListener(this);
        item_heigh.setOnClickListener(this);
        item_weigh.setOnClickListener(this);
        user_private_advice.setOnClickListener(this);
        userinfo_systaltic_pressure.setOnClickListener(this);
        userinfo_diastolic_pressure.setOnClickListener(this);
        devicemanage_checking.setOnClickListener(this);
        sb_distance_km.setOnClickListener(this);
        sb_distance_mile.setOnClickListener(this);
        sb_weight_pounds.setOnClickListener(this);
        sb_weight_kilogram.setOnClickListener(this);
        sb_height_cm.setOnClickListener(this);
        sb_height_feet.setOnClickListener(this);
        item_sex_man.setOnClickListener(this);
        item_sex_woman.setOnClickListener(this);
        item_hands_right.setOnClickListener(this);
        item_hands_left.setOnClickListener(this);
        ScrollView scrollView = (ScrollView) findViewById(R.id.vertical_scroll_view);
        OverScrollDecoratorHelper.setUpOverScroll(scrollView);
    }
    /**
     * 设置添加屏幕的背景透明度
     * @param bgAlpha
     */
    public void backgroundAlpha(float bgAlpha)
    {
        WindowManager.LayoutParams lp = getWindow().getAttributes();
        lp.alpha = bgAlpha; //0.0-1.0
        getWindow().setAttributes(lp);
    }
    private View.OnClickListener selectItemsOnClick = new View.OnClickListener() {
        public void onClick(View v) {
            switch (v.getId()) {
                //根据popupWindow 布局文件中的id 来执行相应的点击事件
                case R.id.popup_one_item_btn_submit:
                    String s = popup.getDatas().get(popup.getCurrentPosition());
                    ToastUtil.Long(Personal_Activity.this,s);
                    break;
                // ....
            }
            //每次点击popupWindow中的任意按钮，记得关闭此popupWindow，
            popup.dismiss();
        }
    };
    private void setDate(Bundle b){
        Log.i("TAG","b:"+b.getInt("year"));
        Log.i("TAG","b:"+b.getInt("month"));
        Log.i("TAG","b:"+b.getInt("day"));
        cdp.onSaveInstanceState(b);
    }
    /**
     * Called when a view has been clicked.
     *
     * @param v The view that was clicked.
     *
     */
    @Override
    public void onClick(View v) {
        switch(v.getId()){
            case R.id.item_age:
                cdp = new CalendarDatePickerDialogFragment();
                if(testb.getInt("year") !=0){
                    Log.i("TAG","aa:"+testb.getInt("year"));
                    Log.i("TAG","aa:"+testb.getInt("month"));
                    Log.i("TAG","aa:"+testb.getInt("day"));
                    cdp.setPreselectedDate(testb.getInt("year"),testb.getInt("month"),testb.getInt("day"));
                }
                cdp.show(Personal_Activity.this.getSupportFragmentManager(), "Material Calendar Example");
                cdp.setOnDateSetListener(new CalendarDatePickerDialogFragment.OnDateSetListener() {
                    @Override
                    public void onDateSet(CalendarDatePickerDialogFragment dialog, int year, int monthOfYear, int dayOfMonth) {
                        try {
                            Bundle b =new Bundle();
                            b.putInt("year",year);
                            b.putInt("month",monthOfYear);
                            b.putInt("day",dayOfMonth);
                            setDate(b);
                            testb =b;
                            formatter = new SimpleDateFormat("dd/MM/yyyy");
                            String dateInString = dayOfMonth + "/" + (monthOfYear + 1) + "/" + year;
                            Date date = formatter.parse(dateInString);
                        } catch (Exception ex) {
                        }
                    }
                });
                break;
            case R.id.item_heigh:
                ArrayList<String> condition = new ArrayList<>();  //构建数据源
                for(int i=50;i<250;i++){
                    condition.add(String.valueOf(i));
                }
                popup = new DatePickerPopupWindow(Personal_Activity.this, selectItemsOnClick,condition,"cm","身高");
                // 设置popupWindow显示的位置
                // 此时设在界面底部并且水平居中
                popup.showAtLocation(linear,
                        Gravity.BOTTOM| Gravity.CENTER_HORIZONTAL, 0, 0);
                // 当popupWindow 出现的时候 屏幕的透明度  ，设为0.5 即半透明 灰色效果
                backgroundAlpha(0.5f);
                // 设置popupWindow取消的点击事件，即popupWindow消失后，屏幕的透明度，全透明，就回复原状态
                popup.setOnDismissListener(new PopupWindow.OnDismissListener() {
                    @Override
                    public void onDismiss() {
                        backgroundAlpha(1f);
                    }
                });
                break;
            case R.id.item_weigh:
                ArrayList<String> condition2 = new ArrayList<>();  //构建数据源
                for(int i=20;i<400;i++){
                    condition2.add(String.valueOf(i));
                }
                popup = new DatePickerPopupWindow(Personal_Activity.this, selectItemsOnClick,condition2,"kg","体重");
                // 设置popupWindow显示的位置
                // 此时设在界面底部并且水平居中
                popup.showAtLocation(linear,
                        Gravity.BOTTOM| Gravity.CENTER_HORIZONTAL, 0, 0);
                // 当popupWindow 出现的时候 屏幕的透明度  ，设为0.5 即半透明 灰色效果
                backgroundAlpha(0.5f);
                // 设置popupWindow取消的点击事件，即popupWindow消失后，屏幕的透明度，全透明，就回复原状态
                popup.setOnDismissListener(new PopupWindow.OnDismissListener() {
                    @Override
                    public void onDismiss() {
                        backgroundAlpha(1f);
                    }
                });
                break;
            case R.id.user_private_advice:
                if(checkStatus ==0){//未选
                    devicemanage_checking.setVisibility(View.VISIBLE);
                    checkStatus =1;
                    break;
                }else if(checkStatus ==1){//未选中
                    devicemanage_checking.setImageResource(R.drawable.devicemanage_notchecking);
                    devicemanage_checking.setVisibility(View.VISIBLE);
                    checkStatus =2;  //  TextView tv_userinfo_tip,userinfo_diastolic_text,userinfo_systaltic_text;
                    tv_userinfo_tip.setTextColor(Color.parseColor("#ffbcbcbf"));
                    userinfo_diastolic_text.setTextColor(Color.parseColor("#ffbcbcbf"));
                    userinfo_systaltic_text.setTextColor(Color.parseColor("#ffbcbcbf"));
                    break;
                }else if(checkStatus ==2){//选中
                    devicemanage_checking.setImageResource(R.drawable.devicemanage_checking);
                    devicemanage_checking.setVisibility(View.VISIBLE);
                    checkStatus =1;
                    tv_userinfo_tip.setTextColor(Color.parseColor("#ff666666"));
                    userinfo_diastolic_text.setTextColor(Color.parseColor("#ff666666"));
                    userinfo_systaltic_text.setTextColor(Color.parseColor("#ff666666"));
                    break;
                }
                break;
            case R.id.userinfo_systaltic_pressure:
                if(checkStatus ==2)
                    return ;
                ArrayList<String> condition3 = new ArrayList<>();  //构建数据源
                for(int i=50;i<250;i++){
                    condition3.add(String.valueOf(i));
                }
                popup = new DatePickerPopupWindow(Personal_Activity.this, selectItemsOnClick,condition3,"mmHg","收缩压");
                // 设置popupWindow显示的位置
                // 此时设在界面底部并且水平居中
                popup.showAtLocation(linear,
                        Gravity.BOTTOM| Gravity.CENTER_HORIZONTAL, 0, 0);
                // 当popupWindow 出现的时候 屏幕的透明度  ，设为0.5 即半透明 灰色效果
                backgroundAlpha(0.5f);
                // 设置popupWindow取消的点击事件，即popupWindow消失后，屏幕的透明度，全透明，就回复原状态
                popup.setOnDismissListener(new PopupWindow.OnDismissListener() {
                    @Override
                    public void onDismiss() {
                        backgroundAlpha(1f);
                    }
                });
                break;
            case R.id.userinfo_diastolic_pressure:
                if(checkStatus ==2)
                    return ;
                ArrayList<String> condition4 = new ArrayList<>();  //构建数据源
                for(int i=20;i<200;i++){
                    condition4.add(String.valueOf(i));
                }
                popup = new DatePickerPopupWindow(Personal_Activity.this, selectItemsOnClick,condition4,"mmHg","舒张压");
                // 设置popupWindow显示的位置
                // 此时设在界面底部并且水平居中
                popup.showAtLocation(linear,
                        Gravity.BOTTOM| Gravity.CENTER_HORIZONTAL, 0, 0);
                // 当popupWindow 出现的时候 屏幕的透明度  ，设为0.5 即半透明 灰色效果
                backgroundAlpha(0.5f);
                // 设置popupWindow取消的点击事件，即popupWindow消失后，屏幕的透明度，全透明，就回复原状态
                popup.setOnDismissListener(new PopupWindow.OnDismissListener() {
                    @Override
                    public void onDismiss() {
                        backgroundAlpha(1f);
                    }
                });
                break;
            case  R.id.sb_distance_km://距离
                sb_distance_km.setBackground(getResources().getDrawable(R.drawable.button_shaperight_select));
                sb_distance_mile.setBackground(getResources().getDrawable(R.drawable.button_shapeleft));
                break;
            case  R.id.sb_distance_mile:
                sb_distance_km.setBackground(getResources().getDrawable(R.drawable.button_shaperight));
                sb_distance_mile.setBackground(getResources().getDrawable(R.drawable.button_shapeleft_select));
                break;
            case  R.id.sb_height_cm://身高
                sb_height_cm.setBackground(getResources().getDrawable(R.drawable.button_shaperight_select));
                sb_height_feet.setBackground(getResources().getDrawable(R.drawable.button_shapeleft));
                break;
            case  R.id.sb_height_feet:
                sb_height_cm.setBackground(getResources().getDrawable(R.drawable.button_shaperight));
                sb_height_feet.setBackground(getResources().getDrawable(R.drawable.button_shapeleft_select));
                break;
            case  R.id.sb_weight_kilogram://体重
                sb_weight_kilogram.setBackground(getResources().getDrawable(R.drawable.button_shaperight_select));
                sb_weight_pounds.setBackground(getResources().getDrawable(R.drawable.button_shapeleft));
                break;
            case  R.id.sb_weight_pounds:
                sb_weight_kilogram.setBackground(getResources().getDrawable(R.drawable.button_shaperight));
                sb_weight_pounds.setBackground(getResources().getDrawable(R.drawable.button_shapeleft_select));
                break;
            case  R.id.item_sex_man:
                Drawable mans= getResources().getDrawable(R.drawable.man_selected);
                mans.setBounds(0, 0, mans.getMinimumWidth(), mans.getMinimumHeight());
                item_sex_man.setCompoundDrawables(mans,null,null,null);
                Drawable item_sex_wom= getResources().getDrawable(R.drawable.women_unselected);
                item_sex_wom.setBounds(0, 0, item_sex_wom.getMinimumWidth(), item_sex_wom.getMinimumHeight());
                item_sex_woman.setCompoundDrawables(item_sex_wom,null,null,null);
                break;
            case  R.id.item_sex_woman:
                Drawable drawable= getResources().getDrawable(R.drawable.man_unselected);
                drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumHeight());
                item_sex_man.setCompoundDrawables(drawable,null,null,null);
                Drawable woman= getResources().getDrawable(R.drawable.women_selected);
                woman.setBounds(0, 0, woman.getMinimumWidth(), woman.getMinimumHeight());
                item_sex_woman.setCompoundDrawables(woman,null,null,null);
                break;
            case  R.id.item_hands_left:
                Drawable hands= getResources().getDrawable(R.drawable.icon_left_hand_checked);
                hands.setBounds(0, 0, hands.getMinimumWidth(), hands.getMinimumHeight());
                item_hands_left.setCompoundDrawables(hands,null,null,null);
                Drawable hans_left= getResources().getDrawable(R.drawable.icon_right_hand_def);
                hans_left.setBounds(0, 0, hans_left.getMinimumWidth(), hans_left.getMinimumHeight());
                item_hands_right.setCompoundDrawables(hans_left,null,null,null);
                break;
            case  R.id.item_hands_right:
                Drawable hand= getResources().getDrawable(R.drawable.icon_left_hand_def);
                hand.setBounds(0, 0, hand.getMinimumWidth(), hand.getMinimumHeight());
                item_hands_left.setCompoundDrawables(hand,null,null,null);
                Drawable hans_right= getResources().getDrawable(R.drawable.icon_right_hand_checked);
                hans_right.setBounds(0, 0, hans_right.getMinimumWidth(), hans_right.getMinimumHeight());
                item_hands_right.setCompoundDrawables(hans_right,null,null,null);
                break;

        }
    }
}
