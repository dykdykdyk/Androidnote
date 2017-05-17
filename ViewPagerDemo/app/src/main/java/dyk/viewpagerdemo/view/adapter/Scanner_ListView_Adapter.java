package dyk.viewpagerdemo.view.adapter;

import android.content.Context;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import java.util.List;
import java.util.Map;

import dyk.viewpagerdemo.R;
import dyk.viewpagerdemo.ble.application.BleDevice;

/**
 * Created by dengyangkang on 2017/5/15.
 */

public class Scanner_ListView_Adapter extends BaseAdapter{
    LayoutInflater la;
    List<BleDevice> device_list;
    Map<String, Integer> rssiMap;
    Context cx;
    int tempLevel;
    public Scanner_ListView_Adapter(Context c, List<BleDevice> list, Map<String, Integer> rssi){
        System.out.println("xxxxxxxxxxxxxx");
        device_list =list;
        cx = c;
        rssiMap =rssi;
        la =  LayoutInflater.from(c);;
    }
    /**
     * How many items are in the data set represented by this Adapter.
     *
     * @return Count of items.
     */
    @Override
    public int getCount() {
        return device_list.size();
    }

    /**
     * Get the data item associated with the specified position in the data set.
     *
     * @param position Position of the item whose data we want within the adapter's
     *                 data set.
     * @return The data at the specified position.
     */
    @Override
    public Object getItem(int position) {
        return device_list.get(position);
    }

    /**
     * Get the row id associated with the specified position in the list.
     *
     * @param position The position of the item within the adapter's data set whose row id we want.
     * @return The id of the item at the specified position.
     */
    @Override
    public long getItemId(int position) {
        return position;
    }

    /**
     * Get a View that displays the data at the specified position in the data set. You can either
     * create a View manually or inflate it from an XML layout file. When the View is inflated, the
     * parent View (GridView, ListView...) will apply default layout parameters unless you use
     * {@link LayoutInflater#inflate(int, ViewGroup, boolean)}
     * to specify a root view and to prevent attachment to the root.
     *
     * @param position    The position of the item within the adapter's data set of the item whose view
     *                    we want.
     * @param convertView The old view to reuse, if possible. Note: You should check that this view
     *                    is non-null and of an appropriate type before using. If it is not possible to convert
     *                    this view to display the correct data, this method can create a new view.
     *                    Heterogeneous lists can specify their number of view types, so that this View is
     *                    always of the right type (see {@link #getViewTypeCount()} and
     *                    {@link #getItemViewType(int)}).
     * @param parent      The parent that this view will eventually be attached to
     * @return A View corresponding to the data at the specified position.
     */
    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
        View view;
         ViewHolder holder;
        // 判断convertView的状态，来达到复用效果
        BleDevice device = device_list.get(position);
        if(null ==convertView){
            //如果convertView为空，则表示第一次显示该条目，需要创建一个view
            view =la.inflate(R.layout.scanner_listview_adapter_item,null);
            //新建一个viewholder对象
            holder =new ViewHolder();
            //将findviewbyID的结果赋值给holder对应的成员变量
            holder.bledevice_name =(TextView)view.findViewById(R.id.bledevice_name);
            holder.bledevice_mac =(TextView)view.findViewById(R.id.bledevice_mac);
            holder.bledevice_rssi =(ImageView)view.findViewById(R.id.rssi_imageview);
            // 将holder与view进行绑定
            view.setTag(holder);
        }else{
            //否则表示可以复用convertView
            view =convertView;
            holder=(ViewHolder)view.getTag();
        }
        // 直接操作holder中的成员变量即可，不需要每次都findViewById
        holder.bledevice_name.setText(device.getName());
        holder.bledevice_mac.setText(device.getAddress());
        Log.i("TAG",rssiMap+"");
            Log.i("TAG",rssiMap.get(device.getAddress())+"");
            tempLevel = (int) rssiMap.get(device_list.get(position).getAddress());
            if(tempLevel<-97){
                holder.bledevice_rssi.setImageResource(R.drawable.iv_rssi_barp);
                holder.bledevice_rssi.setImageLevel(10);
            }else if(tempLevel<-80){
                holder.bledevice_rssi.setImageResource(R.drawable.iv_rssi_barp);
                holder.bledevice_rssi.setImageLevel(28);
            }else if(tempLevel<-55){
                holder.bledevice_rssi.setImageResource(R.drawable.iv_rssi_barp);
                holder.bledevice_rssi.setImageLevel(45);
            } else {
                holder.bledevice_rssi.setImageResource(R.drawable.iv_rssi_barp);
                holder.bledevice_rssi.setImageLevel(100);
            }
        return view;
    }
    private static class ViewHolder {
        private TextView bledevice_name;
        private TextView bledevice_mac;
        private ImageView bledevice_rssi;
    }
}
