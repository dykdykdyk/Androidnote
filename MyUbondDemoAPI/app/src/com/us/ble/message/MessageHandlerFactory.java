package com.us.ble.message;

import java.util.HashMap;
import java.util.Map;

import com.us.ble.central.BLEDevice;

public class MessageHandlerFactory {

	private Map<Byte, MessageHandler> mMessageHandlers;
	
	public MessageHandlerFactory(BLEDevice peripheral) {
		mMessageHandlers = new HashMap<>();
		mMessageHandlers.put(HealthMessageHandler.TYPE, new HealthMessageHandler(peripheral));
		mMessageHandlers.put(SportsMessageHandler.TYPE, new SportsMessageHandler(peripheral));
		mMessageHandlers.put(SecurityMessageHandler.TYPE, new SecurityMessageHandler(peripheral));
		mMessageHandlers.put(SettingMessageHandler.TYPE, new SettingMessageHandler(peripheral));
		mMessageHandlers.put(PhoneMessageHandler.TYPE,new PhoneMessageHandler(peripheral) );
		mMessageHandlers.put(CheersMessageHandler.TYPE,new CheersMessageHandler(peripheral) );
	}
	public MessageHandler getMessageHandler(byte type) {
		return mMessageHandlers.get(type);
	}
	
	
}
