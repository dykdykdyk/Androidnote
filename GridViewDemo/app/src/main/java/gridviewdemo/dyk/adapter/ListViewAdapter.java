package gridviewdemo.dyk.adapter;

import android.content.Context;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;

import java.util.List;
import java.util.Map;

import gridviewdemo.dyk.application.BleDevice;
import gridviewdemo.dyk.gridviewdemo.R;
import gridviewdemo.dyk.utils.Utils;

/**
 * Created by Administrator on 2017/3/28.
 */

public class ListViewAdapter extends BaseAdapter{
    LayoutInflater la;
    List<BleDevice> device_list;
    Map<String, Integer> rssiMap;
    Context cx;
    public ListViewAdapter(Context c,  List< BleDevice> list, Map<String, Integer> rssi){
        Log.i("","xxxxxxxxxxxxxxxxx");
        device_list =list;
        rssiMap =rssi;
        cx=c;
        la=LayoutInflater.from(c);
    }
    @Override
    public int getCount() {
        return device_list.size();
    }

    @Override
    public Object getItem(int position) {
        return device_list.get(position);
    }

    @Override
    public long getItemId(int position) {
        return position;
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
       View view;
        ViewHolder holder;
        // 判断convertView的状态，来达到复用效果
         if(null == convertView){
             //如果convertView为空，则表示第一次显示该条目，需要创建一个view
             view =la.inflate(R.layout.listview_text,null);
             //新建一个viewholder对象
             holder = new ViewHolder();
             //将findviewbyID的结果赋值给holder对应的成员变量
             holder.tvHolder=(TextView)view.findViewById(R.id.devicet_tv);
             // 将holder与view进行绑定
             view.setTag(holder);
         }else{
             //否则表示可以复用convertView
             view =convertView;
             holder =(ViewHolder)view.getTag();
         }
        // 直接操作holder中的成员变量即可，不需要每次都findViewById
        holder.tvHolder.setText(Utils.Stringname(device_list.get(position).getName())+"@"+
                device_list.get(position).getAddress()+" rssi:"+rssiMap.get(device_list.get(position).getAddress()));
//        holder.tvHolder.setText(device_list.get(position)+"@"
//                );
//        TextView  devicet_tv =(TextView)view.findViewById(R.id.devicet_tv);
//        devicet_tv.setText(device_list.get(position).getName()+"  @"+device_list.get(position).getAddress());
        return view;
    }
    private static class ViewHolder {
        private TextView tvHolder;
    }
}
