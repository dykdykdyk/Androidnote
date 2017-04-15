package dyk.baseactivity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;

/**
 * Created by Dengyangkang on 2017/4/13.
 */

public class SecondActivity extends Activity{
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.second_main);
        Intent intent =getIntent();
        String data =intent.getStringExtra("ex");
        Log.i("TAG","data= "+data);
    }
}
