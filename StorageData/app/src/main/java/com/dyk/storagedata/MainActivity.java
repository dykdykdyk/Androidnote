package com.dyk.storagedata;

import android.app.Activity;
import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Environment;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.widget.Toast;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;

/*五大存储数据方式的比较
1 使用SharedPreferences存储数据  ：   适用范围：保存少量的数据，且这些数据的格式非常简单：字符串型、基本类型的值。
    2 文件存储数据
    3 SQLite数据库存储数据
    4 使用ContentProvider存储数据
    5 网络存储数据
 *
 */
public class MainActivity extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    //    storageSharedPreferenced();
//        storageFiles();//文件内部存储
//        storageFiles2();//文件外部存储
        storagesqlite(); //使用数据库方式来存储数据
    }
    public void storageSharedPreferenced(){
        //存入数据
        /**
         *  Context.MODE_PRIVATE: 指定该SharedPreferences数据只能被本应用程序读、写。

         Context.MODE_WORLD_READABLE:  指定该SharedPreferences数据能被其他应用程序读，但不能写。

         Context.MODE_WORLD_WRITEABLE:  指定该SharedPreferences数据能被其他应用程序读，写
         Editor有如下主要重要方法：

         SharedPreferences.Editor clear():清空SharedPreferences里所有数据

         SharedPreferences.Editor putXxx(String key , xxx value): 向SharedPreferences存入指定key对应的数据，其中xxx 可以是boolean,float,int等各种基本类型据

         SharedPreferences.Editor remove(): 删除SharedPreferences中指定key对应的数据项

         boolean commit(): 当Editor编辑完成后，使用该方法提交修改
         */
        String storage ="南叔";
        //步骤2-1：创建一个SharedPreferences.Editor接口对象，lock表示要写入的XML文件名，MODE_WORLD_WRITEABLE写操作
        SharedPreferences.Editor editor =getSharedPreferences("lock",MODE_PRIVATE).edit();
        //步骤2-2：将值放入文件
        editor.putString("code",storage);
        //步骤3：提交
        editor.commit();
        Toast.makeText(getApplicationContext(), "存入值为: "+storage, Toast.LENGTH_LONG).show();

        //步骤1：创建一个SharedPreferences接口对象
        SharedPreferences read =getSharedPreferences("lock",MODE_WORLD_READABLE);
        //步骤2：获取文件中的值
        String value =read.getString("code","");
        Toast.makeText(getApplicationContext(), "获取值为: "+value, Toast.LENGTH_LONG).show();
    }
    public void storageFiles(){//文件存储  内部存储 默认存储位置:/data/data/包名/files/文件名。
        /*
         * ①　调用Context的openFileOutput()函数，填入文件名和操作模式，它会返回一个FileOutputStream对象。

         ②　通过FileOutputStream对象的write()函数写入数据。

         ③　 FileOutputStream对象的close ()函数关闭流。
         */
           String FILENAME ="a.txt";
        String string ="dengyangkang";
        try {
            FileOutputStream fos =openFileOutput(FILENAME, Context.MODE_PRIVATE);
            //FILENAME参数:　用于指定文件名称，不能包含路径分隔符“/” ，如果文件不存在，Android 会自动创建它。
            /*
            Context.MODE_PRIVATE = 0
　　为默认操作模式，代表该文件是私有数据，只能被应用本身访问，在该模式下，写入的内容会覆盖原文件的内容。

Context.MODE_APPEND = 32768
　　该模式会检查文件是否存在，存在就往文件追加内容，否则就创建新文件。　

Context.MODE_WORLD_READABLE = 1
　　表示当前文件可以被其他应用读取。

MODE_WORLD_WRITEABLE
　　表示当前文件可以被其他应用写入。
             */
            fos.write(string.getBytes());
            fos.close();;
        } catch (Exception e) {
            e.printStackTrace();
        }

        //读取私有文件
        String FILENAME2 ="a.txt";
        try {
            FileInputStream inStream =openFileInput(FILENAME2);
            int len =0;
            byte[] buf =new byte[1024];
            StringBuilder sb =new StringBuilder();
            while((len =inStream.read(buf)) !=-1){
                sb.append(new String(buf,0,len));
            }
            inStream.close();
            Toast.makeText(getApplicationContext(), "获取值为: "+sb, Toast.LENGTH_LONG).show();
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
    public void storageFiles2(){//文件存储 外部存储  对于Android6.0的手机 如果编译版本大于23，必须要在运行的时候去申请权限
        // 才会正常存储数据
       /*
       1.添加权限
       　<!-- 在SDCard中创建与删除文件权限 -->
    <uses-permission android:name="android.permission.MOUNT_UNMOUNT_FILESYSTEMS"/>
   <!-- 往SDCard写入数据权限 -->
    <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE"/>
    2.用外部存储时我们需要检测其状态，它可能被连接到计算机、丢失或者只读等。下面代码将说明如何检查状态：
        */
//      String state = Environment.getExternalStorageState();
//        if(Environment.MEDIA_MOUNTED.equals(state)){
//            // 可读可写
//            Toast.makeText(getApplicationContext(), "外部存储卡可读可写", Toast.LENGTH_LONG).show();
//
//        }else if(Environment.MEDIA_MOUNTED_READ_ONLY.equals(state)){
//            //可读
//            Toast.makeText(getApplicationContext(), "外部存储卡只可读", Toast.LENGTH_LONG).show();
//        }else{
//            //不能读也不能写
//            Toast.makeText(getApplicationContext(), "外部存储卡不可读不可写", Toast.LENGTH_LONG).show();
//        }

        if(Environment.getExternalStorageState().equals(Environment.MEDIA_MOUNTED)){//如果外部存储可用
            File sdCardDir =Environment.getExternalStorageDirectory();//获取SDCard目录  "/sdcard"
            File saveFile =new File(sdCardDir,"a.txt");

            //写数据
            try {
                FileOutputStream fos =new FileOutputStream(saveFile);
                fos.write("dengyangkn".getBytes());
                fos.close();
            } catch (Exception e) {
                e.printStackTrace();
            }

            //读数据
            try {
                FileInputStream inStream = new FileInputStream(saveFile);
                int len =0;
                byte[] buf =new byte[1024];
                StringBuilder sb =new StringBuilder();
                while((len =inStream.read(buf)) !=-1){
                    sb.append(new String(buf,0,len));
                }
                inStream.close();
                Toast.makeText(getApplicationContext(), "获取值为: "+sb, Toast.LENGTH_LONG).show();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }else{
            Toast.makeText(getApplicationContext(), ": 外部存储卡不可用", Toast.LENGTH_LONG).show();
        }

    }
    public void storagesqlite(){
        //创建一个数据库
        DatabaseHelper  databaseHelper = new DatabaseHelper(this);
        SQLiteDatabase db = null;
        db = databaseHelper.getReadableDatabase();

//        //添加一行数据
//        ContentValues cv =new ContentValues();//实例化一个ContentValues用来装载待插入的数据
//        cv.put("username","Jack Johnson");//添加用户名
//        cv.put("password","dengyangkang");//添加密码
//        db.insert("user",null,cv);//执行插入操作
//
//        //使用另一种方式实现
//        String sql = "insert into user(username,password) values ('Jack Johnson','iLovePopMuisc');";//插入操作的SQL语句
//        db.execSQL(sql);

        //删除
        String whereClause = "username=?";//删除的条件
        String[] whereArgs = {"Jack Johnson"};//删除的条件参数
        db.delete("user",whereClause,whereArgs);//执行删除


//        //删除
//        String sql = "delete from user where username='Jack Johnson'";//删除操作的SQL语句
//        db.execSQL(sql);//执行删除操作

        //修改
        ContentValues cv = new ContentValues();//实例化ContentValues
        cv.put("password","iHatePopMusic");//添加要更改的字段及内容
        String whereClause2 = "username=?";//修改条件
        String[] whereArgs2 = {"Jack Johnson"};//修改条件的参数
        db.update("user",cv,whereClause2,whereArgs2);//执行修改

        String sql2 = "update [user] set password = 'iHatePopMusic' where username='Jack Johnson'";//修改的SQL语句
        db.execSQL(sql2);//执行修改

        //查询
        Cursor c = db.query("user",null,null,null,null,null,null);//查询并获得游标
//       while(c.moveToNext()){//判断游标是否为空
//            Log.i("TAG"," "+c.getCount()+"  PASS:  ");
//            for(int i=0;i<c.getCount();i++){
////                c.move(i);//移动到指定记录
//                String username = c.getString(c.getColumnIndex("username"));
//                String password = c.getString(c.getColumnIndex("password"));
//                Log.i("TAG"," "+username+"  PASS:  "+password);
//            }
//        }
        while(c.moveToNext()){//判断游标是否为空
            Log.i("TAG"," "+c.getCount()+"  PASS:  ");
                String username = c.getString(c.getColumnIndex("username"));
                String password = c.getString(c.getColumnIndex("password"));
                Log.i("TAG"," "+username+"  PASS:  "+password);
        }
        //查询某张表是否存在
        // cmd.CommandText = "SELECT COUNT(*) FROM sqlite_master where type='table' and name='DBInfo'";

        //查询
//        Cursor cursor = db.rawQuery("select * from user where username=?",new String[]{"Jack Johnson"});
//        if(cursor.moveToFirst()) {
//            String password = c.getString(c.getColumnIndex("password"));
//        }
        c.close();
    }
}
