package dyk.jsondemo;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;

import com.google.gson.Gson;

import org.json.JSONException;
import org.json.JSONObject;

public class MainActivity extends AppCompatActivity {
    public final String TAG= "MainActivity";
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
//        stringtoJsonsingle();
//        stringtoJsonobject();
        jsonobject();
         JSONObject a =  getJson("nanyin");
        Log.i(TAG,""+a );
    }
    public void jsonobject(){
        Student stu =new Student();
        stu.setName("南叔");
        stu.setAge(19);
        stu.setSex(true);
        Gson gson  = new Gson();
        String jsonobject  =gson.toJson(stu);
        Log.i(TAG,jsonobject);
        JSONObject jsonObject = null;
        try {
            jsonObject = new JSONObject(jsonobject);
            String name =jsonObject.getString("name");
            int age=Integer.parseInt(jsonObject.getString("age"));
            boolean sex =Boolean.parseBoolean(jsonObject.getString("sex"));
            Log.i(TAG,"name: "+name+",age: "+age+",sex: "+sex);
        } catch (JSONException e) {
            e.printStackTrace();
        }

    }
    public JSONObject getJson(String tojson){
        JSONObject  jsonObject = new JSONObject();
        try {
            jsonObject.put(tojson, tojson);
        } catch (JSONException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return jsonObject;
    }
    public void stringtoJsonobject(){
        Student stu =new Student();
		stu.setName("南叔");
		stu.setAge(19);
		stu.setSex(true);
		Gson gson  = new Gson();
		String jsonobject  =gson.toJson(stu);
		Log.i(TAG,jsonobject);//{"age":19,"name":"南叔","sex":true}
        //将json转换为java基本数据
        Student stu2 =gson.fromJson(jsonobject,Student.class);
        Log.i(TAG,"Gson解析对象stu2:"+stu.getName()+",age="+stu.getAge()+",sex="+stu.getSex());//Gson解析对象stu2:南叔,age=19,sex=true
    }
    public void stringtoJsonsingle(){
        String name ="nanyin";
        int age =20;
        Gson gson = new Gson();
        String jsonname =gson.toJson(name);
        String jsonage =gson.toJson(age);
//        Log.i(TAG,"name:"+name);
//        Log.i(TAG,"jsonname:"+jsonname);
//        Log.i(TAG,"jsonage:"+jsonage);
        String jsontostring = gson.fromJson(jsonname,String.class);
        int jsontoage =gson.fromJson(jsonage,Integer.class);
        Log.i(TAG,"jsontostring: "+jsontostring+" ,jsontoage:"+jsontoage);
    }
}
