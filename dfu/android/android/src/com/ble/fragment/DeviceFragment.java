package com.ble.fragment;


import java.util.ArrayList;
import java.util.List;

import lecho.lib.hellocharts.view.LineChartView;

import com.ble.adapter.FragAdapter;
import com.ionicframework.urfdemo.R;
import com.megster.cordova.ble.central.Peripheral;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.view.ViewPager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

public class DeviceFragment extends Fragment {
	private ViewPager device_viewpager;
	private List<Fragment> fragments;
	private FragAdapter adapter;
	private Peripheral periheral;
	private View rootView = null;// 缓存Fragment view
	public DeviceFragment(Peripheral per) {
		this.periheral = per;
	}
	@Override
	public void onActivityCreated(Bundle savedInstanceState) {
		super.onActivityCreated(savedInstanceState);
	}
	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		fragments=new ArrayList<Fragment>();
		fragments.add(new DeviceListFragment(periheral));
		fragments.add(new ChartsFragment(periheral));
		adapter = new FragAdapter(getChildFragmentManager(), fragments); 
	}

	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container,
			Bundle savedInstanceState) {
		if (rootView == null) {
            rootView = inflater.inflate(R.layout.device_viewpager, container,false); 
            device_viewpager = (ViewPager) rootView.findViewById(R.id.device_viewPager);
            device_viewpager.setOffscreenPageLimit(2);
            device_viewpager.setAdapter(adapter);
        }
		ViewGroup parent = (ViewGroup) rootView.getParent();
        if (parent != null) {
            parent.removeView(rootView);
        }
        return rootView;
		
//        View view = inflater.inflate(R.layout.device_viewpager, container,false); 
//        device_viewpager = (ViewPager) view.findViewById(R.id.device_viewPager);
//        device_viewpager.setOffscreenPageLimit(2);
//        device_viewpager.setAdapter(adapter);
//		return view;
	}

}
