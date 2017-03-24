package com.ble.fragment;

import java.util.ArrayList;
import java.util.List;


import com.ble.re.data.SetData;
import com.ble.re.data.Update;
import com.ionicframework.urfdemo.BLEInfoActivity;
import com.ionicframework.urfdemo.R;
import com.megster.cordova.ble.central.Peripheral;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ListView;
import android.widget.TextView;

public class DeviceListFragment extends Fragment implements Update{
	private  ListView mListView;
	public  List<String> mList;
	public Peripheral mPeriheral;
	public DeviceListFragment mDeviceListFragment;
	public BLEInfoActivity mBleInfoActivity;
	public  MyAdapter adapter;
	String key;
	public DeviceListFragment(Peripheral periheral) {
		this.mPeriheral = periheral;
		mList = new ArrayList<String>();
		mDeviceListFragment = this;
		key = mPeriheral.getAddres();
		mPeriheral.setUpdateDate(this);
	}
	public  Handler mHandler = new Handler() {
		public void handleMessage(android.os.Message msg) {
			switch (msg.what) {
			  case 1:
				SetData mo=(SetData) msg.obj;
				setList(mo.getString());
				break;
			  case 5:
				clearList();
				break;
			}
		};
	};
    public void clearList(){
    	if(mList !=null)
    	mList.clear();
    	adapter.notifyDataSetChanged();
    }
	@Override
	public void onAttach(Activity activity) {
		super.onAttach(activity);
		mBleInfoActivity = (BLEInfoActivity) activity;
		mBleInfoActivity.setHandler(key, mHandler);
	}
	public DeviceListFragment xx(){
		return mDeviceListFragment;
	}
	public  void setList(String st){
			mList.add(st);
			adapter.notifyDataSetChanged();
			mListView.setSelection(mListView.getBottom()); 
	}
	@Override
	public void onActivityCreated(Bundle savedInstanceState) {
		super.onActivityCreated(savedInstanceState);
	}
	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
	}
	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container,
			Bundle savedInstanceState) {
		System.out.println("DeviceListFragment ...  onCreateView");
        View view = inflater.inflate(R.layout.list_fragment, container,false); 
        mListView = (ListView) view.findViewById(R.id.device_list_view);
        adapter = new MyAdapter(getActivity().getApplicationContext());
        mListView.setAdapter(adapter);
		return view;
	}
	class MyAdapter extends BaseAdapter{

        private LayoutInflater mInflater;
		
		public MyAdapter(Context context) {
			mInflater = LayoutInflater.from(context);
		}
		@Override
		public int getCount() {
			// TODO Auto-generated method stub
			return mList.size();
		}
		@Override
		public Object getItem(int position) {
			// TODO Auto-generated method stub
			return mList.get(position);
		}
		@Override
		public long getItemId(int position) {
			// TODO Auto-generated method stub
			return position;
		}
		@Override
		public View getView(int position, View convertView, ViewGroup parent) {
            ViewHolder holder = null;
			if(convertView == null) {
				convertView = mInflater.inflate(R.layout.item_ble_list, null);
				holder = new ViewHolder();
				holder.mNewsTitle = (TextView) convertView.findViewById(R.id.item_name);
				convertView.setTag(holder);
			} else {
				holder = (ViewHolder) convertView.getTag();
			}
			holder.mNewsTitle.setText(mList.get(position)); 
			return convertView;
		}
		class ViewHolder {
			private TextView mNewsTitle;
		}
		
	}
	@Override
	public void sendString(String address, final String s) {
//		if(key.equals(address))
//			if(mBleInfoActivity !=null){
//				mBleInfoActivity.runOnUiThread(new Runnable() {
//					public void run() {
//						setList(s);
//					}
//				   });
//			}
			
	}
	@Override
	public void sendSports(String key, int s) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public void sendHeart(String key, int s) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public void sendTemp(String key, int s) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public void sendPa(String key, float pa, float altitude, float degree) {
		// TODO Auto-generated method stub
		
	}
}
