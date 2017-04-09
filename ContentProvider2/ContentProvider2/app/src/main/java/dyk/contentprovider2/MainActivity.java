package dyk.contentprovider2;

import android.app.Activity;
import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;

public class MainActivity extends Activity {
    private DatabaseHelper dbHelper;
    Button createDatabase,add,delete,query,update;
    SQLiteDatabase db ;
    ContentValues  values;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
//        dbHelper =new DatabaseHelper(this,"BookStore.db",null,1);
        dbHelper =new DatabaseHelper(this,"BookStore.db",null,2);//当传入2的时候，数据库就会重新更新
        db =dbHelper.getWritableDatabase();
        values=new ContentValues();
        createDatabase =(Button)findViewById(R.id.createDatabase);

        add =(Button)findViewById(R.id.add);
        delete =(Button)findViewById(R.id.delete);
        query =(Button)findViewById(R.id.query);
        update =(Button)findViewById(R.id.update);
        createDatabase.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                dbHelper.getWritableDatabase();
            }
        });
        add.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                values.put("name","The Da Vinci Code");
                values.put("author","Dan Brown");
                values.put("pages",454);
                values.put("price",16.96);
                db.insert("Book",null,values);//插入第一条数据
                values.clear();
                values.put("name","The DYK Code");
                values.put("author","Dan brs");
                values.put("pages",510);
                values.put("price",19.96);
                db.insert("Book",null,values);//插入第二条数据
            }
        });
        delete.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                db.delete("Book","pages > ?",new String[]{"500"});
            }
        });
        //查询数据
        query.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                //查看表中所有数据
                Cursor cursor =db.query("Book",null,null,null,null,null,null) ;
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

            }
        });
        update.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                values.put("price",10.99);
                db.update("Book",values,"name = ?",new String[] {"The Da Vinci Code"});//更新数据，修改价格
            }
        });
    }
}
