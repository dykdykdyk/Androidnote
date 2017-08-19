package zhj.viewgroupdemo;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import java.util.ArrayList;


/**
 * Created by Administrator on 2017/8/17.
 */
public class ListAAdapter extends RecyclerView.Adapter<ListAVH>{

    private ArrayList<String> times;
    private Context context;

    public ListAAdapter(ArrayList<String> times, Context context) {
        this.times = times;
        this.context = context;
    }

    @Override
    public ListAVH onCreateViewHolder(ViewGroup parent, int viewType) {
        ListAVH ret ;
        View v = LayoutInflater.from(context).inflate(R.layout.item_lista, parent, false);
        ret = new ListAVH(v);
        return ret;
    }

    @Override
    public void onBindViewHolder(ListAVH holder, int position) {
        holder.time.setText(getValue(times.get(position),0));
        holder.value.setText(getValue(times.get(position),1));
        if (position==0){
            holder.imgLine.setMarkerDrawable(context.getResources().getDrawable(R.mipmap.name));
        }else{
            holder.imgLine.setMarkerDrawable(context.getResources().getDrawable(R.drawable.ic_timeline_default_marker));
        }
    }
    public String getValue(String st,int i){
        if(i==0){
            return st.substring(0,st.indexOf(","));
        }else {
            return st.substring(st.indexOf(",")+1);
        }
    }
    @Override
    public int getItemCount() {
        int ret = 0;
        if (times!=null){
            ret = times.size();
        }
        return ret;
    }
}
