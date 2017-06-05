package com.example.lenovo.touchview;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Button;

import java.util.Random;

public class MainActivity extends AppCompatActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        ((Button)findViewById(R.id.button)).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                int text=new Random().nextInt(100);
                CircleProgressView   mCircleBar = (CircleProgressView) findViewById(R.id.circleProgressbar);
                mCircleBar.setProgress(text);
            }
        });
    }
}
