package dyk.drawerlayoutdemo;

import android.app.Activity;
import android.os.Bundle;
import android.support.v4.widget.DrawerLayout;
import android.view.Gravity;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;

public class DrawerActivity extends Activity {
    private DrawerLayout mDrawerLayout = null;

    @Override
    protected void onCreate(Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        mDrawerLayout = (DrawerLayout) findViewById(R.id.drawer_layout);

        Button button = (Button) findViewById(R.id.btn);
        button.setOnClickListener(new OnClickListener()
        {

            @Override
            public void onClick(View v)
            {
                // 按钮按下，将抽屉打开
                mDrawerLayout.openDrawer(Gravity.LEFT);

            }
        });
    }

}
