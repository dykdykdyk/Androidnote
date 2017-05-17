package me.everything.overscrolldemo;

import android.app.Activity;
import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.util.Log;
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

/**数据库
 * Created by Administrator on 2017/05/14.
 */

public class ActivityTest extends Activity {
    private DatabaseHelper dbHelper;
    SQLiteDatabase db ;
    ContentValues values;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.recyclerview_overscroll_demo);
        dbHelper =new DatabaseHelper(this,"BookStore.db",null,2);//1表示 数据库版本
        db =dbHelper.getWritableDatabase();
        values=new ContentValues();
        ((Button)findViewById(R.id.button1)).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                dbHelper.getWritableDatabase();
            }
        });
        //添加数据
        ((Button)findViewById(R.id.button2)).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
//                values.put("name","The Da Vinci Code");
//                values.put("author","Dan Brown");
//                values.put("pages",454);
//                values.put("price",16.96);
//                db.insert("Book",null,values);//插入第一条数据
//                values.clear();
//                values.put("name","The Lost Symbol");
//                values.put("author","Dan brs");
//                values.put("pages",510);
//                values.put("price",19.96);
//                db.insert("Book",null,values);//插入第二条数据
                //第二种方式
                db.execSQL("insert into Book (name,author,pages,price) values(?,?,?,?)",
                        new String[]{"The Da", "Dan D", "454", "15.96" });
                db.execSQL("insert into Book (name,author,pages,price) values(?,?,?,?)",
                        new String[]{"The Sol", "Dan Y", "510", "19.96" });
            }
        });
        //更新
        ((Button)findViewById(R.id.button3)).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
//                values.put("price",10.99);
//                db.update("Book",values,"name = ?",new String[] {"The Da Vinci Code"});//更新数据，修改价格

                //第二种方式
                db.execSQL("update Book set price = ? where name = ?",
                        new String[]{"10.99", "The Da" });
            }
        });
        //删除
        ((Button)findViewById(R.id.button4)).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
//                db.delete("Book","pages > ?",new String[]{"500"});
                //第二种方式
                db.execSQL("delete from Book where pages > ?",new String[]{"500"});
            }
        });
        //查询
        ((Button)findViewById(R.id.button5)).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                /**
                 * 查看表中所有数据
                 * 1.//表名
                 * 2. ,指定查询的列,
                 * 3.区约束 某一行或者某一列的数据
                 * 4.同上
                 * 5.指定需要去group by的列
                 * 6.对group by之后的数据进行进一步过滤
                 * 7.指定查询结果的排序方式
                  */
//                Cursor cursor =db.query("Book",null,null,null,null,null,null) ;//各个参数的含义
                Cursor cursor =  db.rawQuery("select * from Book",null);
                if(cursor.moveToFirst()){
                    do{
                        //遍历Cursor对象，取出数据并打印
                        String name = cursor.getString(cursor.getColumnIndex("name"));
                        String author = cursor.getString(cursor.getColumnIndex("author"));
                        int pages = cursor.getInt(cursor.getColumnIndex("pages"));
                        double price = cursor.getDouble(cursor.getColumnIndex("price"));
                        Log.i("MainActivity","book name is "+name);
                        Log.i("MainActivity","book author is "+author);
                        Log.i("MainActivity","book pages is "+pages);
                        Log.i("MainActivity","book price is "+price);
                    }while(cursor.moveToNext());
                }
                cursor.close();

                //第二种方式
                db.rawQuery("select * from Book",null);
            }
        });
        //替换数据
        ((Button)findViewById(R.id.button6)).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
//                db.delete("Book","pages > ?",new String[]{"500"});
                //第二种方式
                db.beginTransaction();//开启事务
                try {
                    db.delete("Book",null,null);
                    if(true){
                        throw new NullPointerException();
                    }
                    values.put("name", "The Da Vinci Code");
                    values.put("author", "Dan Brown");
                    values.put("pages", 720);
                    values.put("price", 16.96);
                    db.insert("Book", null, values);//插入第一条数据
                    db.insert("Book",null,values);
                    db.setTransactionSuccessful();//事务已经执行成功
                }catch(Exception e){
                    e.printStackTrace();
                }finally {
                    db.endTransaction();//结束事务
                }
                db.execSQL("delete from Book where pages > ?",new String[]{"500"});
            }
        });
    }
}
