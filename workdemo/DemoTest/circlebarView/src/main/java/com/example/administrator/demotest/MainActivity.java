package com.example.administrator.demotest;

import android.graphics.Color;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.Gravity;
import android.view.View;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.Toast;

import com.wx.wheelview.adapter.ArrayWheelAdapter;
import com.wx.wheelview.widget.WheelView;

import java.util.ArrayList;

public class MainActivity extends AppCompatActivity {
    private WheelView hourWheelView;
    OneItemPopupWindow popup;
    LinearLayout activity_main;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        activity_main =(LinearLayout)findViewById(R.id.activity_main);
        ((Button)findViewById(R.id.button)).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                ArrayList<String> condition = new ArrayList<>();  //构建数据源
                condition.add("北京");
                condition.add("上海");
                condition.add("浙江");
                condition.add("江苏");
                condition.add("山东");
                condition.add("山西");
                condition.add("广东");
                condition.add("福建");
                popup = new OneItemPopupWindow(MainActivity.this, selectItemsOnClick,"选择城市",condition,4);
                // 设置popupWindow显示的位置
                // 此时设在界面底部并且水平居中
                popup.showAtLocation(activity_main,
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
            }
        });
    }
    private View.OnClickListener selectItemsOnClick = new View.OnClickListener() {
        public void onClick(View v) {
            switch (v.getId()) {
                //根据popupWindow 布局文件中的id 来执行相应的点击事件
                case R.id.popup_one_item_btn_submit:
                    String s = popup.getDatas().get(popup.getCurrentPosition());
//                    find_expert_btn_location.setText(s);
                    Toast(s);
                    break;
                // ....
            }
            //每次点击popupWindow中的任意按钮，记得关闭此popupWindow，
            popup.dismiss();
        }
    };
    private ArrayList<String> createHours() {
        ArrayList<String> list = new ArrayList<String>();
        for (int i = 0; i < 24; i++) {
            if (i < 10) {
                list.add("0" + i);
            } else {
                list.add("" + i);
            }
        }
        return list;
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
    public void Toast(String  name ){
        Toast.makeText(MainActivity.this,""+name,Toast.LENGTH_LONG).show();
    }
}
