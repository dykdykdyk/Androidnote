package com.liuguilin.mpandroidchartsample.activity;
/*
 *  项目名：  MPAndroidChartSample 
 *  包名：    com.liuguilin.mpandroidchartsample
 *  文件名:   BaseActivity
 *  创建者:   LGL
 *  创建时间:  2016/11/15 15:27
 *  描述：    Activity的基类
 */

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.MenuItem;

public class BaseActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        //显示返回按钮
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        //取消阴影
        getSupportActionBar().setElevation(0);
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        //关闭当前Activity
        if (item.getItemId() == android.R.id.home) {
            finish();
        }
        return super.onOptionsItemSelected(item);
    }
}
