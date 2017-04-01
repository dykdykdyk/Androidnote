package gridviewdemo.dyk.view;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import gridviewdemo.dyk.adapter.ListViewAdapter;
import gridviewdemo.dyk.adapter.MyAdapter;
import gridviewdemo.dyk.application.BleDevice;
import gridviewdemo.dyk.gridviewdemo.R;
import gridviewdemo.dyk.interfaces.DeviceMessageListener;
import gridviewdemo.dyk.interfaces.InterfaceScanner;
import gridviewdemo.dyk.manager.Scanner;

/**
 * Created by Administrator on 2017/3/31.
 */

public class FragTwo extends Fragment{
    @Nullable
    Button next,back,scan;
    ListView listview,lv;
    private Scanner scanner;
    private ArrayList<BleDevice> mBLEList;//存放扫描到的设备信息的集合
    private ArrayList<String> mBLEListlist;//存放扫描到的设备信息的集合
    View mview;
    ProgressBar pbar;
    TextView tv;
    private String dAddress; // 操作当前的设备mac地址
    LayoutInflater minflater;
    ListViewAdapter mydater;
    private BleDevice dBleDevice; // 当前正在操作的设备
    private boolean scaning = false; // 是否正在扫描
    Map<String, Integer> rssiMap =new LinkedHashMap<String, Integer>();
    FragOne.titleSelectInterface  mSelectInterface;
    //打印信息的listview 适配
    MyAdapter mydaterlist;
    @Override
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
//        return super.onCreateView(inflater, container, savedInstanceState);
        View view =inflater.inflate(R.layout.fragtwo,container,false);
        listview= (ListView) view.findViewById(R.id.list);
        next = (Button) view.findViewById(R.id.nextbutton);
        back   = (Button) view.findViewById(R.id.backbutton);
        scan  = (Button) view.findViewById(R.id.scan);
        scan.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                scanDialog.show();;
                scanLeDevice();
            }
        });
        next.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                mSelectInterface.onTitleSelect("2next");
            }
        });
        back.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                mSelectInterface.onTitleSelect("2back");
            }
        });
        mview =view;
        minflater =inflater;
        init();
        initScanDialog();
        mBLEListlist =new ArrayList<>();
        mydaterlist = new MyAdapter(getActivity(), mBLEListlist);
        listview.setAdapter(mydaterlist);
        return view;
    }
    private AlertDialog scanDialog;
    private void initScanDialog(){
        AlertDialog.Builder scanbuilder = new AlertDialog.Builder(getActivity());
        mview =minflater.inflate(R.layout.device_list, null);
        scanbuilder.setTitle("扫描设备");
        mBLEList = new ArrayList<>();
        lv=(ListView)mview.findViewById(R.id.istview);
        pbar=(ProgressBar)mview.findViewById(R.id.pbar);
        tv=(TextView)mview.findViewById(R.id.tv);
        pbar.setVisibility(View.VISIBLE);
        mydater = new ListViewAdapter(getActivity(), mBLEList,rssiMap);
        lv.setAdapter(mydater);
        scanbuilder.setView(mview);
        scanbuilder.setPositiveButton("重试",
                new DialogInterface.OnClickListener() {

                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        try {
                            Field field = dialog.getClass().getSuperclass().getDeclaredField("mShowing");
                            field.setAccessible(true);
                            field.set(dialog, false);// true表示要关闭
                        } catch (Exception e) {
                            // TODO Auto-generated catch block
                            e.printStackTrace();
                        }
                        //点击后处理的方法
                        tv.setVisibility(View.GONE);
                        scanLeDevice();
                        pbar.setVisibility(View.VISIBLE);
                        // TODO Auto-generated method stub

                    }
                });
        scanbuilder.setNegativeButton("取消", new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which) {
                stopScan();
                try {
                    Field  field = dialog.getClass().getSuperclass()
                            .getDeclaredField("mShowing");
                    field.setAccessible(true);
                    field.set(dialog, true);// true表示要关闭

                } catch (Exception e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }
                stopScan();
                scanDialog.dismiss();
                scanDialog.cancel();
            }
        });
        scanDialog = scanbuilder.create();
        lv.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int position, long id) {
                stopScan();
                try {// 下面三句控制弹框的关闭
                    Field field = scanDialog.getClass().getSuperclass()
                            .getDeclaredField("mShowing");
                    field.setAccessible(true);
                    field.set(scanDialog, true);// true表示要关闭
                } catch (Exception e) {
                    e.printStackTrace();
                }
                dBleDevice = mBLEList.get(position);
                dAddress =dBleDevice.getAddress();
                addDevice(dBleDevice);
                scanDialog.dismiss();
                scanDialog.cancel();
            }
        });
    }
    @Override
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        try {
            mSelectInterface = (FragOne.titleSelectInterface) activity;
        } catch (Exception e) {
            throw new ClassCastException(activity.toString() + "must implement OnArticleSelectedListener");
        }
    }
    /***
     * 添加设备，每连接一个设备就把设备添加到集合里面，方便管理
     */
    private void addDevice(final BleDevice device){
        final String address =device.getAddress();
        connect(device); // 不要同时连几个蓝牙设备，要等连接成功后再连接下一个
    }
    /**
     * 连接设备
     * */
    protected void connect(BleDevice mBleDev) {
        if(scaning)
            stopScan();//先判断是否正在扫描
        mBleDev.connect();
        mBLEListlist.add("开始连接:"+mBleDev.getAddress());
        mBleDev.setDeviceMessageListener(new DeviceMessageListener() {
            @Override
            public void onSendResult(String address, int cmd, byte[] data) {
                Log.i("收到数据:", "address  "+ address);
                mBLEListlist.add(address);
            }
            @Override
            public void onSendHistory(String address, int cmd, List<byte[]> historyData) {

            }
        });
        mydaterlist.notifyDataSetChanged();
    }
    /**
     * 停止扫描
     */
    private void stopScan(){
        scaning =false;
        scanner.stopScan();
    }
    private void scanLeDevice(){
        if(mBLEList !=null){
            mBLEList.clear();
        }
        if(scaning)
            stopScan();
        scanner.startScan(8); //扫描7秒
    }
    private void init() {
        //初始化扫描的监听
        scanner = new Scanner(getActivity());
        scanner.setScanner(new InterfaceScanner() {
            @Override
            public void onScanResult(final int result, final BleDevice bleDevice, final int rssi, final byte[] scanRecod) {
                getActivity().runOnUiThread(new Runnable() {
                    @Override
                    public void run() {
                        if (result == 0) {
                            pbar.setVisibility(View.VISIBLE);
                            scaning = true;
                            System.out.println("找到了device:"
                                    + bleDevice.getName() + " Rssi : "
                                    + rssi + "" + "Address : "
                                    + bleDevice.getAddress());
                            if (!mBLEList.contains(bleDevice)) {
                                mBLEList.add(bleDevice);
                            }
                            if (!rssiMap.containsKey(rssi)) {
                                rssiMap.put(bleDevice.getAddress(), rssi);
                            }
                            lv.setVisibility(View.VISIBLE);
                            mydater.notifyDataSetChanged();
                        } else if (result == 1) {
                            // 扫描结束
                            scaning = false;
                            if (mBLEList.size() <= 0) {
                                tv.setText("找不到设备");
                                tv.setVisibility(View.VISIBLE);
                            } else {
                                tv.setVisibility(View.GONE);
                            }
                            pbar.setVisibility(View.GONE);
                        }
                    }
                });
            }
        });
    }
}
