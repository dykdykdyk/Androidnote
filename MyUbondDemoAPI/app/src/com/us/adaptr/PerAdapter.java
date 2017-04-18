package com.us.adaptr;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.us.ble.central.BLEDevice;
import com.us.fragment.DeviceFragment;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import android.text.SpannableStringBuilder;
import android.view.View;

public class PerAdapter extends FragmentPagerAdapter {
	Map<String, BLEDevice> mBleDevice;
	private List<DeviceFragment> listViews;// content
	private List<String> addressTitle;
	public int size;    
	private FragmentManager mFragmentManager;
	public PerAdapter(FragmentManager fm) {
		super(fm);
		this.mFragmentManager = fm;
	}
	public PerAdapter(FragmentManager fm,
			List<DeviceFragment> mFragments) {
		super(fm);
		if(mFragments != null){
			this.listViews = mFragments;
		}else{
			this.listViews  = new ArrayList<DeviceFragment>();
		}
		addressTitle = new ArrayList<>();
	}

	public void setListViews( List<DeviceFragment> mFragments,String st) {
		this.listViews = mFragments;
		addressTitle.add(st);
	}
	@Override
	public int getCount() {
		return listViews.size();
	}
	@Override
	public CharSequence getPageTitle(int position) {
		SpannableStringBuilder ssb = new SpannableStringBuilder(" "
				+ addressTitle.get(position));  
		return ssb;
	}

	@Override
	public Fragment getItem(int arg0) {
		return listViews.get(arg0);
	}
	@Override
	public void destroyItem(View container, int position, Object object) {
	}
 
}
