package com.ble.message;

public class SetAlarm {
	
	/**
	 * 闹钟信息类 
	 */
	private int year;
	private int month;
	private int day;
	private int hour;
	private int min;
	private int alarmID;
	private int dayFlags;
	
	
	public SetAlarm(int year, int month, int day, int hour, int min,
			int alarmID, int dayFlags) {
		super();
		this.year = year;
		this.month = month;
		this.day = day;
		this.hour = hour;
		this.min = min;
		this.alarmID = alarmID;
		this.dayFlags = dayFlags;
	}
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	public int getMonth() {
		return month;
	}
	public void setMonth(int month) {
		this.month = month;
	}
	public int getDay() {
		return day;
	}
	public void setDay(int day) {
		this.day = day;
	}
	public int getHour() {
		return hour;
	}
	public void setHour(int hour) {
		this.hour = hour;
	}
	public int getMin() {
		return min;
	}
	public void setMin(int min) {
		this.min = min;
	}
	public int getAlarmID() {
		return alarmID;
	}
	public void setAlarmID(int alarmID) {
		this.alarmID = alarmID;
	}
	public int getDayFlags() {
		return dayFlags;
	}
	public void setDayFlags(int dayFlags) {
		this.dayFlags = dayFlags;
	}
	

}
