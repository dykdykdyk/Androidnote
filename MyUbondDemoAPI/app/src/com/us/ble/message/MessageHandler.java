package com.us.ble.message;

import com.us.ble.central.BLEDevice;

public abstract class MessageHandler {

	/**过滤得到命令码*/
	public static final int FITER_TO_STATE = 0x0F;
	
	/**协议版本*/
	public static final byte VERSION = 0x01;
	
	public BLEDevice mBLEDevice;
	
	public static char SID = 0;
	
	public MessageHandler(BLEDevice peripheral) {
		this.mBLEDevice = peripheral;
	}
	
	/**
	 * 通过字节包得到sid
	 * @param data
	 * @return
	 */
	public static int getSidByData(byte[] data) {
    	return data[18] * 16 + data[19];
    }
	
	public static byte getDataHeader(int lenght, byte t) {
		return getDataHeader(VERSION, lenght, t);
	}
	
	public static byte getDataHeader(int lenght) {
		return getDataHeader(lenght, (byte)0);
	}
	
	
	public static byte getDataHeader(byte version, int lenght, byte t) {
		return (byte) ((version << 5) | (lenght << 1) | t); 
	}
	
	/**
	 * 
	 * 处理字节包
	 * @param data 字节包
	 */
	public abstract void handleMessage(byte[] data);
	
	
	/**
	 * 由命令码得到字节包
	 * @param state 命令码
	 * @return 字节包
	 */
//	public final byte[] stateToBytes(int state) {
//		byte result[] = new byte[20];
//		SID++;
//		result[2] = (byte) (SID >> 4);
//		result[3] = (byte) (SID & 0b1111);
//		contentBytes(state, result);
//		return result;
//	}
	
//	protected abstract void contentBytes(int state, byte result[]);
}
