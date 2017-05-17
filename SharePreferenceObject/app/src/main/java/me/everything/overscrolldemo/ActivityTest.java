package me.everything.overscrolldemo;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.HorizontalScrollView;
import android.widget.ListView;
import android.widget.ScrollView;
import android.widget.Toast;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;

import me.everything.android.ui.overscroll.HorizontalOverScrollBounceEffectDecorator;
import me.everything.android.ui.overscroll.OverScrollDecoratorHelper;
import me.everything.android.ui.overscroll.adapters.RecyclerViewOverScrollDecorAdapter;

/**
 * Created by Administrator on 2017/05/14.
 */

public class ActivityTest extends Activity {
    Person p;
    Person person;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.recyclerview_overscroll_demo);
        p =new Person("nanshu","23","666");
        ((Button)findViewById(R.id.button1)).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                try {
                    saveSerializableObject(ActivityTest.this,"doubidoubi","nan",p);
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        });
        ((Button)findViewById(R.id.button2)).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                try {
                    try {
                        person=(Person)getSerializableObject(ActivityTest.this,"doubidoubi","nan");
                        Toast.makeText(ActivityTest.this,"person:"+person.getAge()+
                                ","+person.getName()+","+person.getSex(),Toast.LENGTH_SHORT).show();
                    } catch (ClassNotFoundException e) {
                        e.printStackTrace();
                    }
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        });

    }

    /**
     * 保存序列化对象到本地
     *
     * @param context
     * @param fileName SP本地存储路径
     * @param key
     * @param object
     */
    public void saveSerializableObject(Context context, String fileName, String key, Object object) throws IOException {
        SharedPreferences.Editor spEdit = context.getSharedPreferences(fileName, Context.MODE_PRIVATE).edit();
        //先将序列化结果写到byte缓存中，其实就分配一个内存空间
        ByteArrayOutputStream bos = new ByteArrayOutputStream();
        ObjectOutputStream os = new ObjectOutputStream(bos);
        os.writeObject(object);//将对象序列化写入byte缓存
        //将序列化的数据转为16进制保存
        String bytesToHexString = bytesToHexString(bos.toByteArray());
        //保存该16进制数组
        spEdit.putString(key, bytesToHexString);
        spEdit.commit();
    }
    /**
     * desc:将数组转为16进制
     *
     * @param bArray
     * @return
     */
    public String bytesToHexString(byte[] bArray) {
        if (bArray == null) {
            return null;
        }
        if (bArray.length == 0) {
            return "";
        }
        StringBuffer sb = new StringBuffer(bArray.length);
        String sTemp;
        for (int i = 0; i < bArray.length; i++) {
            sTemp = Integer.toHexString(0xFF & bArray[i]);
            if (sTemp.length() < 2)
                sb.append(0);
            sb.append(sTemp.toUpperCase());
        }
        return sb.toString();
    }

    /**
     * 从本地反序列化获取对象
     *
     * @param context
     * @param key
     * @return
     */
    public Object getSerializableObject(Context context, String fileName, String key) throws IOException, ClassNotFoundException {
        SharedPreferences sp = context.getSharedPreferences(fileName, Context.MODE_PRIVATE);
        if (sp.contains(key)) {
            String string = sp.getString(key, "");
            if (TextUtils.isEmpty(string)) {
                return null;
            } else {
                //将16进制的数据转为数组，准备反序列化
                byte[] stringToBytes = StringToBytes(string);
                ByteArrayInputStream bis = new ByteArrayInputStream(stringToBytes);
                ObjectInputStream is = new ObjectInputStream(bis);
                //返回反序列化得到的对象
                Object readObject = is.readObject();
                return readObject;
            }
        }
        return null;
    }

    /**
     * desc:将16进制的数据转为数组
     *
     * @param data
     * @return
     */
    public byte[] StringToBytes(String data) {
        String hexString = data.toUpperCase().trim();
        if (hexString.length() % 2 != 0) {
            return null;
        }
        byte[] retData = new byte[hexString.length() / 2];
        for (int i = 0; i < hexString.length(); i++) {
            int int_ch;  // 两位16进制数转化后的10进制数
            char hex_char1 = hexString.charAt(i); //两位16进制数中的第一位(高位*16)
            int int_ch1;
            if (hex_char1 >= '0' && hex_char1 <= '9')
                int_ch1 = (hex_char1 - 48) * 16;   // 0 的Ascll - 48
            else if (hex_char1 >= 'A' && hex_char1 <= 'F')
                int_ch1 = (hex_char1 - 55) * 16; // A 的Ascll - 65
            else
                return null;
            i++;
            char hex_char2 = hexString.charAt(i); //两位16进制数中的第二位(低位)
            int int_ch2;
            if (hex_char2 >= '0' && hex_char2 <= '9')
                int_ch2 = (hex_char2 - 48); // 0 的Ascll - 48
            else if (hex_char2 >= 'A' && hex_char2 <= 'F')
                int_ch2 = hex_char2 - 55; // A 的Ascll - 65
            else
                return null;
            int_ch = int_ch1 + int_ch2;
            retData[i / 2] = (byte) int_ch;//将转化后的数放入Byte里
        }
        return retData;
    }
}
