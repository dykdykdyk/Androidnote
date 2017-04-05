package com.dyk.contentprovider;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Dengyangkang on 2017/4/5.
 */

public class PersonService {

    private DBOpenHelper dbOpenHelper;

    public PersonService(Context context) {
        // TODO Auto-generated constructor stub
        dbOpenHelper=new DBOpenHelper(context);
    }
    public void save(Person person){
        SQLiteDatabase db=dbOpenHelper.getWritableDatabase();
        db.execSQL("insert into person(name,age) values(?,?)",new Object[]{person.getName(),person.getAge()});
    }
    public void delete(Integer _id){
        SQLiteDatabase db=dbOpenHelper.getWritableDatabase();
        db.execSQL("delete from person where _id=?",new Object[]{_id});
    }
    public Person find(Integer _id){
        SQLiteDatabase db=dbOpenHelper.getReadableDatabase();
        Cursor cursor=db.rawQuery("select * from person where _id=?", new String[]{_id.toString()});
        if(cursor.moveToFirst()){
            int id = cursor.getInt(cursor.getColumnIndex("_id"));
            String name = cursor.getString(cursor.getColumnIndex("name"));
            String age = cursor.getString(cursor.getColumnIndex("age"));
            Person person = new Person();
            person.set_id(id);
            person.setName(name);
            person.setAge(age);
            return person;
        }
        return null;
    }
    public List<Person> findAll(){
        SQLiteDatabase db=dbOpenHelper.getReadableDatabase();
        List<Person> persons = new ArrayList<Person>();
        Cursor cursor=db.rawQuery("select * from person", null);
        while(cursor.moveToNext()){
            Person person=new Person();
            int id=cursor.getInt(cursor.getColumnIndex("_id"));
            String name=cursor.getString(cursor.getColumnIndex("name"));
            String age=cursor.getString(cursor.getColumnIndex("age"));
            person.set_id(id);
            person.setName(name);
            person.setAge(age);
            persons.add(person);
        }
        return persons;
    }
}
