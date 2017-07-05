package com.liuguilin.mpandroidchartsample;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.GridView;

import com.liuguilin.mpandroidchartsample.activity.AnotherBarActivity;
import com.liuguilin.mpandroidchartsample.activity.BarChartActivity;
import com.liuguilin.mpandroidchartsample.activity.BubbleChartActivity;
import com.liuguilin.mpandroidchartsample.activity.DoubleLineCharActivity;
import com.liuguilin.mpandroidchartsample.activity.HorizontalBarChartActivity;
import com.liuguilin.mpandroidchartsample.activity.LineChartActivity;
import com.liuguilin.mpandroidchartsample.activity.MultiLineChartActivity;
import com.liuguilin.mpandroidchartsample.activity.PieChartActivity;
import com.liuguilin.mpandroidchartsample.activity.PiePolylineChartActivity;
import com.liuguilin.mpandroidchartsample.activity.ScatterChartActivity;
import com.liuguilin.mpandroidchartsample.activity.StackedBarActivity;
import com.liuguilin.mpandroidchartsample.activity.StackedBarActivityNegative;

/**
 * 第5个 组合图  暂时不做
 */
public class MainActivity extends AppCompatActivity implements AdapterView.OnItemClickListener {

    //列表
    private GridView mGridView;
    //数据源
    private String[] mStr = {"线形图", "双重轴线形图", "条形图", "水平条形图", "饼状图", "折线饼状图",
            "散点图", "气泡图", "堆叠条形图", "正负堆叠条形图", "底部值柱形图", "多数据折线图"};
    //适配器
    private ArrayAdapter<String> mAdapter;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        initView();
    }

    //初始化View
    private void initView() {
        mGridView = (GridView) findViewById(R.id.mGridView);
        mAdapter = new ArrayAdapter<String>(this, android.R.layout.simple_list_item_1, mStr);
        mGridView.setAdapter(mAdapter);
        //设置点击
        mGridView.setOnItemClickListener(this);
    }

    @Override
    public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
        switch (position) {
            //线形图
            case 0:
                startActivity(new Intent(this, LineChartActivity.class));
                break;
            //双重轴线形图
            case 1:
                startActivity(new Intent(this, DoubleLineCharActivity.class));
                break;
            //条形图
            case 2:
                startActivity(new Intent(this, BarChartActivity.class));
                break;
            //水平条形图
            case 3:
                startActivity(new Intent(this, HorizontalBarChartActivity.class));
                break;
            //饼状图
            case 4:
                startActivity(new Intent(this, PieChartActivity.class));
                break;
            //折线饼状图
            case 5:
                startActivity(new Intent(this, PiePolylineChartActivity.class));
                break;
            //散点图
            case 6:
                startActivity(new Intent(this, ScatterChartActivity.class));
                break;
            //气泡图
            case 7:
                startActivity(new Intent(this, BubbleChartActivity.class));
                break;
            //堆叠条形图
            case 8:
                startActivity(new Intent(this, StackedBarActivity.class));
                break;
            //正负堆叠条形图
            case 9:
                startActivity(new Intent(this, StackedBarActivityNegative.class));
                break;
            //底部值柱形图
            case 10:
                startActivity(new Intent(this, AnotherBarActivity.class));
                break;
            //多数据折线图
            case 11:
                startActivity(new Intent(this, MultiLineChartActivity.class));
                break;
        }
    }
}
