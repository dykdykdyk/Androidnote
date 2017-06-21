package com.android5source.administrator.testdemo2;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.telephony.PhoneNumberUtils;
import android.telephony.SmsMessage;
import android.widget.Toast;

import java.util.HashMap;
import java.util.Set;


/**sms listener
 * Created by dengyangkang on 2017/6/10.
 */

public  class SmsStateReceiver extends BroadcastReceiver {
    private HashMap<String, String> contacts = new HashMap<String,String>();
    Handler mHandler;
    public static final int SMS_POST_TIME = 100;
    public static  String TAG="SmsStateReceiver";
    @Override
    public void onReceive(Context context, Intent intent) {
        // TODO Auto-generated method stub
        System.out.println("NotificationReceiver with action"
                + intent.getAction());
        Bundle extras = intent.getExtras();
        if (intent.getAction().equals(UtilTools.SMS_ACTION)) {
            StringBuffer SMSAddress = new StringBuffer();
            StringBuffer SMSContent = new StringBuffer();
            Bundle bundle = intent.getExtras();
            if (bundle != null) {
                Object[] pdusObjects = (Object[]) bundle.get("pdus");
                SmsMessage[] messages = new SmsMessage[pdusObjects.length];
                for (int i = 0; i < pdusObjects.length; i++) {
                    messages[i] = SmsMessage
                            .createFromPdu((byte[]) pdusObjects[i]);
                }
                for (SmsMessage message : messages) {
                    SMSAddress.append(message
                            .getDisplayOriginatingAddress());
                    SMSContent.append(message.getDisplayMessageBody());
                }
            }
            String name = "";
            if ((name = getPeopleFromContacts(SMSAddress.toString()))
                    .equals("")) {
                name = SMSAddress.toString();
            }

            String message =UtilTools.getMessageString(name,"",UtilTools.PROTOCOL_REQUIREMENT_LENGTH);
            Message mmchat =new Message();
            mmchat.what=4;
            mmchat.obj =SMSContent.toString();
            mHandler.sendMessage(mmchat);
            LogUtil.i(TAG,"监听到短信信息name: "+name+",text:"+ SMSContent.toString());
            Toast.makeText(context,"监听到短信:"+SMSContent.toString(),Toast.LENGTH_LONG).show();
        }
    }
    public void setHandler(Handler handler) {
        mHandler = handler;
    }
    public void setData(HashMap<String, String> contact) {
        contacts = contact;
    }
    private String getPeopleFromContacts(String numberNeedToBeMatched) {
        Set<String> displayNames = contacts.keySet();
        for (String displayName : displayNames) {
            String numbers = contacts.get(displayName);
                if (PhoneNumberUtils.compare(numbers, numberNeedToBeMatched)) {
                    return displayName;
                }
        }
        return "";
    }

}
