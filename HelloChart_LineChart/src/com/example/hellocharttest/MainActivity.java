package com.example.hellocharttest;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

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
import android.os.Message;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;


public class MainActivity extends Activity {
	 List<Line> lines;
	 Axis axisX;
	 Axis axisY;
	 Viewport v;
	private LineChartView lineChart;
	private Button startbutton,stopbutyon;
	Timer disConnectOutTimer;
	String[] date = {""};//X轴的标注
	int[] score= {};//图表的数据
	private List<PointValue> mPointValues = new ArrayList<PointValue>();
	private List<AxisValue> mAxisXValues = new ArrayList<AxisValue>();
	 Line line ;
	 LineChartData data2;
	  int i=0;
	MyHandler mHandler ;
	  
	boolean isSend = true;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        getdata();
        lineChart = (LineChartView)findViewById(R.id.line_chart);
   	 	getAxisXLables();//获取x轴的标注
   	 	getAxisPoints();//获取坐标点
        initLineChart();//初始化
        startbutton=(Button) findViewById(R.id.startdata);
        stopbutyon=(Button) findViewById(R.id.stopdata);
        mHandler = new MyHandler();
        stopbutyon.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
			    Message message=new Message();  
                message.what=2;  
                mHandler.sendMessage(message);  
			}
		});
      
        startbutton.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				new Thread(new Runnable() {
					
					@Override
					public void run() {
						while (isSend) {
							try {
								Message message=new Message();  
	    	                    message.what=1;  
	    	                    mHandler.sendMessage(message);  
								Thread.sleep(1000);
							} catch (InterruptedException e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
							}
						}
						
					}
				}).start();
				
			}
		});
    }
    public void getdata(){
    	Data data =new Data();
    	data.adddata();
    	for(int i =0;i<100;i++){
    		System.out.println(" i: "+data.arr.get(i));
    	}
    }
    class MyHandler extends Handler  
    {  
        @Override  
        public void handleMessage(Message msg) {  
            // TODO Auto-generated method stub  
            super.handleMessage(msg);  
            switch (msg.what) {
			case 1:
				System.out.println("更新");  
				 mPointValues.add(new PointValue(i+2, i));
					mAxisXValues.add(new AxisValue(i).setLabel(String.valueOf(i)));
					System.out.println("开始添加数据");
					i++;
					lines.add(line);
					data2.setLines(lines);
					lineChart.setLineChartData(data2);
				break;
			case 2:
				System.out.println("停止");  
				isSend = false;
				break;
			}
        }  
    }  
    
    
    @Override
    protected void onDestroy() {
    	 if (mHandler != null) {
    		   mHandler = null;
    		}
    	super.onDestroy();
    }
    /**
     * 初始化LineChart的一些设置
     */
    private void initLineChart(){
        line = new Line(mPointValues).setColor(Color.parseColor("#D6D6D9"));  //折线的颜色
	    lines = new ArrayList<Line>();    
	    line.setShape(ValueShape.CIRCLE);//折线图上每个数据点的形状  这里是圆形 （有三种 ：ValueShape.SQUARE  ValueShape.CIRCLE  ValueShape.SQUARE）
	    line.setCubic(false);//曲线是否平滑
//	    line.setStrokeWidth(3);//线条的粗细，默认是3
		line.setFilled(false);//是否填充曲线的面积
		line.setHasLabels(true);//曲线的数据坐标是否加上备注
//		line.setHasLabelsOnlyForSelected(true);//点击数据坐标提示数据（设置了这个line.setHasLabels(true);就无效）
		line.setHasLines(true);//是否用直线显示。如果为false 则没有曲线只有点显示	
		line.setHasPoints(true);//是否显示圆点 如果为false 则没有原点只有点显示	
	    lines.add(line);  
	    data2 = new LineChartData();  
	    data2.setLines(lines);  
	      
	    //坐标轴  
	    axisX = new Axis(); //X轴  
	    axisX.setHasTiltedLabels(false);  //X轴下面坐标轴字体是斜的显示还是直的，true是斜的显示 
//	    axisX.setTextColor(Color.WHITE);  //设置字体颜色
	    axisX.setTextColor(Color.parseColor("#D6D6D9"));//灰色
	    
	    axisX.setName("未来几天的天气");  //表格名称
	    axisX.setTextSize(11);//设置字体大小
	    axisX.setMaxLabelChars(7); //最多几个X轴坐标，意思就是你的缩放让X轴上数据的个数7<=x<=mAxisValues.length
	    axisX.setValues(mAxisXValues);  //填充X轴的坐标名称
	    data2.setAxisXBottom(axisX); //x 轴在底部     
//	    data.setAxisXTop(axisX);  //x 轴在顶部
	    axisX.setHasLines(true); //x 轴分割线
	    axisY = new Axis();  //Y轴  
	    axisY.setName("南叔");//y轴标注
	    axisY.setTextSize(11);//设置字体大小
	    data2.setAxisYLeft(axisY);  //Y轴设置在左边
	    lineChart.setInteractive(true); 
	    lineChart.setZoomType(ZoomType.HORIZONTAL);  //缩放类型，水平
	    lineChart.setMaxZoom((float) 3);//缩放比例
	    lineChart.setLineChartData(data2);  
	    lineChart.setVisibility(View.VISIBLE);
	    v = new Viewport(lineChart.getMaximumViewport()); 
		  v.left = 0; 
		  v.right= 7; 
		  lineChart.setCurrentViewport(v);
    }
    /**
     * X 轴的显示
     */
    private void getAxisXLables(){
        for (int i = 0; i < date.length; i++) {    
        	mAxisXValues.add(new AxisValue(i).setLabel(date[i]));    
        }    	
    }
    /**
     * 图表的每个点的显示
     */
    private void getAxisPoints(){
        for (int i = 0; i < score.length; i++) {    
        	mPointValues.add(new PointValue(i, score[i]));      
        }    	
    }
}
