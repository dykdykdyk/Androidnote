package com.ble.adapter;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.ble.fragment.DeviceFragment;
import com.ionicframework.urfdemo.R;
import com.megster.cordova.ble.central.Peripheral;

import android.content.Context;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.text.SpannableStringBuilder;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

public class PerAdapter extends FragmentPagerAdapter {
	private Context cm;
	Map<String, Peripheral> mPeripherals;
	private List<DeviceFragment> listViews;// content
	private LayoutInflater mInflater;
	private List<String> addressTitle;
	public int size;    
	private FragAdapter mFragAdapter;
	private FragmentManager mFragmentManager;

	public PerAdapter(FragmentManager fm) {
		super(fm);
		this.mFragmentManager = fm;
	}

	public PerAdapter(FragmentManager fm, List<DeviceFragment> mFragments) {
		// this.cm = context;
		super(fm);
		this.mFragmentManager = fm;
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
