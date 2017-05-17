package dyk.viewpagerdemo.view.activity;

import android.app.Activity;
import android.graphics.Color;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;

import com.wx.wheelview.adapter.ArrayWheelAdapter;
import com.wx.wheelview.widget.WheelView;

import java.util.ArrayList;

import dyk.viewpagerdemo.R;
import dyk.viewpagerdemo.utils.DataHelper.StorageSharedPreferenced;
import dyk.viewpagerdemo.utils.ToastUtil;
import dyk.viewpagerdemo.utils.UtilTools;

/**
 * Created by dengyangkang on 2017/5/4.
 */

public class Personal_Goals_Activity extends Activity {
    private WheelView hourWheelView;
    private int currentPosition;
    private ArrayList<String> list;
    private TextView text;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.person_goals_activity);
        initView();
    }
    private  void  initView(){
        text =(TextView)findViewById(R.id.text);
        hourWheelView = (WheelView) findViewById(R.id.popup_one_item_wheel);
        hourWheelView.setWheelAdapter(new ArrayWheelAdapter(this));
        hourWheelView.setSkin(WheelView.Skin.Holo);
        hourWheelView.setWheelData(createArrays());
        hourWheelView.setWheelSize(9);
        WheelView.WheelViewStyle style = new WheelView.WheelViewStyle();
        style.selectedTextColor = Color.parseColor("#0288ce");
        style.textColor = Color.GRAY;
        style.textSize=25;
        style.selectedTextSize = 25;
        hourWheelView.setStyle(style);
        hourWheelView.setOnWheelItemSelectedListener(new WheelView.OnWheelItemSelectedListener() {
            @Override
            public void onItemSelected(int position, Object o) {
                currentPosition = hourWheelView.getCurrentPosition();
            }
        });
        text.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                ToastUtil.Short(Personal_Goals_Activity.this,"选择的目标:"+list.get(currentPosition));
                StorageSharedPreferenced.putDataint(UtilTools.PERSONAL_GOALS,Integer.parseInt(list.get(currentPosition)));
                finish();
            }
        });
    }
    private ArrayList<String> createArrays() {
       list = new ArrayList<String>();
        for (int i = 4000; i < 16000; i=i+1000) {
            list.add(i+"");
        }
        return list;
    }

}
