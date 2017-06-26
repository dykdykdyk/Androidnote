package com.example.yangdong;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.widget.TextView;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

       final SlideButton slideButton = (SlideButton) findViewById(R.id.slide_button);
        final TextView textView = (TextView) findViewById(R.id.text_view);
        slideButton.setButtonCanMove(true);
        slideButton.setChecked(true);
        slideButton.setOnSlideButtonClickListener(new SlideButton.OnSlideButtonClickListener() {
            @Override
            public void onClicked(boolean isChecked) {
                if (isChecked){
                    textView.setText("SlideButton On!");
                    Log.i("MainActivity","isChecked:"+isChecked);
                }
                else {
                    textView.setText("SlideButton Off!");
                    Log.i("MainActivity","isked:"+isChecked);
                }
            }
            @Override
            public void onMove(boolean isCMoved) {
                if(!isCMoved){
                    Toast.makeText(MainActivity.this,"手环为空",Toast.LENGTH_LONG).show();
                }
            }
        });

    }
}
