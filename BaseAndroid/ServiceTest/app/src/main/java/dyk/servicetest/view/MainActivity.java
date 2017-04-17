package dyk.servicetest.view;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;

import dyk.servicetest.servicepackage.IntentServiewTest;
import dyk.servicetest.R;
import dyk.servicetest.servicepackage.LongRunningService;
import dyk.servicetest.servicepackage.MyService;

public class MainActivity extends Activity implements View.OnClickListener{
    private final String TAG ="MainActivity";
    private Button startService,stopService,bindService,unbindService,
            startIntentService,start_longrunning_service;
    MyService.DownloadBinder mbinder ;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        initview();
    }
    ServiceConnection mServiceConnet =new ServiceConnection() {
        @Override
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            mbinder= (MyService.DownloadBinder) iBinder;
            mbinder.startDowvload();
            mbinder.finishDowvload();
        }

        @Override
        public void onServiceDisconnected(ComponentName componentName) {

        }
    };
    private void initview(){
        startService =(Button)findViewById(R.id.start_Service);
        stopService =(Button)findViewById(R.id.stop_Service);
        bindService =(Button)findViewById(R.id.bind_Service);
        unbindService =(Button)findViewById(R.id.unbind_Service);
        startIntentService =(Button)findViewById(R.id.start_intent_Service);
        start_longrunning_service =(Button)findViewById(R.id.start_longRunning_Service);
        startService.setOnClickListener(this);
        stopService.setOnClickListener(this);
        bindService.setOnClickListener(this);
        unbindService.setOnClickListener(this);
        startIntentService.setOnClickListener(this);
        start_longrunning_service.setOnClickListener(this);
    }
    @Override
    public void onClick(View view) {
        switch (view.getId()){
            case R.id.start_Service://启动
                startService(new Intent(this,MyService.class));
                break;
            case R.id.stop_Service://停止
                stopService(new Intent(this,MyService.class));
                break;
            case R.id.bind_Service://绑定
                Intent intent = new Intent(this,MyService.class);
                bindService(intent,mServiceConnet,BIND_AUTO_CREATE);
                break;
            case R.id.unbind_Service://解除绑定
                unbindService(mServiceConnet);
                break;
            case R.id.start_intent_Service://启动intentservice
                Log.d(TAG,"Thread id id "+Thread.currentThread().getId());
                Intent intentservice =new Intent(this,IntentServiewTest.class);
                startService(intentservice);
                break;
            case R.id.start_longRunning_Service://启动intentservice
                Log.d(TAG,"Thread id id "+Thread.currentThread().getId());
                Intent longrunningservice =new Intent(this,LongRunningService.class);
                startService(longrunningservice);
                break;
        }
    }
}
