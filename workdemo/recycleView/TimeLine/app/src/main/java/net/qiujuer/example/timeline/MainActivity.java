package net.qiujuer.example.timeline;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;

import java.util.ArrayList;
import java.util.List;

public class MainActivity extends AppCompatActivity {
    private BarChart barChart;
    private List<Float> verticalList;//x轴宽度
    private List<Integer> horizontalList;//高度
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        barChart = (BarChart) findViewById(R.id.barchart);
        verticalList = new ArrayList<>();
        horizontalList = new ArrayList<>();
        //柱子宽度
        verticalList.add(100f);
        verticalList.add(200f);
        verticalList.add(10f);
        verticalList.add(100f);
        verticalList.add(50f);
        verticalList.add(70f);
        verticalList.add(100f);
        //初始化柱子高度
        horizontalList.add(100);
        horizontalList.add(50);
        horizontalList.add(200);
        horizontalList.add(100);
        horizontalList.add(150);
        horizontalList.add(120);
        horizontalList.add(300);
        barChart.setHorizontalList(verticalList);
        barChart.setVerticalList(horizontalList);
    }
}
