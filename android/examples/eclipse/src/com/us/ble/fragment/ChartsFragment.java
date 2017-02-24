package com.us.ble.fragment;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.us.Utils.Utils;
import com.us.ble.central.BLEDevice;
import com.us.ble.central.L;
import com.us.ble.listener.BLEDeviceListener;
import com.us.myubond.R;
import com.us.view.listener.UpdateChartsListener;

import lecho.lib.hellocharts.gesture.ZoomType;
import lecho.lib.hellocharts.model.Axis;
import lecho.lib.hellocharts.model.AxisValue;
import lecho.lib.hellocharts.model.Line;
import lecho.lib.hellocharts.model.LineChartData;
import lecho.lib.hellocharts.model.PointValue;
import lecho.lib.hellocharts.model.ValueShape;
import lecho.lib.hellocharts.model.Viewport;
import lecho.lib.hellocharts.view.LineChartView;

import android.app.Activity;
import android.graphics.Color;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.TextView;

public class ChartsFragment extends Fragment {
	private View rootView = null;// 缓存Fragment com.us.ble.view
	BLEDevice mBleDevice;
	private TextView step_tv_view;
	private TextView heart_tv_view;
	private TextView temp_tv_view, at_tv_view, al_tv_view, am_tv_view;
	private LineChartView lineChart;
	DeviceFragment mDeviceFragment;
	private String tag ="ChartsFragment";
	
	String key;
	String[] date = { "00-00", "00-00" };// X轴的标注
	int[] score = { 1 };// 心率
	int[] temp = { 2 };// 体温
	int[] atArrays = { 3 };// 气压
	int[] alArrays = { 4 };// 海拔
	int[] degreeArrays = { 5 };// 温度

	private List<PointValue> mPointValues = new ArrayList<PointValue>();
	private List<PointValue> mTempValues = new ArrayList<PointValue>();
	private List<PointValue> mAtValues = new ArrayList<PointValue>();
	private List<PointValue> mAlValues = new ArrayList<PointValue>();
	private List<PointValue> mDegreeValues = new ArrayList<PointValue>();

	private List<AxisValue> mAxisXValues = new ArrayList<AxisValue>();
	float xx;

	Line line1;
	Line line2;
	Line atLine, alLine, deLine; // 气压，海拔，温度
	List<Line> lines;
	LineChartData data;
	Axis axisX;
	Axis axisY;
	Viewport v;
	public ChartsFragment(BLEDevice bleDevice, DeviceFragment deviceFragment) {
		this.mBleDevice = bleDevice;
		key = bleDevice.getAddress();
		if(deviceFragment !=null)
		mDeviceFragment = deviceFragment;
	}

	@Override
	public void onActivityCreated(Bundle savedInstanceState) {
		super.onActivityCreated(savedInstanceState);
		System.out.println(key + "charts......" + "onActivityCreated");
		if (savedInstanceState == null) {
			getAxisXLables();// 获取x轴的标注
			getAxisPoints();// 获取坐标点
			initLineChart();// 初始化
		}
		mDeviceFragment.setUpdateChartsListener(new UpdateChartsListener() {
			
			@Override
			public void updateRssi(String address, int rssi) {
				System.out.println("ChartsFragment updateRssi:" + rssi);					
			}
			
			@Override
			public void onSendResult(String address, int cmd, byte[] data) {
				updateChartsView(address,cmd,data);				
			}
			
			@Override
			public void onSendHistory(String address, int cmd, List<byte[]> historyData) {
			}
			
			@Override
			public void onDisConnected(String address) {
				System.out.println("ChartsFragment onDisConnected:" + address);		
			}
			
			@Override
			public void onConnected(String address) {
				System.out.println("ChartsFragment onConnected:" + address);		
			}
		});
	}
	private void updateChartsView(String address, final int cmd,final byte[] data){
		new Thread(){
            @Override
            public void run() {
            	switch (cmd) {
				case 0x36: //实时步数
					byte[] a = new byte[5];
					byte[] b = new byte[5];
					byte[] c = new byte[5];
					for (int i = 0; i < 4; i++) {
						a[i] = data[i + 0];
						b[i] = data[i + 4];
						c[i] = data[i + 8];
					}
					final int steps = Utils.bytesToInt2(a, 0); //步数
					int distance = Utils.bytesToInt2(b, 0); //行程
					int calory = Utils.bytesToInt2(c, 0);   //卡路里
					rootView.post(new Runnable() {
					    @Override
					    public void run() {
					    	step_tv_view.setText(""+steps);
					    }
					});
					
					break;
				case 0x38: //气压海拔温度 
					 byte [] at = {data[0],data[1],data[2],data[3]}; 
					 byte [] al = {data[4],data[5],data[6],data[7]};
					 float atmospheric = Utils.bytesToInt2(at, 0)/1000f/100f;
					 float altitude = (Utils.bytesToInt2(al, 0)-500)/100f;
					 final float ambientTemperature = (data[8]&0xFF)-40f;
					 final float atf =  (float)(Math.round(atmospheric*100))/100;
					 final float alf =  (float)(Math.round(altitude*100))/100;
					 String qy = "返回实时气压 ："+atf+"Kpa, 海拔："+alf+"m, 温度："+ambientTemperature+"°";
					 System.out.println(qy);
					 rootView.post(new Runnable() {
						    @Override
						    public void run() {
						    	at_tv_view.setText(""+atf);
						    	al_tv_view.setText(""+alf);
						    	am_tv_view.setText(""+ambientTemperature);
						    	setPa(atf,alf,ambientTemperature);
						    }
						});
					break;
				case 0x47: //心率 
					final int heart = data[0];
					 rootView.post(new Runnable() {
						    @Override
						    public void run() {
						    	heart_tv_view.setText(""+heart);
								setHeart(heart);
						    }
						});
					break;
				case 0x48: //体温 
					final float bb =((data[0]& 0b11111111)<<8| data[1] & 0b11111111)/10;
					 rootView.post(new Runnable() {
						    @Override
						    public void run() {
						    	temp_tv_view.setText(""+bb);
								setTemp(bb);
						    }
						});
				
					break;

				default:
					break;
				}
            }
        }.start();
	}
	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		System.out.println(key + "charts......" + "onCreate");
	}

	public void setLine(Line line) {
		line.setShape(ValueShape.CIRCLE);// 折线图上每个数据点的形状 这里是圆形 （有三种
		// ：ValueShape.SQUARE
		// ValueShape.CIRCLE
		// ValueShape.SQUARE）
		line.setCubic(false);// 曲线是否平滑
		line.setStrokeWidth(2);// 线条的粗细，默认是3
		line.setFilled(false);// 是否填充曲线的面积
		line.setHasLabels(true);// 曲线的数据坐标是否加上备注
		// line.setHasLabelsOnlyForSelected(true);//点击数据坐标提示数据（设置了这个line.setHasLabels(true);就无效）
		line.setHasLines(true);// 是否用直线显示。如果为false 则没有曲线只有点显示
		line.setHasPoints(true);// 是否显示圆点 如果为false 则没有原点只有点显示
	}

	/**
	 * 初始化LineChart的一些设置
	 */
	private void initLineChart() {
		if (line1 == null) {
			line1 = new Line(mPointValues)
					.setColor(Color.parseColor("#FFCD41")); // 折线的颜色,心率
			line2 = new Line(mTempValues).setColor(Color
					.parseColor("#ff33b5e5")); // 折线的颜色，体温
			atLine = new Line(mAtValues).setColor(Color.parseColor("#458B00")); // 折线的颜色，气温
			alLine = new Line(mAlValues).setColor(Color.parseColor("#4B0082")); // 折线的颜色，海拔
			deLine = new Line(mDegreeValues).setColor(Color
					.parseColor("#CD0000")); // 折线的颜色，温度
			lines = new ArrayList<Line>();
			setLine(line1);
			setLine(line2);
			setLine(atLine);
			setLine(alLine);
			setLine(deLine);
			lines.add(line1);
			lines.add(line2);
			lines.add(atLine);
			lines.add(alLine);
			lines.add(deLine);
			data = new LineChartData();
			data.setLines(lines);

			// 坐标轴
			axisX = new Axis(); // X轴
			axisX.setHasTiltedLabels(true); // X轴下面坐标轴字体是斜的显示还是直的，true是斜的显示
			// axisX.setTextColor(Color.WHITE); //设置字体颜色
			axisX.setTextColor(Color.parseColor("#D6D6D9"));// 灰色

			// axisX.setName("未来几天的天气"); //表格名称
			axisX.setTextSize(11);// 设置字体大小
			axisX.setMaxLabelChars(7); // 最多几个X轴坐标，意思就是你的缩放让X轴上数据的个数7<=x<=mAxisValues.length
			axisX.setValues(mAxisXValues); // 填充X轴的坐标名称
			data.setAxisXBottom(axisX); // x 轴在底部
			// data.setAxisXTop(axisX); //x 轴在顶部
			axisX.setHasLines(true); // x 轴分割线

			axisY = new Axis(); // Y轴
			axisY.setName("");// y轴标注
			axisY.setTextSize(11);// 设置字体大小
			data.setAxisYLeft(axisY); // Y轴设置在左边
			// data.setAxisYRight(axisY); //y轴设置在右边
			// 设置行为属性，支持缩放、滑动以及平移
			lineChart.setInteractive(true);
			lineChart.setZoomType(ZoomType.HORIZONTAL); // 缩放类型，水平
			lineChart.setMaxZoom((float) 3);// 缩放比例
			lineChart.setLineChartData(data);
			lineChart.setVisibility(View.VISIBLE);
			/**
			 * 注：下面的7，10只是代表一个数字去类比而已
			 * 尼玛搞的老子好辛苦！！！见（http://forum.xda-developers.com/tools
			 * /programming/library
			 * -hellocharts-charting-library-t2904456/page2）; 下面几句可以设置X轴数据的显示个数
			 * （x轴0-7个数据），当数据点个数小于（29）的时候，缩小到极致hellochart默认的是所有显示。当数据点个数大于（29）
			 * 的时候， 若不设置axisX.setMaxLabelChars(int
			 * count)这句话,则会自动适配X轴所能显示的尽量合适的数据个数。 若设置axisX.setMaxLabelChars(int
			 * count)这句话, 33个数据点测试，若 axisX.setMaxLabelChars(10);里面的10大于v.right=
			 * 7; 里面的7，则 刚开始X轴显示7条数据，然后缩放的时候X轴的个数会保证大于7小于10 若小于v.right=
			 * 7;中的7,反正我感觉是这两句都好像失效了的样子 - -! 并且Y轴是根据数据的大小自动设置Y轴上限 若这儿不设置
			 * v.right= 7; 这句话，则图表刚开始就会尽可能的显示所有数据，交互性太差
			 */
			v = new Viewport(lineChart.getMaximumViewport());
			v.left = 0;
			v.right = 7;
			lineChart.setCurrentViewport(v);
		}
	}

	/**
	 * X 轴的显示
	 */
	private void getAxisXLables() {
		// mAxisXValues.clear();
		for (int i = 0; i < date.length; i++) {
			mAxisXValues.add(new AxisValue(i).setLabel(date[i]));
			xx = i;
		}
	}

	/**
	 * 图表的每个点的显示
	 */
	private void getAxisPoints() {
		// mPointValues.clear();
		// mTempValues.clear();
		for (int i = 0; i < score.length; i++) {
			mPointValues.add(new PointValue(i, score[i]));
			mTempValues.add(new PointValue(i, temp[i]));
			mAtValues.add(new PointValue(i, atArrays[i]));
			mAlValues.add(new PointValue(i, alArrays[i]));
			mDegreeValues.add(new PointValue(i, degreeArrays[i]));

		}
	}

	/**
	 * 添加心率,体温数据,当添加到50个数据的时候清空再重新加载；
	 */
	private SimpleDateFormat format = new SimpleDateFormat("mm-ss");

	private void setHeart(int heart) {
		Date date = new Date();
		String dateStr = format.format(date);
		mPointValues.add(new PointValue(xx, heart));
		mAxisXValues.add(new AxisValue(xx).setLabel(dateStr));
		setPoint();
	}

	private void setTemp(float temp) {
//		float a = temp / 10f;
		Date date = new Date();
		String dateStr = format.format(date);
		mTempValues.add(new PointValue(xx, temp));
		mAxisXValues.add(new AxisValue(xx).setLabel(dateStr));
		setPoint();
	}
    private void setPa(float at,float al,float de){
    	Date date = new Date();
		String dateStr = format.format(date);
		mAtValues.add(new PointValue(xx, at));
		mAlValues.add(new PointValue(xx, al));
		mDegreeValues.add(new PointValue(xx, de));
		mAxisXValues.add(new AxisValue(xx).setLabel(dateStr));
		setPoint();
    }
	private void setPoint() {
		if (xx == 20) {
			xx = 0;
			mPointValues.clear();
			mTempValues.clear();
			mAxisXValues.clear();
			mAtValues.clear();
			mAlValues.clear();
			mDegreeValues.clear();
			// lineChart.setLineChartData(data);
		}
		lineChart.setLineChartData(data);
		xx++;
	}

	@Override
	public void onAttach(Activity activity) {
		super.onAttach(activity);
		System.out.println(key + "charts......" + "onAttach");
//		mBleInfoActivity = (BLEInfoActivity) activity;
	}

	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container,
			Bundle savedInstanceState) {
		// System.out.println(key + "charts......" + "onCreateView");
		if (rootView == null) {
			rootView = inflater.inflate(R.layout.charts_fragment, container,
					false);
			step_tv_view = (TextView) rootView.findViewById(R.id.step_tv_view);
			heart_tv_view = (TextView) rootView
					.findViewById(R.id.heart_tv_view);
			temp_tv_view = (TextView) rootView.findViewById(R.id.temp_tv_view);
			at_tv_view = (TextView) rootView.findViewById(R.id.at_tv_view);
			al_tv_view = (TextView) rootView.findViewById(R.id.al_tv_view);
			am_tv_view = (TextView) rootView.findViewById(R.id.am_tv_view);

			lineChart = (LineChartView) rootView.findViewById(R.id.line_chart);
			lineChart.setOnTouchListener(new OnTouchListener() {
				
				@Override
				public boolean onTouch(View v, MotionEvent event) {
//					final float x = event.getRawX();
//					final float y = event.getRawY();
//					L.i(tag, "x ="+x+",y ="+y);
	                switch (event.getAction()) {  
	                case MotionEvent.ACTION_DOWN:  
//	                	L.i(tag, "ACTION_DOWN2");
	                case MotionEvent.ACTION_MOVE:  
//	                 	L.i(tag, "ACTION_MOVE2");
	                 	((ViewParent) v.getParent()).requestDisallowInterceptTouchEvent(true);
	                    break;  
	                case MotionEvent.ACTION_UP:  
//	                 	L.i(tag, "ACTION_UP2");
	                 	break;  
	                case MotionEvent.ACTION_CANCEL:
//	                 	L.i(tag, "ACTION_CANCEL2");
	                	break;
	                default:  
	                    break;  
	                }  
	                return false;  
				}
			});
		}
		ViewGroup parent = (ViewGroup) rootView.getParent();
		if (parent != null) {
			parent.removeView(rootView);
		}
		return rootView;

	}
}
