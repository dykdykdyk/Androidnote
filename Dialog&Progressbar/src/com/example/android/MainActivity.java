package com.example.android;

import java.lang.reflect.Field;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;

public class MainActivity extends Activity {
<<<<<<< HEAD
	
=======
>>>>>>> 6fdc13b58191d282e183506a07f9f18322f5af8a
    Button button;
    ListView li;	
    ProgressBar pbar;
    TextView tv;
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		button=(Button)findViewById(R.id.button);
		button.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				AlertDialog.Builder scanbuilder =new  AlertDialog.Builder(MainActivity.this);
				View view =getLayoutInflater().inflate(R.layout.device_list, null);
				scanbuilder.setTitle("扫描设备");
				scanbuilder.setView(view);
				
				li=(ListView)view.findViewById(R.id.istview);
				pbar=(ProgressBar)view.findViewById(R.id.pbar);
				tv=(TextView)view.findViewById(R.id.tv);
				pbar.setVisibility(View.VISIBLE);
				scanbuilder.setPositiveButton("重试", new DialogInterface.OnClickListener() {
					
					@Override
					public void onClick(DialogInterface dialog, int which) {
<<<<<<< HEAD
						try {
							Field field = dialog.getClass().getSuperclass()
									.getDeclaredField("mShowing");
							field.setAccessible(true);
							field.set(dialog, false);// true表示要关闭
						} catch (Exception e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
=======
						// TODO Auto-generated method stub
>>>>>>> 6fdc13b58191d282e183506a07f9f18322f5af8a
						
					}
				});
				scanbuilder.setNegativeButton("取消", new DialogInterface.OnClickListener() {
					
					@Override
					public void onClick(DialogInterface dialog, int which) {
<<<<<<< HEAD
						try {
							Field field = dialog.getClass().getSuperclass()
									.getDeclaredField("mShowing");
							field.setAccessible(true);
							field.set(dialog, true);// true表示要关闭
=======
						Field field;
						try {
							field = dialog.getClass().getSuperclass()
									.getDeclaredField("mShowing");
							field.setAccessible(true);
							field.set(dialog, false);// true表示要关闭
>>>>>>> 6fdc13b58191d282e183506a07f9f18322f5af8a
						} catch (Exception e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
<<<<<<< HEAD
=======

						
>>>>>>> 6fdc13b58191d282e183506a07f9f18322f5af8a
					}
				});
				scanbuilder.create();
				scanbuilder.show();
			}
		});
	}
}
