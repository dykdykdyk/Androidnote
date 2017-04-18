package com.us.ble.listener;

import java.util.ArrayList;

/**
 * 历史类数据回调接口
 * @author Administrator
 *
 */
public interface HistoryDataListener {
	/**
	 * 历史步数和简单历史睡眠数据回调函数
	 * @param address
	 * @param times  时间戳数组
	 * @param data   步数和睡眠数据数组, 4～4095计步（1：浅睡，2：深睡）
	 */
	void onHistorySprots(String address, ArrayList<Long> times, ArrayList<Integer> data);
//	/**
//	 * 简单睡眠回调函数
//	 * @param address
//	 * @param times 时间戳数组
//	 * @param data  睡眠状态数组 睡眠状态有两种 1为浅睡 ， 2为深睡，0为活动
//	 */
//	void onHistorySleep(String address, ArrayList<Long> times, ArrayList<Integer> data);
	/**
	 * 详细睡眠状态回调函数
	 * @param address
	 * @param times 时间戳数组
	 * @param data 0：清醒状态
     *              1：浅睡状态，前一个状态为清醒状态
     *              2：深睡状态，前一个状态为浅睡1状态
     *              3：浅睡状态，前一个状态为深睡状态
     *              4：未佩戴状态，下一个状态只能为清醒状态。
	 */
	void onHistoryDetailedSleep(String address, ArrayList<Long> times, ArrayList<Integer> data);
	
	/**
	 * 历史心率回调
	 * @param address
	 * @param times 时间戳数组
	 * @param data  步数数组
	 */
	void onHistoryHeart(String address, ArrayList<Long> times, ArrayList<Integer> data);
	
	/**
	 * 历史体温回调
	 * @param address
	 * @param times 时间戳数组
	 * @param data  体温数组
	 */
	void onHistoryTemperature(String address, ArrayList<Long> times, ArrayList<Float> data);
	/**
	 * 历史药剂 
	 * @param address 
	 * @param times 时间戳数组
	 * @param data  药剂数组[Uinit，Dosage，Type，实际剂量]
	 *               实际剂量 = (Unit + 1)*250*Dosage
	 */
	void onHistoryTourniquet(String address, ArrayList<Long> times,ArrayList<Integer []>data );
	/**
	 * 基站位置动作
	 * @param address
	 * @param times  时间戳
	 * @param Integer [] =  {计时, 基站编号, 动作编号}
	 */
	void onHistoryLocationAction(String address, ArrayList<Long> times,ArrayList<Integer []>data);
}
