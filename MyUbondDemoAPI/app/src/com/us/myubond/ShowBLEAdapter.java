package com.us.myubond;

import java.util.List;

import com.us.ble.central.BLEDevice;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;

public class ShowBLEAdapter extends BaseAdapter {

	
	private List<BLEDevice> mData;
	private Context mContext;
	private LayoutInflater mInflater;
	
	public ShowBLEAdapter(Context context, List<BLEDevice> data) {
		mData = data;
		mContext = context;
		mInflater = LayoutInflater.from(mContext);
	}
	
	@Override
	public int getCount() {
		return mData.size();
	}

	@Override
	public Object getItem(int position) {
		return mData.get(position);
	}

	@Override
	public long getItemId(int position) {
		// TODO Auto-generated method stub
		return position;
	}

	@Override
	public View getView(int position, View convertView, ViewGroup parent) {
		View view = convertView;
//		Peripheral peripheral = mData.get(position);
		BLEDevice device = mData.get(position);
		if(view == null) {
			view = mInflater.inflate(R.layout.item_ble_list, null);
			TextView textView = (TextView) view.findViewById(R.id.item_name);
			ViewHolder viewHolder = new ViewHolder();
			viewHolder.mBLENameView = textView;
			textView.setText(device.getName() + "@" + device.getAddress());
			view.setTag(viewHolder);
		} else {
			ViewHolder viewHolder = (ViewHolder) view.getTag();
			viewHolder.mBLENameView.setText(device.getName() + "@" + device.getAddress());
		}
		return view;
	}
	
	static class ViewHolder {
		TextView mBLENameView;
	}

	
}
