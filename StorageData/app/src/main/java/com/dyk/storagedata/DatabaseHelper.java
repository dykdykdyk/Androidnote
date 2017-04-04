package com.dyk.storagedata;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

/**
 * Created by Dengyangkang on 2017/4/4.
 * SQLite数据库的使用
 * SQLiteOpenHelper是SQLiteDatabase的一个帮助类，用来管理数据库的创建和版本的更新。
 * 一般是建立一个类继承它，并实现它的onCreate和onUpgrade方法.
 */

public class DatabaseHelper extends SQLiteOpenHelper{

    private static final String DB_NAME ="mydata.db";//数据库名称
    private static final int version =1;//数据库版本
    public DatabaseHelper(Context context) {
        super(context, DB_NAME, null, version);
    }

    @Override
    public void onCreate(SQLiteDatabase db) {
        String sql ="create table user(username varchar(20) not null,password varchar(60) not null);";
        db.execSQL(sql);
    }

    @Override
    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {

    }
}
