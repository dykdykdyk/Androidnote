package com.ble.message;

public class LongSit {
	/**
	 * 久坐提醒信息类和 步数目标
	 */
	/**使能开关  
	 * 0x00：关闭久坐提醒,其他位域值无效
	 * 0x01：打开久坐提醒
	 * */
	private int turnOn;
	/**阀值：久坐时间内步数低于这个阀值，才提醒  */
	private int minWalk;
	/**久坐时间 以分钟为单位 超过这个时间提醒*/
	private long SitTimeMin;
	/**开始提醒时间*/
	private long startTime;
	/**结束时间*/
	private long stopTime;
	/**重复日周一到周日*/
	private long repeatDay;
	
	
	public LongSit(int turnOn, int minWalk, long sitTimeMin, long startTime,
			long stopTime, long repeatDay) {
		super();
		this.turnOn = turnOn;
		this.minWalk = minWalk;
		SitTimeMin = sitTimeMin;
		this.startTime = startTime;
		this.stopTime = stopTime;
		this.repeatDay = repeatDay;
	}
	
	public int getTurnOn() {
		return turnOn;
	}
	public void setTurnOn(int turnOn) {
		this.turnOn = turnOn;
	}
	public int getMinWalk() {
		return minWalk;
	}
	public void setMinWalk(int minWalk) {
		this.minWalk = minWalk;
	}
	public long getSitTimeMin() {
		return SitTimeMin;
	}
	public void setSitTimeMin(long sitTimeMin) {
		SitTimeMin = sitTimeMin;
	}
	public long getStartTime() {
		return startTime;
	}
	public void setStartTime(long startTime) {
		this.startTime = startTime;
	}
	public long getStopTime() {
		return stopTime;
	}
	public void setStopTime(long stopTime) {
		this.stopTime = stopTime;
	}
	public long getRepeatDay() {
		return repeatDay;
	}
	public void setRepeatDay(long repeatDay) {
		this.repeatDay = repeatDay;
	}
	

}
