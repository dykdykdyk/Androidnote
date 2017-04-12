package dyk.serializabledemo;

import android.app.Activity;
import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;

public class MainActivity extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
//        test();
        test2();
    }
    public void test(){
        Person person =new Person();
        person.setAge(20);
        person.setName("nanyin");
        Intent intent =new Intent(this,SecondActivity.class);
        intent.putExtra("person_data",person);
        startActivity(intent);
    }
    public void test2(){
        Student person =new Student();
        person.setAge(20);
        person.setName("nanyin");
        Intent intent =new Intent(this,SecondActivity.class);
        intent.putExtra("person_data",person);
        startActivity(intent);
    }
}
