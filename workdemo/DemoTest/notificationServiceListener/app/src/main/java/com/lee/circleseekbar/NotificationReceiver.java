package com.lee.circleseekbar;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.os.Bundle;
import android.provider.ContactsContract;
import android.telephony.PhoneNumberUtils;
import android.telephony.SmsMessage;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;

/**
 * Created by dengyangkang on 2017/6/10.
 */

public  class NotificationReceiver extends BroadcastReceiver {
    String SMS_ACTION = "android.provider.Telephony.SMS_RECEIVED";
    private HashMap<String, ArrayList<String>> contacts = new HashMap<String, ArrayList<String>>();
    public static final int SMS_POST_TIME = 100;
    @Override
    public void onReceive(Context context, Intent intent) {
        // TODO Auto-generated method stub
        System.out.println("NotificationReceiver with action"
                + intent.getAction());
        Bundle extras = intent.getExtras();
        if (intent.getAction().equals(SMS_ACTION)) {
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
            System.out.println("监听到短信信息name: "+name+",text:"+ SMSContent.toString() + "name =" + name);
            Bundle data = new Bundle();
//            data.putString(ANCSNotification.TITLE, name);
//            data.putString(ANCSNotification.TEXT, SMSContent.toString());
//            data.putLong(ANCSNotification.POST_TIME, SMS_POST_TIME);
//            data.putString(ANCSNotification.PACKAGE_NAME, "com.android.mms");
//
//            Message msg = mHandler
//                    .obtainMessage(EVENT_NOTIFICATION_RECEIVED);
//            msg.setData(data);
//            msg.arg1 = 1;
//            msg.sendToTarget();
        }
    }

    private String getPeopleFromContacts(String numberNeedToBeMatched) {
        Set<String> displayNames = contacts.keySet();
        for (String displayName : displayNames) {
            ArrayList<String> numbers = contacts.get(displayName);
            for (String number : numbers) {
                if (PhoneNumberUtils.compare(number, numberNeedToBeMatched)) {
                    return displayName;
                }
            }
        }
        return "";
    }
    /**
     * 获得所有的联系人
     */
    public void getAllContacts(Context mContext) {
        // 获得所有的联系人
        Cursor cur = mContext.getContentResolver().query(
                ContactsContract.Contacts.CONTENT_URI,
                null,
                null,
                null,
                ContactsContract.Contacts.DISPLAY_NAME
                        + " COLLATE LOCALIZED ASC");
        // 循环遍历
        if (cur.moveToFirst()) {
            int idColumn = cur.getColumnIndex(ContactsContract.Contacts._ID);

            int displayNameColumn = cur
                    .getColumnIndex(ContactsContract.Contacts.DISPLAY_NAME);

            do {
                // 获得联系人的ID号
                String contactId = cur.getString(idColumn);
                // 获得联系人姓名
                String disPlayName = cur.getString(displayNameColumn);

                // 查看该联系人有多少个电话号码。如果没有这返回值为0
                int phoneCount = cur
                        .getInt(cur
                                .getColumnIndex(ContactsContract.Contacts.HAS_PHONE_NUMBER));
                // Log.i("username", disPlayName);
                ArrayList<String> numbers = new ArrayList<String>();
                if (phoneCount > 0) {
                    // 获得联系人的电话号码
                    Cursor phones = mContext.getContentResolver().query(
                            ContactsContract.CommonDataKinds.Phone.CONTENT_URI,
                            null,
                            ContactsContract.CommonDataKinds.Phone.CONTACT_ID
                                    + " = " + contactId, null, null);
                    if (phones.moveToFirst()) {
                        do {
                            // 遍历所有的电话号码
                            String phoneNumber = phones
                                    .getString(phones
                                            .getColumnIndex(ContactsContract.CommonDataKinds.Phone.NUMBER));
                            String phoneType = phones
                                    .getString(phones
                                            .getColumnIndex(ContactsContract.CommonDataKinds.Phone.TYPE));
							/*
							 * Log.i("phoneNumber", phoneNumber);
							 * Log.i("phoneType", phoneType);
							 */
                            numbers.add(phoneNumber);
                        } while (phones.moveToNext());

                    }
                    if (numbers.size() > 0) {
                        contacts.put(disPlayName, numbers);
                    }
                    phones.close();
                }
            } while (cur.moveToNext());

        }
        cur.close();

    }
}
