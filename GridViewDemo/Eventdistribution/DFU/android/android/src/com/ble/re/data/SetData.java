package com.ble.re.data;

public class SetData {
   private int type ;//类型：1列表，3心率，2步数，4温度
   private int value;   //值
   private int valueTemp;   //值温度
   private int valueStep; //步数
   private String key;
   private String stringValue;
   public void setKey( String k){
	   this.key = k;
   }
   public String getKey(){
	   return this.key;
   }
   public void setString( String s){
	   this.stringValue = s;
   }
   public String getString(){
	   return this.stringValue;
   }
   public void setTyep(int t){
	   this.type= t;
   }
   public void setValue(int v){
	   this.value =v; 	   
   }
   public void setValueStep(int v){
	   this.valueStep =v; 	   
   }
   public void setValueTemp(int v){
	   this.valueTemp =v; 	   
   }
   public int getType(){
	   return this.type;
   }
   public int getValue(){
	   return this.value;
   }
   public int getValueStep(){
	   return this.valueStep;
   }
   public int getValueTemp(){
	   return this.valueTemp;
   }
}
