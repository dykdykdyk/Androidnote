package dyk.serializabledemo;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;

public class SecondActivity extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        test2();
    }
    public void test(){
        Person person = (Person) getIntent().getSerializableExtra("person_data");
        Log.i("TAG","name="+person.getName()+",age="+person.getAge());
    }
    public void test2(){
        Student person = (Student) getIntent().getParcelableExtra("person_data");
        Log.i("TAG2","name="+person.getName()+",age="+person.getAge());
    }

}
