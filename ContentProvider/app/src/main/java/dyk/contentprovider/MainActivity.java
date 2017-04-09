package dyk.contentprovider;

import android.app.Activity;
import android.database.Cursor;
import android.provider.ContactsContract;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.ListViewCompat;
import android.widget.ArrayAdapter;
import android.widget.ListView;

import java.util.ArrayList;
import java.util.List;

/*
 *获取系统联系人
 */
public class MainActivity extends Activity {
    ListView contentsView;
    ArrayAdapter<String> adapter;
    List<String> conte =new ArrayList<String>();
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        contentsView =(ListView)findViewById(R.id.listview);
        adapter =new ArrayAdapter<String>(this,android.R.layout.simple_list_item_1,conte);
        contentsView.setAdapter(adapter);
        readContacts();
    }
    private void readContacts(){
        Cursor cursor =null;
        cursor =getContentResolver().query(
                ContactsContract.CommonDataKinds.Phone.CONTENT_URI,
                null,null,null,null);
         while(cursor.moveToNext()){
             //获取联系人姓名
             String displayname =cursor.getString(
                     cursor.getColumnIndex(ContactsContract.CommonDataKinds.Phone.DISPLAY_NAME));
             String number =cursor.getString(
                     cursor.getColumnIndex(ContactsContract.CommonDataKinds.Phone.NUMBER));
             conte.add(displayname+"\n"+number);
         }
    }
}
