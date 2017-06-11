package com.lee.circleseekbar;

import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.provider.ContactsContract;
import android.telephony.PhoneNumberUtils;
import android.telephony.TelephonyManager;
import android.util.Log;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;

/**
 * Created by dengyangkang on 2017/6/10.
 */

public class PhoneStateReceiver extends BroadcastReceiver {

    private static final String TAG = "PhoneStatReceiver";
    public final static int INCOMMING_CALL_POST_TIME = 1000; // 呼入后时间
    public final static int MISSING_CALL_POST_TIME = 10000; // 未接来电时间
    // private static MyPhoneStateListener phoneListener = new
    // MyPhoneStateListener();

    private boolean incomingFlag = false;

    private String incoming_number = null;
    private String displayName = null;
    private HashMap<String, ArrayList<String>> contacts = new HashMap<String, ArrayList<String>>();
    @Override
    public void onReceive(Context context, Intent intent) {
        // 如果是拨打电话
        if (intent.getAction().equals(Intent.ACTION_NEW_OUTGOING_CALL)) {
            incomingFlag = false;
            String phoneNumber = intent
                    .getStringExtra(Intent.EXTRA_PHONE_NUMBER);
            Log.i(TAG, "call OUT:" + phoneNumber);
        } else {
            // 如果是来电
            TelephonyManager tm = (TelephonyManager) context
                    .getSystemService(Service.TELEPHONY_SERVICE);

            switch (tm.getCallState()) {
                case TelephonyManager.CALL_STATE_RINGING:
                    incomingFlag = true;// 标识当前是来电
                    incoming_number = intent.getStringExtra("incoming_number");
                    displayName = getPeopleFromContacts(incoming_number);
                    if (displayName.equals("")) {
                        displayName = incoming_number;
                    }
                    Log.i(TAG,"监听到来电displayName:"+displayName+",未接来电"+incoming_number+"");
                    break;
                case TelephonyManager.CALL_STATE_OFFHOOK://接听
                    Log.i(TAG,"挂断");
                break;

                case TelephonyManager.CALL_STATE_IDLE://手机空闲(挂断)
                        Log.i(TAG, "手机空闲 :");
//                        Log.i(TAG,"监听到来电displayName:"+displayName+",未接来电"+incoming_number+"");
                    break;
            }
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