package dyk.providertest;

import android.app.Activity;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;

/**
 * 在android 6.0的手机上面调试的时候 可能会有关联的权限 手机报错，注意在调试的时候，打开权限，去调试
 */
public class MainActivity extends Activity {
    private String newId;
    Button add,delete,query,update;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        add =(Button)findViewById(R.id.add_data);
        delete =(Button)findViewById(R.id.delete_data);
        query=(Button)findViewById(R.id.query_data);
        update =(Button)findViewById(R.id.update_data);
        add.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                //添加数据
                Uri uri = Uri.parse("content://com.example.databasetest.provider/book");
                ContentValues values =new ContentValues();
                values.put("name","A Clash of Kings");
                values.put("author","George Martin");
                values.put("pages",1040);
                values.put("price",22.85);
                Uri newUri = getContentResolver().insert(uri,values);
                newId =newUri.getPathSegments().get(1);
            }
        });
        delete.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                //删除数据
                Uri uri =Uri.parse("content://com.example.databasetest.provider/book/"+newId);
                getContentResolver().delete(uri,null,null);
            }
        });
        query.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
            //查询数据
                Uri uri  =Uri.parse("content://com.example.databasetest.provider/book");
                Cursor cursor =getContentResolver().query(uri,null,null,null,null);
                if(cursor !=null){
                    while(cursor.moveToNext()){
                        String name =cursor.getString(cursor.getColumnIndex("name"));
                        String author = cursor.getString(cursor.getColumnIndex("author"));
                        int pages = cursor.getInt(cursor.getColumnIndex("pages"));
                        double price = cursor.getDouble(cursor.getColumnIndex("price"));
                        Log.i("MainActivity","book name is "+name);
                        Log.i("MainActivity","book author is "+author);
                        Log.i("MainActivity","book pages is "+pages);
                        Log.i("MainActivity","book price is "+price);
                    }
                    cursor.close();
                }
            }
        });
        update.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                //更新数据
                Uri uri =Uri.parse("content://com.example.databasetest.provider/book/"+newId);
                ContentValues values =new ContentValues();
                values.put("name","A Storm of Swords");
                values.put("pages",1216);
                values.put("price",24.05);
                getContentResolver().update(uri,values,null,null);
            }
        });
    }
}
