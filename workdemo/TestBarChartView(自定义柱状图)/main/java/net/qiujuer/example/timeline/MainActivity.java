package net.qiujuer.example.timeline;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;

import java.util.ArrayList;
import java.util.List;

public class MainActivity extends AppCompatActivity {
    private BarChart barChart;
    private List<String> verticalList;//x轴数据
    private List<Integer> horizontalList;//高度(柱子的值)
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        barChart = (BarChart) findViewById(R.id.barchart);
        verticalList = new ArrayList<>();
        horizontalList = new ArrayList<>();
        //柱子宽度
        verticalList.add("9:27");
        verticalList.add("10:50");
        verticalList.add("14:30");
        verticalList.add("15:30");
        verticalList.add("15:50");
        verticalList.add("17:00");
        verticalList.add("19:30");
        verticalList.add("21:30");
        verticalList.add("22:30");
        //初始化柱子高度
        horizontalList.add(2);
        horizontalList.add(3);
        horizontalList.add(2);
        horizontalList.add(0);
        horizontalList.add(3);
        horizontalList.add(2);
        horizontalList.add(2);
        horizontalList.add(3);
        horizontalList.add(0);
        barChart.setHorizontalList(verticalList);
        barChart.setVerticalList(horizontalList);
    }
}
