package com.ble.re.data;

public  interface Update {
	   public void sendString(String key,String s); //list列表内容
	   public void sendSports(String key,int s);   //实时步数
	   public void sendHeart(String key,int s);   //实时心率
	   public void sendTemp(String key,int s);   //实时温度
	   public void sendPa(String key,float pa,float altitude,float degree);
}
