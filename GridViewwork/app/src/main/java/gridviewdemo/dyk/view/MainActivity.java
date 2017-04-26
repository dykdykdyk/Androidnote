package gridviewdemo.dyk.view;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.GridView;
import android.widget.SimpleAdapter;
import android.widget.TextView;

import java.util.ArrayList;
import java.util.HashMap;

import gridviewdemo.dyk.gridviewdemo.R;

public class MainActivity extends Activity {
    private TextView tv;
    //定义图标数组
    private int[] imageRes ={
            R.mipmap.ic_template_feature,
            R.mipmap.ic_dfu_feature,
            R.mipmap.ic_uart_feature
    };
    //定义图表下方的名称数组
    private String[] name ={
            "设置向导",
            "空中升级",
            "专家模式"
    };
    private GridView  mgirdview ;
    private int length;
    private SimpleAdapter saImageItems ;
    ArrayList<HashMap<String,Object>> lstImageItem =new ArrayList<HashMap<String,Object>>();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        initview();
    }
    //初始化
     public void initview(){
         length =imageRes.length;
         mgirdview =(GridView)findViewById(R.id.gridview);
         for(int i=0;i<length;i++){
             HashMap<String,Object>  map =new HashMap<String,Object>();
             map.put("ItemImage",imageRes[i]);//添加图像资源的id
             map.put("ItemText",name[i]);
             lstImageItem.add(map);
         }
       //生成适配器的ImageIteem 与动态数组的元素相对应
         saImageItems  =new SimpleAdapter(this,
                  lstImageItem,//数据来源
                  R.layout.item, //item的xml定义实现
                  //动态数组与ImageItem对应的子项
                  new String[]{"ItemImage","ItemText"},
                  //ImageItem的xml文件里面的一个ImageView,两个TextView ID
                  new int[]{R.id.img_shoukuan,R.id.txt_shoukuan});
          //添加并且显示
         mgirdview.setAdapter(saImageItems);
         mgirdview.setOnItemClickListener(new AdapterView.OnItemClickListener() {
             @Override
             public void onItemClick(AdapterView<?> adapterView, View view, int position, long id) {
                 switch(position){
                     //设置向导
                     case    0:
                         startActivity(new Intent(MainActivity.this,Wizardactivity.class));
                         break;
                     //空中升级
                     case    1:
                         startActivity(new Intent(MainActivity.this,DFUActivity.class));
                         break;
                     //专家模式
                     case    2:
                         startActivity(new Intent(MainActivity.this,UARTactivity.class));
                         break;
                 }
             }
         });
     }
}
