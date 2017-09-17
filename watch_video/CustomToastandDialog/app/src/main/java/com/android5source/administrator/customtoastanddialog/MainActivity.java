package com.android5source.administrator.customtoastanddialog;

import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.DialogInterface;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {
    AlertDialog dl;
    ProgressDialog p;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        createDialog();
        createDialog2();
        p =new ProgressDialog(this);
        ((Button) findViewById(R.id.bt)).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
//                Toast t =new Toast(MainActivity.this);
//                ImageView imageView =new ImageView(MainActivity.this);
//                imageView.setImageResource(R.mipmap.ic_launcher);
//                t.setView(imageView);
//                t.setDuration(1000);
//                t.show();

                Toast t = new Toast(MainActivity.this);
                View view = LayoutInflater.from(MainActivity.this).inflate(R.layout.custom_view,null);
                t.setView(view);
                t.setDuration(1000);
                t.setGravity(Gravity.CENTER_HORIZONTAL | Gravity.BOTTOM,0,0);
                t.show();
            }
        });

        ((Button) findViewById(R.id.bt2)).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                dl.show();
            }
        });
        ((Button) findViewById(R.id.bt3)).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                createDialog3();
            }
        });
        //自定义对话框
        ((Button) findViewById(R.id.bt4)).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                createDialog4();
            }
        });
    }
    private void createDialog4(){//自定义对话框
      View view= LayoutInflater.from(this).inflate(R.layout.custom,null);
        final EditText textView =(EditText) view.findViewById(R.id.EDView);
        new AlertDialog.Builder(this)
                .setTitle("自定义")
                .setMessage("自定义对话框")
                .setView(view)
                .setPositiveButton("确定", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        Toast.makeText(MainActivity.this,""+textView.getText().toString(),Toast.LENGTH_SHORT).show();
                    }
                })
                .show();
    }

    private void createDialog(){
        final String[] items ={"AAA","BBB","CCC","DDD"};
        dl =new AlertDialog.Builder(MainActivity.this)
                .setIcon(R.mipmap.ic_launcher)
                .setTitle("多选对话框")
                .setMultiChoiceItems(items,new boolean[]{false,true,false,false},new DialogInterface.OnMultiChoiceClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which, boolean isChecked) {
                        Log.i("TEST",which+","+isChecked);
                    }
                })
                .setPositiveButton("确定", null)
                .create();
    }

    private void createDialog2(){
        final String[] items ={"AAA","BBB","CCC","DDD"};
        dl =new AlertDialog.Builder(MainActivity.this)
                .setIcon(R.mipmap.ic_launcher)
                .setTitle("单选对话框")
                .setSingleChoiceItems(items, 2, new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        Log.i("TEST",which+",");
                    }
                })
                .setPositiveButton("确定", null)
                .create();
    }

    //创建一个进度条
    private void createDialog3(){
        p.setIcon(R.mipmap.ic_launcher);
        p.setTitle("进度条");
        p.setMessage("正在下载app");
        p.setProgressStyle(ProgressDialog.STYLE_HORIZONTAL);
        p.show();
        new Thread( ){
            @Override
            public void run() {
                for (int i = 0; i <=100 ; i++) {
                    Message me =new Message();
                    me.arg1=i;
                    me.what=1;
                 mhander.sendMessage(me);
                    try {
                        Thread.sleep(500);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
                mhander.sendEmptyMessage(2);
            }
        }.start();
    }
    Handler mhander =new Handler(){
        @Override
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            switch(msg.what){
                case 1:
                    p.setProgress( msg.arg1);
                    break;
                case 2:
                    p.dismiss();
                    break;
            }
        }
    };
}
