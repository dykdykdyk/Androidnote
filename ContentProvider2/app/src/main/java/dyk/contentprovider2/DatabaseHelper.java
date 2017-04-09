package dyk.contentprovider2;

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

    public static final String CREATE_BOOK ="create table Book ("
            +"id integer primary key autoincrement, "
            +"author text, "
            +"price real, "
            +"pages integer, "
            +"name text)";
    public static final String CREATE_CATEGORY ="create table CATEGORY("
            +"id integer primary key autoincrement, "
            +"author text, "
            +"pages integer, "
            +"name text)";
    private Context mContext;
    public DatabaseHelper(Context context, String name, SQLiteDatabase.CursorFactory factory,int version) {
        super(context, name, factory, version);
        mContext =context;
    }

    /**
     * 创建数据库的时候会调用
     *
     * @param db
     */
    @Override
    public void onCreate(SQLiteDatabase db) {
//        String sql ="create table user(username varchar(20) not null,password varchar(60) not null);";
        db.execSQL(CREATE_BOOK);
        db.execSQL(CREATE_CATEGORY);
        Toast.makeText(mContext, "Create succeeded", Toast.LENGTH_SHORT).show();
    }

    /**
     * 重新创建数据库
     * @param db
     * @param oldVersion
     * @param newVersion
     */
    @Override
    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        db.execSQL("drop table if exists Book");
        db.execSQL("drop table if exists Category");
        onCreate(db);
    }
}
