package handler.dyk.handler;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;

import java.text.SimpleDateFormat;
import java.util.Date;

import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;

/*
 *异步消息处理机制
 * Handler
 */
public class MainActivity extends Activity {

    @BindView(R.id.tv)
    TextView tv;
    @BindView(R.id.start)
    Button start;
    @BindView(R.id.stop)
    Button stop;
    @BindView(R.id.activity_main)
    RelativeLayout activityMain;
    MyHandler mHandler ;
    SimpleDateFormat df;
    boolean status =false;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        ButterKnife.bind(this);
        mHandler = new MyHandler();
        df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
        System.out.println(df.format(new Date()));// new Date()为获取当前系统时间
    }
    @OnClick(R.id.start)
    public void test(){
        new Thread(new Runnable() {
            @Override
            public void run() {
                status =true;
                while(status){
                    try {
                        Message message =new Message();
                        message.what =1;
                        mHandler.sendMessage(message);
                        Thread.sleep(500);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
            }
        }).start();;

    }
    @OnClick(R.id.stop)
    public void test2(){
        status =false;
        Message message =new Message();
        message.what=2;
        mHandler.sendMessage(message);
    }
    class MyHandler extends Handler {
        @Override
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            switch (msg.what) {
                case 1:
                    tv.setText(df.format(new Date()));
                    break;
                case 2:
                    tv.setText("暂停。。");
                    break;
            }
        }
    }
}
