package com.android5source.administrator.testdemo2;

import android.Manifest;
import android.content.ContentResolver;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.Cursor;
import android.os.Handler;
import android.os.Message;
import android.provider.ContactsContract;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.Switch;
import android.widget.TextView;
import android.widget.Toast;

import com.mylhyl.acp.Acp;
import com.mylhyl.acp.AcpListener;
import com.mylhyl.acp.AcpOptions;

import java.util.HashMap;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

public class MainActivity extends AppCompatActivity implements View.OnClickListener{
    TextView TC;
    Button b;
    SmsStateReceiver smsStateReceiver;
    private HashMap<String, String> contacts = new HashMap<String, String>();
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        TC=(TextView) (findViewById(R.id.tv));
        smsStateReceiver = new SmsStateReceiver();
        registerReceiver(smsStateReceiver, new IntentFilter(UtilTools.SMS_ACTION));
        registerReceiver(smsStateReceiver, new IntentFilter(UtilTools.SMS_ACTION_OPPO));
        smsStateReceiver.setHandler(HandlerUI);
        Acp.getInstance(this).request(new AcpOptions.Builder()
                .setPermissions(Manifest.permission.WRITE_EXTERNAL_STORAGE
                        , Manifest.permission.READ_PHONE_STATE
                        , Manifest.permission.SEND_SMS
                        , Manifest.permission.WRITE_EXTERNAL_STORAGE
                        , Manifest.permission.WRITE_CONTACTS
                        , Manifest.permission.READ_CONTACTS
                        , Manifest.permission.RECEIVE_SMS
                        , Manifest.permission.READ_SMS
                        , Manifest.permission_group.SMS
                        ,Manifest.permission.READ_EXTERNAL_STORAGE)
                        .build(),
                new AcpListener() {
                    @Override
                    public void onGranted() {
                        getAllContacts();
                        smsStateReceiver.setData(contacts);
                    }

                    @Override
                    public void onDenied(List<String> permissions) {
                        makeText(permissions.toString() + "权限拒绝");
                    }
                });
    }
    private Handler HandlerUI = new Handler() {
        @Override
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            LogUtil.i("TAG", "handleMessage：" + "msg.obj" + msg.obj);
            switch (msg.what) {
                case 4://chat
                    TC.append("/r/n");
                    TC.append("收到短信:"+msg.obj);
                    LogUtil.i("TAG", "收到短息消息:" + msg.obj);
                    break;
            }
        }
    };
    private void makeText(String text) {
        Toast.makeText(MainActivity.this, text, Toast.LENGTH_SHORT).show();
    }
    /**
     * 获得所有的联系人 其他帮助信息
     */
    public void getAllContacts() {
//		// 获得所有的联系人
        String str = "";
// 得到contentresolver对象
        ContentResolver cr = this.getContentResolver();
// 取得电话本中开始一项的光标，必须先moveToNext()
        Cursor cursor = cr.query(ContactsContract.Contacts.CONTENT_URI, null,
                null, null, null);
        while (cursor.moveToNext()) {
//取得联系人的名字索引
            int nameIndex = cursor.getColumnIndex(ContactsContract.PhoneLookup.DISPLAY_NAME);
            String contact = cursor.getString(nameIndex);
            str += (contact + ":" + "/n");
//取得联系人的ID索引值
            String contactId = cursor.getString(cursor
                    .getColumnIndex(ContactsContract.Contacts._ID));
            Cursor phone = cr.query(
                    ContactsContract.CommonDataKinds.Phone.CONTENT_URI, null,
                    ContactsContract.CommonDataKinds.Phone.CONTACT_ID + "="
                            + contactId, null, null);

//一个人可能有几个号码
            while (phone.moveToNext()) {
                String strPhoneNumber = phone
                        .getString(phone
                                .getColumnIndex(ContactsContract.CommonDataKinds.Phone.NUMBER));
                str += (strPhoneNumber + "/n");
                contacts.put(contact, strPhoneNumber);
                TC.append("name:"+contact+",号码："+strPhoneNumber);
            }
            phone.close();
        }
        cursor.close();
    }

    @Override
    public void onClick(View v) {
        switch(v.getId()){
            case R.id.tv:

                break;
        }
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        unregisterReceiver(smsStateReceiver);
    }
}
