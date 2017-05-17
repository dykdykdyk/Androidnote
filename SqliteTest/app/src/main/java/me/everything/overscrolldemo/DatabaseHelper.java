package me.everything.overscrolldemo;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.widget.Toast;

/**
 * Created by Dengyangkang on 2017/4/4.
 * SQLite数据库的使用
 * SQLiteOpenHelper是SQLiteDatabase的一个帮助类，用来管理数据库的创建和版本的更新。
 * 一般是建立一个类继承它，并实现它的onCreate和onUpgrade方法.
 */

public class DatabaseHelper extends SQLiteOpenHelper{
    public static String CREATE_BOOK ="create table Book ("+
            "id integer primary key autoincrement, "
            +"author text, "
            +"price real, "
            +"pages integer, "
            +"name text) ";
    public static final String  CREATE_CATEGORY ="create table Category ("+
            "id integer primary key autoincrement, "
            +"category_name text, "
            +"category_code integer)";
    private Context mContext;
    public DatabaseHelper(Context context, String name, SQLiteDatabase.CursorFactory factory, int version) {
        super(context, name, factory, version);
        mContext =context;
    }
    //创建数据库
    @Override
    public void onCreate(SQLiteDatabase db) {
        db.execSQL(CREATE_BOOK);
        db.execSQL(CREATE_CATEGORY);
        Toast.makeText(mContext,"Create success",Toast.LENGTH_SHORT).show();
    }

    //升级数据库
    @Override
    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
//        db.execSQL("drop table if exists Book");
//        db.execSQL("drop table if exists Category");
//        onCreate(db);
        switch(oldVersion){
            case 1:
                db.execSQL(CREATE_CATEGORY);
            case 2:
                db.execSQL("alert table Book add column category_id integer");
        }
    }
}
