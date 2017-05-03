package dyk.viewpagerdemo.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import dyk.viewpagerdemo.R;

/**
 * Created by dengyangkang on 2017/5/3.
 */

public class SlidingListviewAdapter extends BaseAdapter {
    View [] itemViews;
    LayoutInflater la;
    public SlidingListviewAdapter(Context c, String [] itemTitles,int [] itemImageRes){
        itemViews = new View[itemTitles.length];
        la=LayoutInflater.from(c);
        for (int i=0; i<itemViews.length; ++i){
            itemViews[i] = makeItemView(itemTitles[i],
                    itemImageRes[i]);
        }
    }
    public int getCount()	{
        return itemViews.length;
    }
    public View getItem(int position)	{
        return itemViews[position];
    }
    public long getItemId(int position) {
        return position;
    }

    private View makeItemView(String strTitle,  int resId) {

        // 使用View的对象itemView与R.layout.item关联
        View itemView = la.inflate(R.layout.left_main_listview_items, null);

        // 通过findViewById()方法实例R.layout.item内各组件
        TextView title = (TextView)itemView.findViewById(R.id.itemTitle);
        title.setText(strTitle);
        ImageView image = (ImageView)itemView.findViewById(R.id.itemImage);
        image.setImageResource(resId);
        return itemView;
    }

    public View getView(int position, View convertView, ViewGroup parent) {
        if (convertView == null)
            return itemViews[position];
        return convertView;
    }
}
