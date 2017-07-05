package com.liuguilin.mpandroidchartsample.activity;
/*
 *  项目名：  MPAndroidChartSample 
 *  包名：    com.liuguilin.mpandroidchartsample.activity
 *  文件名:   PiePolylineChartActivity
 *  创建者:   LGL
 *  创建时间:  2016/11/17 15:19
 *  描述：    折现饼状图
 */

import android.graphics.Color;
import android.os.Bundle;
import android.text.SpannableString;
import android.view.View;
import android.widget.Button;

import com.github.mikephil.charting.animation.Easing;
import com.github.mikephil.charting.charts.PieChart;
import com.github.mikephil.charting.components.Legend;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.data.PieData;
import com.github.mikephil.charting.data.PieDataSet;
import com.github.mikephil.charting.data.PieEntry;
import com.github.mikephil.charting.formatter.PercentFormatter;
import com.github.mikephil.charting.highlight.Highlight;
import com.github.mikephil.charting.interfaces.datasets.IDataSet;
import com.github.mikephil.charting.listener.OnChartValueSelectedListener;
import com.github.mikephil.charting.utils.ColorTemplate;
import com.liuguilin.mpandroidchartsample.R;

import java.util.ArrayList;

public class PiePolylineChartActivity extends BaseActivity implements OnChartValueSelectedListener, View.OnClickListener {

    private PieChart mPieChart;

    //显示百分比
    private Button btn_show_percentage;
    //显示类型
    private Button btn_show_type;
    //x轴动画
    private Button btn_anim_x;
    //y轴动画
    private Button btn_anim_y;
    //xy轴动画
    private Button btn_anim_xy;
    //保存到sd卡
    private Button btn_save_pic;
    //显示中间文字
    private Button btn_show_center_text;
    //旋转动画
    private Button btn_anim_rotating;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_pie_line);

        initView();
    }

    //初始化
    private void initView() {

        btn_show_percentage = (Button) findViewById(R.id.btn_show_percentage);
        btn_show_percentage.setOnClickListener(this);
        btn_show_type = (Button) findViewById(R.id.btn_show_type);
        btn_show_type.setOnClickListener(this);
        btn_anim_x = (Button) findViewById(R.id.btn_anim_x);
        btn_anim_x.setOnClickListener(this);
        btn_anim_y = (Button) findViewById(R.id.btn_anim_y);
        btn_anim_y.setOnClickListener(this);
        btn_anim_xy = (Button) findViewById(R.id.btn_anim_xy);
        btn_anim_xy.setOnClickListener(this);
        btn_save_pic = (Button) findViewById(R.id.btn_save_pic);
        btn_save_pic.setOnClickListener(this);
        btn_show_center_text = (Button) findViewById(R.id.btn_show_center_text);
        btn_show_center_text.setOnClickListener(this);
        btn_anim_rotating = (Button) findViewById(R.id.btn_anim_rotating);
        btn_anim_rotating.setOnClickListener(this);

        //折现饼状图
        mPieChart = (PieChart) findViewById(R.id.mPieChart);
        mPieChart.setUsePercentValues(true);
        mPieChart.getDescription().setEnabled(false);
        mPieChart.setExtraOffsets(5, 10, 5, 5);

        mPieChart.setDragDecelerationFrictionCoef(0.95f);
        //绘制中间文字
        mPieChart.setCenterText(generateCenterSpannableText());
        mPieChart.setExtraOffsets(20.f, 0.f, 20.f, 0.f);

        mPieChart.setDrawHoleEnabled(true);
        mPieChart.setHoleColor(Color.WHITE);

        mPieChart.setTransparentCircleColor(Color.WHITE);
        mPieChart.setTransparentCircleAlpha(110);

        mPieChart.setHoleRadius(58f);
        mPieChart.setTransparentCircleRadius(61f);

        mPieChart.setDrawCenterText(true);

        mPieChart.setRotationAngle(0);
        // 触摸旋转
        mPieChart.setRotationEnabled(true);
        mPieChart.setHighlightPerTapEnabled(true);


        // 添加一个选择监听器
        mPieChart.setOnChartValueSelectedListener(this);

        //模拟数据
        ArrayList<PieEntry> entries = new ArrayList<PieEntry>();
        entries.add(new PieEntry(40, "优秀"));
        entries.add(new PieEntry(20, "满分"));
        entries.add(new PieEntry(30, "及格"));
        entries.add(new PieEntry(10, "不及格"));

        //设置数据
        setData(entries);

        //默认动画
        mPieChart.animateY(1400, Easing.EasingOption.EaseInOutQuad);

        Legend l = mPieChart.getLegend();
        l.setVerticalAlignment(Legend.LegendVerticalAlignment.TOP);
        l.setHorizontalAlignment(Legend.LegendHorizontalAlignment.RIGHT);
        l.setOrientation(Legend.LegendOrientation.VERTICAL);
        l.setDrawInside(false);
        l.setEnabled(false);
    }

    //设置数据
    private void setData(ArrayList<PieEntry> entries) {
        PieDataSet dataSet = new PieDataSet(entries, "三年级一班");
        dataSet.setSliceSpace(3f);
        dataSet.setSelectionShift(5f);
        ArrayList<Integer> colors = new ArrayList<Integer>();
        for (int c : ColorTemplate.VORDIPLOM_COLORS)
            colors.add(c);

        for (int c : ColorTemplate.JOYFUL_COLORS)
            colors.add(c);

        for (int c : ColorTemplate.COLORFUL_COLORS)
            colors.add(c);

        for (int c : ColorTemplate.LIBERTY_COLORS)
            colors.add(c);

        for (int c : ColorTemplate.PASTEL_COLORS)
            colors.add(c);

        colors.add(ColorTemplate.getHoloBlue());

        dataSet.setColors(colors);

        dataSet.setValueLinePart1OffsetPercentage(80.f);
        dataSet.setValueLinePart1Length(0.2f);
        dataSet.setValueLinePart2Length(0.4f);
        dataSet.setYValuePosition(PieDataSet.ValuePosition.OUTSIDE_SLICE);

        PieData data = new PieData(dataSet);
        data.setValueFormatter(new PercentFormatter());
        data.setValueTextSize(11f);
        data.setValueTextColor(Color.BLACK);
        mPieChart.setData(data);

        // 撤销所有的亮点
        mPieChart.highlightValues(null);

        mPieChart.invalidate();
    }

    //绘制中心文字
    private SpannableString generateCenterSpannableText() {
        SpannableString s = new SpannableString("刘某人程序员\n我仿佛听到有人说我帅");
        //s.setSpan(new RelativeSizeSpan(1.5f), 0, 14, 0);
        //s.setSpan(new StyleSpan(Typeface.NORMAL), 14, s.length() - 15, 0);
        //s.setSpan(new ForegroundColorSpan(Color.GRAY), 14, s.length() - 15, 0);
        //s.setSpan(new RelativeSizeSpan(.65f), 14, s.length() - 15, 0);
        //s.setSpan(new StyleSpan(Typeface.ITALIC), s.length() - 14, s.length(), 0);
        //s.setSpan(new ForegroundColorSpan(ColorTemplate.getHoloBlue()), s.length()-17, s.length(), 0);
        return s;
    }

    @Override
    public void onValueSelected(Entry e, Highlight h) {

    }

    @Override
    public void onNothingSelected() {

    }

    @Override
    public void onClick(View v) {
        switch (v.getId()) {
            //显示百分比
            case R.id.btn_show_percentage:
                for (IDataSet<?> set : mPieChart.getData().getDataSets())
                    set.setDrawValues(!set.isDrawValuesEnabled());

                mPieChart.invalidate();
                break;
            //显示类型
            case R.id.btn_show_type:
                if (mPieChart.isDrawHoleEnabled())
                    mPieChart.setDrawHoleEnabled(false);
                else
                    mPieChart.setDrawHoleEnabled(true);
                mPieChart.invalidate();
                break;
            //x轴动画
            case R.id.btn_anim_x:
                mPieChart.animateX(1400);
                break;
            //y轴动画
            case R.id.btn_anim_y:
                mPieChart.animateY(1400);
                break;
            //xy轴动画
            case R.id.btn_anim_xy:
                mPieChart.animateXY(1400, 1400);
                break;
            //保存到sd卡
            case R.id.btn_save_pic:
                mPieChart.saveToPath("title" + System.currentTimeMillis(), "");
                break;
            //显示中间文字
            case R.id.btn_show_center_text:
                if (mPieChart.isDrawCenterTextEnabled())
                    mPieChart.setDrawCenterText(false);
                else
                    mPieChart.setDrawCenterText(true);
                mPieChart.invalidate();
                break;
            //旋转动画
            case R.id.btn_anim_rotating:
                mPieChart.spin(1000, mPieChart.getRotationAngle(), mPieChart.getRotationAngle() + 360, Easing.EasingOption
                        .EaseInCubic);
                break;
        }
    }
}
