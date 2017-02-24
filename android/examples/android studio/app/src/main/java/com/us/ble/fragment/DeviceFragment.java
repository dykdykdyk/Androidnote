package com.us.ble.fragment;


import java.util.ArrayList;
import java.util.List;

import com.us.ble.adaptr.FragAdapter;
import com.us.ble.central.BLEDevice;
import com.us.ble.central.L;
import com.us.ble.listener.BLEDeviceListener;
import com.us.ble.listener.DeviceMessageListener;
import com.us.ble.listener.ErrorListener;
import com.us.ble.listener.HistoryDataListener;
import com.us.ble.listener.OtherDataListener;
import com.us.ble.listener.RealtimeDataListener;
import com.us.myubond.R;
import com.us.view.listener.UpdateChartsListener;
import com.us.view.listener.UpdateListListener;



import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.v4.app.Fragment;
import android.support.v4.view.ViewPager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;

public class DeviceFragment extends Fragment {
	private ViewPager device_viewpager;
	private List<Fragment> fragments;
	private FragAdapter adapter;
	private BLEDevice bleDevice;
	private View rootView = null;// 缓存Fragment com.us.ble.view
	public DeviceFragment mDeviceFragment;
	
	public UpdateChartsListener mUpdateChartsListener;
	public UpdateListListener mUpdateListListener;
	private final Handler msgHandler = new Handler(){  
        public void handleMessage(Message msg) {  
        	    String text = (String) msg.obj; 
                switch (msg.arg1) {  
                case 1:  
                        Toast.makeText(getActivity(), text, Toast.LENGTH_SHORT).show();  
                        break;  
                default:  
                        break;  
                }  
        }  
    };
	public DeviceFragment(BLEDevice device) {
	   if(device !=null){
		   this.bleDevice = device;
	   }
	   mDeviceFragment = this;
	}
	public void setUpdateChartsListener(UpdateChartsListener updateChartsListener){
		if(updateChartsListener != null)
			mUpdateChartsListener = updateChartsListener;
	}
	public void setUpdateListListener(UpdateListListener updateListListener){
		if(updateListListener != null)
			mUpdateListListener = updateListListener;
	}
	
	@Override
	public void onActivityCreated(Bundle savedInstanceState) {
		super.onActivityCreated(savedInstanceState);
	}
	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		fragments=new ArrayList<Fragment>();
		fragments.add(new DeviceListFragment(bleDevice,mDeviceFragment));
		fragments.add(new ChartsFragment(bleDevice,mDeviceFragment));
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
//            device_viewpager.onTouchEvent()
        }
		ViewGroup parent = (ViewGroup) rootView.getParent();
        if (parent != null) {
            parent.removeView(rootView);
        }
		//下面两个看需要具体用哪一个
		setBLEDeviceListener(); 
		setAnalysisListener();  
        return rootView;
	}
	/**
	 * 设置数据已经解析的接口
	 */
	private void setAnalysisListener(){
		bleDevice.setErrorListener(new ErrorListener() {
			@Override
			public void onError(String address, int cmd ,int errorCode) {
				String text ="应答指令:0x"+ Integer.toHexString(cmd)+ ",发送结果代码："+errorCode +"，"+ bleDevice.RESPONE_STATE[errorCode] ;
				Message msg = msgHandler.obtainMessage();  
				msg.arg1 = 1;  
				msg.obj = text;
				if(errorCode != 0x0c)
				msgHandler.sendMessage(msg);  
			}
		});
		bleDevice.setRealtimeDataListener(new RealtimeDataListener() {
			@Override
			public void onRealtimeTemperature(String address, float temperature) {
				String  temp = "体温: "+temperature+"°";
				if(mUpdateListListener !=null)
					mUpdateListListener.onRealtimeData(address,temp);
			}
			
			@Override
			public void onRealtimeSports(String address, int step, int distance,
					int calory) {
				String  sports = "步数: "+step+" ，距离："+distance +"m , 卡路里："+calory+"cal";
				if(mUpdateListListener !=null)
					mUpdateListListener.onRealtimeData(address,sports);
			}
			
			@Override
			public void onRealtimePressure(String address, float atmospheric,
					float altitude, float ambientTemperature) {
				String  sports = "气压: "+atmospheric+"Kpa，海拔："+altitude +"m , 环境温度："+ambientTemperature+"°";
				if(mUpdateListListener !=null)
					mUpdateListListener.onRealtimeData(address,sports);				
			}
			
			@Override
			public void onRealtimeHearts(String address, int heart) {
				String  sports = "心率: "+heart;
				if(mUpdateListListener !=null)
					mUpdateListListener.onRealtimeData(address,sports);		
				
			}

			@Override
			public void onRecentSleep(String address, int[] startTime,
					int[] stopTime, int[] span) {
				String  data = "最近的一天睡眠情况：\n " +
						"开始睡眠时间："+startTime[0]+"-"+startTime[1]+"-"+startTime[2]+" "+startTime[3]+":"+startTime[4]+
						"\n 结束睡眠时间："+stopTime[0]+"-"+stopTime[1]+"-"+stopTime[2]+" "+stopTime[3]+":"+stopTime[4]+
						"\n 睡眠时间："+ span[0]+":"+span[1];
				if(mUpdateListListener !=null)
					mUpdateListListener.onRealtimeData(address,data);		
			}

			@Override
			public void onRealLocationAction(String address, int number,
					int action) {
				String  data = "当前位置动作：" + number+" 基站编号,"+action+" 动作编号";
				if(mUpdateListListener !=null)
					mUpdateListListener.onRealtimeData(address,data);		
			}
		});
		bleDevice.setHistoryDataListener(new HistoryDataListener() {
			
			@Override
			public void onHistoryTemperature(String address, ArrayList<Long> times,
					ArrayList<Float> data) {
				String  aa = "历史体温数据长度："+data.size() ;
				if(mUpdateListListener !=null)
					mUpdateListListener.onRealtimeData(address,aa);		
			}
			@Override
			public void onHistorySprots(String address, ArrayList<Long> times,
					ArrayList<Integer> data) {
				
				if(mUpdateListListener !=null)
				{	 
					mUpdateListListener.onHistoryData(address, 0x35, times, data);		
				}}
			@Override
			public void onHistoryHeart(String address, ArrayList<Long> times,
					ArrayList<Integer> data) {
				if(mUpdateListListener !=null)
				{	
					mUpdateListListener.onHistoryData(address, 0x42, times, data);						
			}}
			@Override
			public void onHistoryDetailedSleep(String address,
					ArrayList<Long> times, ArrayList<Integer> data) {
				if(mUpdateListListener !=null){
					mUpdateListListener.onHistoryData(address, 0x34, times, data);		
			}}
			@Override
			public void onHistoryTourniquet(String address,
					ArrayList<Long> times, ArrayList<Integer[]> data) {
				if(mUpdateListListener !=null){
					mUpdateListListener.onHistoryDosageData(address, 0x59, times, data);		
			    }
			}
			@Override
			public void onHistoryLocationAction(String address,
					ArrayList<Long> times, ArrayList<Integer[]> data) {
				if(mUpdateListListener !=null){
					mUpdateListListener.onHistoryDosageData(address, 0x3B, times, data);		
			    }
			}
		});
		bleDevice.setOtherDataListener(new OtherDataListener() {
			@Override
			public void onFunction(String address, int oxygen, int blood,
					int temperature, int heart, int sleep, int step) {
				String  sports = "oxygen: "+oxygen+" ,blood："+blood +",temperature："+temperature+",heart:"+heart+",sleep:"+sleep+",step:"+step;
				if(mUpdateListListener !=null)
					mUpdateListListener.onRealtimeData(address,sports);			
			}

			@Override
			public void onAlarmList(String address, ArrayList<int[]> alarm) {
				// TODO Auto-generated method stub
				if(mUpdateListListener !=null)
					mUpdateListListener.onAlarm(address,alarm);	
			}

			@Override
			public void onLogin(String address, boolean success) {
				String st;
				if(success){
					st = "登录成功";
				}else{
					st = "登录失败";
				}
				if(mUpdateListListener !=null)
					mUpdateListListener.onRealtimeData(address,st);	
			}

			@Override
			public void onbound(String address, boolean success) {
				String st;
				if(success){
					st = "绑定成功";
				}else{
					st = "绑定失败";
				}
				if(mUpdateListListener !=null)
					mUpdateListListener.onRealtimeData(address,st);	
			}

			@Override
			public void onFall(String address, int degree) {
				String st = "跌倒程度："+degree;
				if(mUpdateListListener !=null)
					mUpdateListListener.onRealtimeData(address,st);	
			}

			@Override
			public void onDelbound(String address, boolean success) {
				String st;
				if(success){
					st = "删除绑定成功";
				}else{
					st = "删除绑定失败";
				}
				if(mUpdateListListener !=null)
					mUpdateListListener.onRealtimeData(address,st);	
				
			}

			@Override
			public void onSendImageAndFontsResult(String address, int cmd,
					int progress, int group) {
				String  data = "cmd：0x" + Integer.toHexString(cmd)+"， 发送结束："+progress +" ,组编号"+group;
				if(mUpdateListListener !=null)
					mUpdateListListener.onRealtimeData(address,data);	
				
			}
		});
	}
	
	/**
	 * 
	 */
	private void setBLEDeviceListener(){
		bleDevice.setBLEDeviceListener(new BLEDeviceListener() {
			@Override
			public void onDisConnected(String address) {
				if(mUpdateChartsListener !=null)
				mUpdateChartsListener.onDisConnected(address);
				if(mUpdateListListener !=null)
				mUpdateListListener.onDisConnected(address);
			}
			@Override
			public void onConnected(String address) {
				if(mUpdateChartsListener !=null)
				mUpdateChartsListener.onConnected(address);	
				if(mUpdateListListener !=null)
				mUpdateListListener.onConnected(address);				
			}
			@Override
			public void updateRssi(String address, int rssi) {
				if(mUpdateListListener !=null)
					mUpdateListListener.updateRssi(address, rssi);	
				
			}
		});
		/**DeviceMessageListener接口和 HistoryDataListener，RealtimeDataListener ，setOtherDataListener 这三个接口功能重复了
		 * 
		 * DeviceMessageListener该接口返回的是未解析的数据
		 * 
		 * HistoryDataListener，RealtimeDataListener ，setOtherDataListener 这三个接口返回的是已经解析的数据
		 * 
		 *只要用其中一种就可以了，不用两个都用 
		 * */
		bleDevice.setDeviceMessageListener(new DeviceMessageListener() {
			@Override
			public void onSendResult(String address, int cmd, byte[] data) {
 				//接收设备返回未解析的数据信息
				if(mUpdateChartsListener !=null)
					mUpdateChartsListener.onSendResult(address, cmd, data);
			}
			
			@Override
			public void onSendHistory(String address, int cmd, List<byte[]> historyData) {
				//接收设备返回未解析的历史数据信息
//				if(mUpdateListListener !=null)
//					mUpdateListListener.onSendHistory(address, cmd, historyData);
			}
		});
	}
	

}
