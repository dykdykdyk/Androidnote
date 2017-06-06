package com.fookwood.androidgraphicsdemo;

import android.app.Fragment;
import android.os.Bundle;
import android.support.v4.widget.DrawerLayout;
import android.support.v7.app.ActionBarDrawerToggle;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;

import com.fookwood.androidgraphicsdemo.canvasbasic.CanvasBasicFragment;


public class MainActivity extends AppCompatActivity implements DrawerFragment.OnDrawItemSelectedListener{

    private DrawerLayout mDrawerLayout;
    private ActionBarDrawerToggle mToggle;
    private Toolbar mToolbar;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        mDrawerLayout = (DrawerLayout)findViewById(R.id.drawer_layout);
        mToolbar = (Toolbar) findViewById(R.id.toolbar);
        setSupportActionBar(mToolbar);
        mToggle = new ActionBarDrawerToggle(this, mDrawerLayout, mToolbar,
                R.string.navigation_drawer_open, R.string.navigation_drawer_close);
        mDrawerLayout.setDrawerListener(mToggle);
        mToggle.syncState();

        getFragmentManager().beginTransaction().replace(R.id.drawer, new DrawerFragment()).commit();
        onDrawerItemselected(0);
    }

    public void onDrawerItemselected(int postion){
        Fragment content =  null;
        if( postion == 0 ){
            content = new CanvasBasicFragment();
        }

        if( content != null ){
            mDrawerLayout.closeDrawers();
            getFragmentManager().beginTransaction().
                    replace(R.id.content_container, new CanvasBasicFragment()).commit();
        }
    }
}
