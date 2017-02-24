package com.us.ble.listener;
/**
 * 实时类数据回调接口
 * @author Administrator
 *
 */
public interface RealtimeDataListener {
	/**
	 * 实时步数
	 * @param address
	 * @param step  步数
	 * @param distance 距离 /m
	 * @param calory 卡路里 /cal 
	 */
	void onRealtimeSports(String address,int step,int distance, int calory);
	/**
	 * 实时心率
	 * @param address
	 * @param heart 心率  /分钟
	 */
	void onRealtimeHearts(String address,int heart);
	/**
	 * 实时体温
	 * @param address
	 * @param temperature
	 */
	void onRealtimeTemperature(String address,float temperature);
	/**
	 * 实时气压
	 * @param address
	 * @param atmospheric 气压  /Kpa
	 * @param altitude 海拔   /m
	 * @param ambientTemperature 环境温度 °（度）
	 */
	void onRealtimePressure(String address,float atmospheric, float altitude, float ambientTemperature );
	/**
	 * 返回最近一天的睡眠实际
	 * @param address
	 * @param startTime 开始睡眠时间点数组[year,month,day,hour,minute]
	 * @param stopTime  结束睡眠时间点数组[year,month,day,hour,minute]
	 * @param span   总睡眠时间[hour,minute]  
	 */
	void onRecentSleep(String address,int[] startTime ,int[] stopTime, int[] span);
    /**
     * 	
     * @param address
     * @param number 基站编号
     * @param action 基站动作编号
     */
	void onRealLocationAction(String address,int number,int action);
}
