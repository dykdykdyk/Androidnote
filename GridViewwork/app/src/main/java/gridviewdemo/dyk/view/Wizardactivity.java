package gridviewdemo.dyk.view;

import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;

import gridviewdemo.dyk.gridviewdemo.R;

/**
 * Created by Administrator on 2017/3/24.
 * 设置向导界面
 */

public class Wizardactivity extends AppCompatActivity implements View.OnClickListener{
    Button backbutton,nextbutton;
    FragmentManager manager;
    FragOne fragment1;
    FragTwo fragment2;
    private int fragmentstatus;
    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.wizard);
        backbutton =(Button)findViewById(R.id.backbutton);
//        nextbutton =(Button)findViewById(R.id.nextbutton);
        backbutton.setOnClickListener(this);
//        nextbutton.setOnClickListener(this);
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar_wizard);
        setSupportActionBar(toolbar);
        /**动态添加Fragment主要分为4步
         * 1.获取到FragmentManager，在V4包中通过getSupportFragmentManager，在系统中原生的Fragment是通过getFragmentManager获得的。
         2.开启一个事务，通过调用beginTransaction方法开启。
         3.向容器内加入Fragment，一般使用add或者replace方法实现，需要传入容器的id和Fragment的实例。
         4.提交事务，调用commit方法提交。
         */
         manager = getSupportFragmentManager();
        FragmentTransaction    transaction = manager.beginTransaction();
         fragment1 = new FragOne();
        fragment2 = new FragTwo();
        transaction.add(R.id.fragment_container, fragment1,"11");
        transaction.commit();
        fragmentstatus =1;

        Log.i("TAG","233333333333333: "+manager.findFragmentByTag("11"));

    }
    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.wizard_main, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Handle action bar item clicks here. The action bar will
        // automatically handle clicks on the Home/Up button, so long
        // as you specify a parent activity in AndroidManifest.xml.
        int id = item.getItemId();
        if (id == R.id.action_scan) {
            return true;
        }
        return super.onOptionsItemSelected(item);
    }

    /**
     * Called when a view has been clicked.
     *
     * @param v The view that was clicked.
     */
    @Override
    public void onClick(View v) {
        switch (v.getId()){
            case R.id.backbutton :
                Log.i("TAG","backbutton");
                if(fragmentstatus ==1){
                    startActivity(new Intent(this,MainActivity.class));
                }else if(fragmentstatus ==2){
                    FragmentTransaction    transaction = manager.beginTransaction();
                    transaction.replace(R.id.fragment_container, fragment1,"11");
                         transaction.commit();
                    fragmentstatus=1;
                    break;
            }else if(fragmentstatus ==3){
                    FragmentTransaction    transaction = manager.beginTransaction();
                    transaction.replace(R.id.fragment_container, fragment2,"11");
                    transaction.commit();
                    fragmentstatus=2;
                    break;
                }
                break;
            case R.id.nextbutton :
                if(fragmentstatus ==1){
                    FragmentTransaction    transaction = manager.beginTransaction();
                    transaction.replace(R.id.fragment_container, fragment2,"11");
                    transaction.commit();
                    fragmentstatus=2;
                    break;
                }else if(fragmentstatus ==2){
                    FragmentTransaction    transaction = manager.beginTransaction();
                    transaction.replace(R.id.fragment_container, fragment1,"11");
                    transaction.commit();
                    fragmentstatus=1;
                    break;
                }else if(fragmentstatus ==3){
                    FragmentTransaction    transaction = manager.beginTransaction();
                    transaction.replace(R.id.fragment_container, fragment1,"11");
                    transaction.commit();
                    fragmentstatus=2;
                    break;
                }
                Log.i("TAG","nextbutton");
                break;
        }
    }
}
