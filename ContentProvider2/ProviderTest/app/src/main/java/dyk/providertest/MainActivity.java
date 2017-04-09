package dyk.providertest;

import android.app.Activity;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

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
                values.put("author","Dan Brown");
                values.put("pages",1040);
                values.put("price",22.96);
                Uri newUri = getContentResolver().insert(uri,values);
                newId =newUri.getPathSegments().get(1);
            }
        });
        delete.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {

            }
        });
        query.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
            //查询数据
                Uri uri  =Uri.parse("content://com.example.databasetest.provider/book");
                Cursor cursor =getContentResolver().query(uri,null,null,null,null);
                if(cursor !=null){

                }
            }
        });
        update.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {

            }
        });
    }
}
