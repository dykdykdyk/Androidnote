package com.liuguilin.mpandroidchartsample.activity;
/*
 *  项目名：  MPAndroidChartSample 
 *  包名：    com.liuguilin.mpandroidchartsample.activity
 *  文件名:   AnotherBarActivity
 *  创建者:   LGL
 *  创建时间:  2016/11/18 11:27
 *  描述：    底部值柱形图
 */

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;

import com.github.mikephil.charting.charts.BarChart;
import com.github.mikephil.charting.components.XAxis;
import com.github.mikephil.charting.data.BarData;
import com.github.mikephil.charting.data.BarDataSet;
import com.github.mikephil.charting.data.BarEntry;
import com.github.mikephil.charting.interfaces.datasets.IBarDataSet;
import com.github.mikephil.charting.interfaces.datasets.IDataSet;
import com.github.mikephil.charting.utils.ColorTemplate;
import com.liuguilin.mpandroidchartsample.R;

import java.util.ArrayList;

public class AnotherBarActivity extends BaseActivity implements View.OnClickListener {

    private BarChart mBarChart;

    //显示顶点值
    private Button btn_show_values;
    //x轴动画
    private Button btn_anim_x;
    //y轴动画
    private Button btn_anim_y;
    //xy轴动画
    private Button btn_anim_xy;
    //保存到sd卡
    private Button btn_save_pic;
    //切换自动最大最小值
    private Button btn_auto_mix_max;
    //高亮显示
    private Button btn_actionToggleHighlight;
    //显示边框
    private Button btn_show_border;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_another);

        initView();
    }

    //初始化
    private void initView() {

        //基本控件
        btn_show_values = (Button) findViewById(R.id.btn_show_values);
        btn_show_values.setOnClickListener(this);
        btn_anim_x = (Button) findViewById(R.id.btn_anim_x);
        btn_anim_x.setOnClickListener(this);
        btn_anim_y = (Button) findViewById(R.id.btn_anim_y);
        btn_anim_y.setOnClickListener(this);
        btn_anim_xy = (Button) findViewById(R.id.btn_anim_xy);
        btn_anim_xy.setOnClickListener(this);
        btn_save_pic = (Button) findViewById(R.id.btn_save_pic);
        btn_save_pic.setOnClickListener(this);
        btn_auto_mix_max = (Button) findViewById(R.id.btn_auto_mix_max);
        btn_auto_mix_max.setOnClickListener(this);
        btn_actionToggleHighlight = (Button) findViewById(R.id.btn_actionToggleHighlight);
        btn_actionToggleHighlight.setOnClickListener(this);
        btn_show_border = (Button) findViewById(R.id.btn_show_border);
        btn_show_border.setOnClickListener(this);


        mBarChart = (BarChart) findViewById(R.id.mBarChart);

        mBarChart.getDescription().setEnabled(false);
        mBarChart.setMaxVisibleValueCount(60);
        mBarChart.setPinchZoom(false);
        mBarChart.setDrawBarShadow(false);
        mBarChart.setDrawGridBackground(false);

        XAxis xAxis = mBarChart.getXAxis();
        xAxis.setPosition(XAxis.XAxisPosition.BOTTOM);
        xAxis.setDrawGridLines(false);

        mBarChart.getAxisLeft().setDrawGridLines(false);
        mBarChart.animateY(2500);
        mBarChart.getLegend().setEnabled(false);

        setData();
    }

    //设置数据
    private void setData() {
        ArrayList<BarEntry> yVals1 = new ArrayList<BarEntry>();

        for (int i = 0; i < 10; i++) {
            float mult = 50;
            float val = (float) (Math.random() * mult) + mult / 3;
            yVals1.add(new BarEntry(i, val));
        }
        BarDataSet set1;
        if (mBarChart.getData() != null &&
                mBarChart.getData().getDataSetCount() > 0) {
            set1 = (BarDataSet) mBarChart.getData().getDataSetByIndex(0);
            set1.setValues(yVals1);
            mBarChart.getData().notifyDataChanged();
            mBarChart.notifyDataSetChanged();
        } else {
            set1 = new BarDataSet(yVals1, "日期设置");
            //设置多彩 也可以单一颜色
            set1.setColors(ColorTemplate.VORDIPLOM_COLORS);
            set1.setDrawValues(false);

            ArrayList<IBarDataSet> dataSets = new ArrayList<IBarDataSet>();
            dataSets.add(set1);

            BarData data = new BarData(dataSets);
            mBarChart.setData(data);
            mBarChart.setFitBars(true);
        }
        mBarChart.invalidate();
    }

    @Override
    public void onClick(View v) {
        switch (v.getId()) {
            //显示顶点值
            case R.id.btn_show_values:
                for (IDataSet set : mBarChart.getData().getDataSets())
                    set.setDrawValues(!set.isDrawValuesEnabled());

                mBarChart.invalidate();
                break;
            //x轴动画
            case R.id.btn_anim_x:
                mBarChart.animateX(3000);
                break;
            //y轴动画
            case R.id.btn_anim_y:
                mBarChart.animateY(3000);
                break;
            //xy轴动画
            case R.id.btn_anim_xy:
                mBarChart.animateXY(3000, 3000);
                break;
            //保存到sd卡
            case R.id.btn_save_pic:
                if (mBarChart.saveToGallery("title" + System.currentTimeMillis(), 50)) {
                    Toast.makeText(getApplicationContext(), "保存成功",
                            Toast.LENGTH_SHORT).show();
                } else
                    Toast.makeText(getApplicationContext(), "保存失败",
                            Toast.LENGTH_SHORT).show();
                break;
            //切换自动最大最小值
            case R.id.btn_auto_mix_max:
                mBarChart.setAutoScaleMinMaxEnabled(!mBarChart.isAutoScaleMinMaxEnabled());
                mBarChart.notifyDataSetChanged();
                break;
            //高亮显示
            case R.id.btn_actionToggleHighlight:
                if (mBarChart.getData() != null) {
                    mBarChart.getData().setHighlightEnabled(
                            !mBarChart.getData().isHighlightEnabled());
                    mBarChart.invalidate();
                }
                break;
            //显示边框
            case R.id.btn_show_border:
                for (IBarDataSet set : mBarChart.getData().getDataSets())
                    ((BarDataSet) set).setBarBorderWidth(set.getBarBorderWidth() == 1.f ? 0.f : 1.f);
                mBarChart.invalidate();
                break;
        }
    }
}
