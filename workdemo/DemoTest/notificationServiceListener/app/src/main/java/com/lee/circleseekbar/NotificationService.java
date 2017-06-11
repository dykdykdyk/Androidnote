package com.lee.circleseekbar;

import android.annotation.SuppressLint;
import android.app.Notification;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.service.notification.NotificationListenerService;
import android.service.notification.StatusBarNotification;
import android.text.TextUtils;
import android.util.Log;
import android.widget.RemoteViews;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;


@SuppressLint("NewApi")
public class NotificationService extends NotificationListenerService {
	//AndroidANCSService mANCS;
	private String TAG ="NotificationService";
	public static final String SMS = "com.android.mms|com.google.android.talk|com.htc.sense.mms";
	private final static String QQ = "com.tencent.mobileqq";
	private final static String WEIXIN = "com.tencent.mm";
	private final static String posted_action = "AddNotification";
	private final static String remove_action = "RemoveNotification";

	@Override
	public void onNotificationPosted(StatusBarNotification sbn) {
		// TODO Auto-generated method stub
//		if (sbn.getPackageName().equals("com.android.phone") /*&& sbn.getNotification().tickerText != null防止三星的来电通知进入*/) {
//		}else if (sbn.getPackageName().equals("com.google.android.dialer")) {
//			Log.i(TAG,"DYK com.google.来电通知不在这里产生了.dialer");
//			// 来电通知不在这里产生了
//		}else
		if(sbn.getPackageName().equals(QQ)){
			Log.i(TAG,"listener QQ message");
			if(sbn.getNotification().tickerText !=null){
				sendNotifications(posted_action,sbn);
			}
		}else if(sbn.getPackageName().equals(WEIXIN)){
			Log.i(TAG,"listener chat message");
			if(sbn.getNotification().tickerText !=null){
				sendNotifications(posted_action,sbn);
			}
		}
	}
	@Override
	public void onNotificationRemoved(StatusBarNotification sbn) {
		// TODO Auto-generated method stub
//		if (sbn.getPackageName().equals("com.android.phone")) {
////			if(sbn.getNotification().tickerText !=null){
////				sendNotifications(remove_action,sbn);
////			}
	}

	private void sendNotifications(String action, StatusBarNotification sbn){
         System.out.println(action+"......................................");
		 Notification notification = sbn.getNotification();
	        if (notification == null) {
	            return;
	        }
	        Intent intent = new Intent(action);
	    	Bundle data = new Bundle();
	        String title=null;
	        String content=null;
	        // 当 API > 18 时，使用 extras 获取通知的详细信息
	        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.KITKAT) {
	            Bundle extras = notification.extras;
	            if (extras != null) {
	                // 获取通知标题
	                title = extras.getString(Notification.EXTRA_TITLE, "");
//	                System.out.println(Build.VERSION.SDK_INT+", title="+title);
	                // 获取通知内容
	                content = extras.getString(Notification.EXTRA_TEXT, "");
//	                System.out.println(Build.VERSION.SDK_INT+", content="+content);

	            }
	        }
	        if(title==null && "".equals(title)){
	        	return;
	        }
//	        data.putString(ANCSNotification.TITLE, title);
//			data.putString(ANCSNotification.TEXT, content);
//			data.putLong(ANCSNotification.POST_TIME, sbn.getPostTime());
//			data.putString(ANCSNotification.PACKAGE_NAME, sbn.getPackageName());
		Log.i(TAG,"监听到广播数据为title:"+title+",content:"+content+",sbn.getPostTime()"+sbn.getPostTime()
		+",sbn.getPackageName()"+sbn.getPackageName());
			intent.putExtras(data);
			sendBroadcast(intent);
	}
	public List<String> getText(Notification notification) {
        if (null == notification) {
            return null;
        }
        RemoteViews views = notification.bigContentView;
        if (views == null) {
            views = notification.contentView;
        }
        if (views == null) {
            return null;
        }
        // Use reflection to examine the m_actions member of the given RemoteViews object.
        // It's not pretty, but it works.
        List<String> text = new ArrayList<>();
        try {
            Field field = views.getClass().getDeclaredField("mActions");
            field.setAccessible(true);
            @SuppressWarnings("unchecked")
            ArrayList<Parcelable> actions = (ArrayList<Parcelable>) field.get(views);
            // Find the setText() and setTime() reflection actions
            for (Parcelable p : actions) {
                Parcel parcel = Parcel.obtain();
                p.writeToParcel(parcel, 0);
                parcel.setDataPosition(0);
                // The tag tells which type of action it is (2 is ReflectionAction, from the source)
                int tag = parcel.readInt();
                if (tag != 2) continue;
                // View ID
                parcel.readInt();
                String methodName = parcel.readString();
                if (null == methodName) {
                    continue;
                } else if (methodName.equals("setText")) {
                    // Parameter type (10 = Character Sequence)
                    parcel.readInt();
                    // Store the actual string
                    String t = TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel).toString().trim();
                    text.add(t);
                }
                parcel.recycle();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return text;
    }

	@Override
	public void onCreate() {
		// TODO Auto-generated method stub
		super.onCreate();
		System.out.println("NotificationService Created...");
	}
	@Override
	public IBinder onBind(Intent intent) {
	    // a.equals("b");
	    System.out.println("onBind...");
//	    Toast.makeText(this, "onBind", Toast.LENGTH_SHORT).show();
	    return super.onBind(intent);
	}

	@Override
	public void onDestroy() {
		// TODO Auto-generated method stub
		super.onDestroy();
		//unbindService(conn);
		System.out.println("NotificationService Destroy...");
	}
}
