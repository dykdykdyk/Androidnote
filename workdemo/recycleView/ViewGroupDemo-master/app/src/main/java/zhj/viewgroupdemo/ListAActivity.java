package zhj.viewgroupdemo;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

public class ListAActivity extends AppCompatActivity {


    private RecyclerView recycle;
    private Button btnAdd;

    private ListAAdapter adapter;
    private ArrayList<String >  datas;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_list_a);
        initView();
        initData();
        btnAdd.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                SimpleDateFormat s =new SimpleDateFormat("mm--dd hh:mm");
                Date d =new Date();
                datas.add(0,s.format(d)+",86");
                adapter.notifyDataSetChanged();
            }
        });
    }

    private void initData() {
//        datas.add("2017-6-10");
//        datas.add("2017-6-15");
//        datas.add("2017-6-16");
        adapter.notifyDataSetChanged();

    }

    private void initView() {

        datas = new ArrayList<>();

        recycle = (RecyclerView) findViewById(R.id.recycle);
        btnAdd = (Button) findViewById(R.id.btnAdd);

        // 设置布局管理器
        // 支持 单列线性排列，支持GridView模式，瀑布流模式
        // 1.线性布局
        LinearLayoutManager layoutManager =
                new LinearLayoutManager(this,   // 上下文
                        LinearLayout.VERTICAL,  //垂直布局,
                        false);


        recycle.setLayoutManager(layoutManager);
        // 设置 RecyclerView的Adapter
        // 注意一定在设置了布局管理器之后调用
        adapter = new ListAAdapter(datas,this);
        recycle.setAdapter(adapter);


    }
}
