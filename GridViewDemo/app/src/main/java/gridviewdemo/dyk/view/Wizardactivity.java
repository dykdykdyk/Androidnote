package gridviewdemo.dyk.view;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatActivity;

import gridviewdemo.dyk.gridviewdemo.R;

/**
 * Created by Administrator on 2017/3/24.
 * 设置向导界面
 */

public class Wizardactivity extends AppCompatActivity {
    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.wizard);
    }
}
