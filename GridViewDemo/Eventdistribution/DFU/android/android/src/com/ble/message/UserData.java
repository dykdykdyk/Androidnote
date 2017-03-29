package com.ble.message;

/**
 * @author Administrator 用户信息类
 */
public class UserData {
	/** 0 ：女 ； 1 ：男 */
	private int sex;
	/** 年龄：0-127 */
	private int age;
	/** 身高：0.0 - 256cm */
	private float height;
	/** 体重： 0.01kg-512kg 精准到0.5kg */
	private float weight;

	public UserData() {
		super();
	}

	public UserData(int sex, int age) {
		super();
		this.sex = sex;
		this.age = age;
	}

	public UserData(int sex, int age, float height) {
		super();
		this.sex = sex;
		this.age = age;
		this.height = height;
	}

	public UserData(int sex, int age, float height, float weight) {
		super();
		this.sex = sex;
		this.age = age;
		this.height = height;
		this.weight = weight;
	}

	public int getSex() {
		return sex;
	}

	public void setSex(int sex) {
		this.sex = sex;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public float getHeight() {
		return height;
	}

	public void setHeight(float height) {
		this.height = height;
	}

	public float getWeight() {
		return weight;
	}

	public void setWeight(float weight) {
		this.weight = weight;
	}

}
