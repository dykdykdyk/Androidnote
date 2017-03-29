package com.ble.re.data;

import java.util.ArrayList;

public class SportsDate {
	public ArrayList<SportDate> sportDate;
	/**设备返回运动数据结果给手机*/
	public static class SportDate{
		public int realtime;
		public int year;
		public int month;
		public int day;
		public int Mode;
		public int stepCount ;
		public int activeTime;
		
		
	}

}
