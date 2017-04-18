package com.us.ble.listener;

import java.util.ArrayList;

/**
 * 其他数据回调接口
 * 例如设置是否成功信息
 * @author Administrator
 *
 */
public interface OtherDataListener {
	/**
	 * 返回设置支持的功能特性，1代表支持，0代表无这个功能
	 * @param oxygen
	 * @param blood
	 * @param temperature
	 * @param heart
	 * @param sleep
	 * @param step
	 */
	void onFunction(String address,int oxygen,int blood,int temperature,int heart,int sleep,int step);
	/**
	 * 返回设备闹钟列表，每一个数组代表一个闹钟的信息，共有三个闹钟
	 * 信息格式：{year,month,day,hour,minute,id,重复日，开关}
	 * 重复日：由底bit位到高bit位，分别代表从周一到周日的重复设置。
	 *         Bit位为1是表示重复，为0时表示步重复。
	 *         所有的bit位都为0时，表示只当天有效
	 *         例如：127 = 0x01111111 表示周一到周日重复
	 *         例如：7 = 0x00000111 表示周一，周二，周三重复
	 *         
	 * 开关：1代表开 0代表关闭
	 * @param alarm
	 */
	void onAlarmList(String address,ArrayList<int[]> alarm);
	
	/**
	 * 登录结果回调
	 * @param success
	 */
	void onLogin(String address,boolean success);
	/**
	 * 绑定结果回调
	 * @param success
	 */
	void onbound(String address,boolean success); 
	/**
	 * 删除绑定结果回调
	 * @param success
	 */
	void onDelbound(String address,boolean success); 
	
	/**
	 * 跌倒信息
	 * 1代表重度跌倒 0代表轻度跌倒
	 * @param degree
	 */
	void onFall(String address,int degree);
	/**
	 * 发送图片或者图片文字结果回调
	 * @param address  mac地址
	 * @param cmd      指令
	 * @param progress  1代表结束 
	 * @param group  组编号
	 */
	void onSendImageAndFontsResult(String address,int cmd,int progress,int group);
}
