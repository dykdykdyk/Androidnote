package com.us.adaptr;

import java.util.List;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import android.view.View;

public class FragAdapter extends FragmentPagerAdapter {
    
	private List<Fragment> mFragments;
	
	public FragAdapter(FragmentManager fm,List<Fragment> mfra) {
		super(fm);
		this.mFragments = mfra;
	}
	@Override
	public Fragment getItem(int arg0) {
		return mFragments.get(arg0);
	}

	@Override
	public int getCount() {
		return mFragments.size();
	}
	
	@Override
	public void destroyItem(View container, int position, Object object) {
	}
}
