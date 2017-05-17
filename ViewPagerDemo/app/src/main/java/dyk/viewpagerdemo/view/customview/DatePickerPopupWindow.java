package dyk.viewpagerdemo.view.customview;

/**
 * Created by Administrator on 2017/05/09.
 */

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;

import com.wx.wheelview.adapter.ArrayWheelAdapter;
import com.wx.wheelview.widget.WheelView;

import java.util.ArrayList;

import dyk.viewpagerdemo.R;

/**
 * Created by 徐启鑫 on 2016/11/15.
 * 一个选项的popupwindow
 */
public class DatePickerPopupWindow extends PopupWindow{

    private View mMenuView; //popupwindow布局生成的View
    private TextView title; //标题
//    private Button cancel;  //取消按钮
    private ImageView submit;  //确定按钮
    private WheelView wheel;  //wheelview控件
    private int currentPosition;  // 当然的wheelview选择的item的位置
    ArrayList<String> datas = new ArrayList<>();    // wheelview的数据源

    public int getCurrentPosition() {
        return currentPosition;
    }

    public ArrayList<String> getDatas() {
        return datas;
    }


    public DatePickerPopupWindow(Context context, View.OnClickListener itemsOnClick,ArrayList<String> datas,
                                 String centerString,String Lftename) {
        super(context);

        LayoutInflater inflater = (LayoutInflater) context
                .getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        mMenuView = inflater.inflate(R.layout.datepicker_popupwindow, null);
        title = (TextView) mMenuView.findViewById(R.id.popup_one_item_btn_cancel);
        submit = (ImageView) mMenuView.findViewById(R.id.popup_one_item_btn_submit);
        wheel = (WheelView) mMenuView.findViewById(R.id.popup_one_item_wheel);
//        title = (TextView) mMenuView.findViewById(R.id.popup_one_item_txt_title);

        this.datas = datas; //根据参数初始化数据源
        title.setText(Lftename);   //设置标题
        wheel.setExtraText(centerString, Color.parseColor("#ff444444"), 50, 150);
        wheel.setWheelAdapter(new ArrayWheelAdapter(context)); // 文本数据源
        wheel.setSkin(WheelView.Skin.Holo); // common皮肤
        WheelView.WheelViewStyle style = new WheelView.WheelViewStyle();
        style.textColor =Color.parseColor("#ffa5a5a5");
        style.holoBorderColor=Color.parseColor("#ffe0e0e0");//设置中间两条横线颜色
        style.textSize =20;
//        style.backgroundColor=Color.parseColor("#ffa5a5a5");
        wheel.setStyle(style);
        wheel.setWheelData(datas);  // 数据集合
        wheel.setOnWheelItemSelectedListener(new WheelView.OnWheelItemSelectedListener() {
            @Override
            public void onItemSelected(int position, Object o) {
                currentPosition = wheel.getCurrentPosition();
            }
        });
//        cancel.setOnClickListener(new View.OnClickListener() {
//            @Override
//            public void onClick(View v) {
//                dismiss();
//            }
//        });
        submit.setOnClickListener(itemsOnClick);

        this.setContentView(mMenuView);
        this.setWidth(ViewGroup.LayoutParams.MATCH_PARENT);
        this.setHeight(ViewGroup.LayoutParams.WRAP_CONTENT);
        ColorDrawable dw = new ColorDrawable(0x000000);
        this.setBackgroundDrawable(dw);
        this.setFocusable(true);
        //点击popupWindow之外的部分  关闭popupWindow
        mMenuView.setOnTouchListener(new View.OnTouchListener() {
            public boolean onTouch(View v, MotionEvent event) {
                int height = mMenuView.findViewById(R.id.popup_one_item_ly).getTop();
                int y = (int) event.getY();
                if (event.getAction() == MotionEvent.ACTION_UP){
                    if(y<height){
                        dismiss();
                    }
                }
                return true;
            }
        });
//        wheel.setSelection(startIndexItem);

    }
}
