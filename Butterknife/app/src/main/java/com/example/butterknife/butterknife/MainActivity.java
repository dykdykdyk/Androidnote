package com.example.butterknife.butterknife;

import android.app.Activity;
import android.os.Bundle;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;

import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;

public class MainActivity extends Activity {
    @BindView(R.id.myInput)
    EditText myInput;
    @BindView(R.id.myButton)
    Button myButton;
    @BindView(R.id.myTextView)
    TextView myTextView;
    @BindView(R.id.activity_main)
    LinearLayout activityMain;
    //点击事件不要写在onCreate里面


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        //绑定activity
        ButterKnife.bind(this);
    }

    //给按钮添加一个点击事件
    @OnClick(R.id.myButton)
    public void show() {
        myTextView.setText(myInput.getText().toString());
    }

}
