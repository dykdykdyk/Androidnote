package com.dyk.contentprovider;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import android.support.annotation.Nullable;
import android.util.Log;

/**
 * Created by Dengyangkang on 2017/4/4.
 *  * 使用contentProvider的时候 数据库不需要关闭
 * 我们在操作该ContentProvider数据的时候，需要根据特定的Uri去操作
 * Uri构造格式如下：content://<AndroidManifest.xml配置的provider的authorities名字>/自定义内容
 */

public class MyProvider extends ContentProvider{
    private static int NOMATCH = -1;
    private static int INSERT = 1;
    private static int QUERY = 2;
    private static int UPDATE = 3;
    private static int DELETE = 4;

    private static UriMatcher matcher = new UriMatcher(NOMATCH);
    static{
        matcher.addURI("com.mxy.MyProvider", "insert", INSERT);
        matcher.addURI("com.mxy.MyProvider", "query", QUERY);
        matcher.addURI("com.mxy.MyProvider", "update", UPDATE);
        matcher.addURI("com.mxy.MyProvider", "delete", DELETE);
    }
    @Override
    public boolean onCreate() {
        Log.i("mxy", "provider  onCreate");
        return false;
    }

    @Nullable
    @Override
    public Cursor query(Uri uri, String[] projection, String selection, String[] selectionArgs, String sortOrder) {
        Log.i("mxy", "provider  query" + matcher.match(uri));
        if(QUERY == matcher.match(uri)){
            DatabaseHelper helper = new DatabaseHelper(getContext());
            SQLiteDatabase db = helper.getReadableDatabase();
            Cursor cursor = db.query("person", projection, selection, selectionArgs, null, null, sortOrder);
            return cursor;
        }else{
            return null;
        }
    }

    @Nullable
    @Override
    public String getType(Uri uri) {
        Log.i("mxy", "provider  getType" + matcher.match(uri));
        return null;
    }

    @Nullable
    @Override
    public Uri insert(Uri uri, ContentValues contentValues) {
        Log.i("mxy", "provider  insert" + matcher.match(uri));
        return null;
    }

    @Override
    public int delete(Uri uri, String s, String[] strings) {
        Log.i("mxy", "provider  delete" + matcher.match(uri));
        return 0;
    }

    @Override
    public int update(Uri uri, ContentValues contentValues, String s, String[] strings) {
        Log.i("mxy", "provider  update" + matcher.match(uri));
        return 0;
    }
}
