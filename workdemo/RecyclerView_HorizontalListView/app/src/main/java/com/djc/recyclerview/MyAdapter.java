package com.djc.recyclerview;

import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.support.v7.widget.RecyclerView;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import java.util.ArrayList;
import java.util.List;
import java.util.Vector;

/**
 * Created by Administrator on 2017/5/8.
 */

public class MyAdapter extends RecyclerView.Adapter<MyAdapter.ViewHolder> implements View.OnClickListener {
    String TAG = "MyAdapter";
    private Context mContext;
    private List<String> mList;
    private LayoutInflater mInflater;
    private OnItemClickListener mOnItemClickListener = null;
    Vector<Boolean> vector ;
    static final int ITEM_NUM = 5;
    int mHighlight = -1; //高亮的item
    public MyAdapter(Context context, List<String> list){
        mContext = context;
        mInflater = LayoutInflater.from(context);
        mList = new ArrayList<>();
        vector = new Vector<>();
//        mList.add(" ");
//        mList.add(" ");
        for (String a :list) {
            mList.add(a);
        }
//        mList.add(" ");
//        mList.add(" ");
    }

    /*item 点击事件*/
    @Override
    public void onClick(View v) {
        int position = (int) v.getTag(); //点击的item
        int i=0;
//        for (boolean t :vector) {
//            if (i == position){
//                vector.set(position,true); //记录点击的item状态
//            }else {
//                vector.set(i,false);
//            }
//            i++;
//        }
//        notifyItemChanged(position);
//        notifyDataSetChanged();
        if (mOnItemClickListener != null) {
            //注意这里使用getTag方法获取position
            mOnItemClickListener.onItemClick(v,position);
        }
    }

    public static class ViewHolder extends RecyclerView.ViewHolder{
        TextView tvg;
        public ViewHolder(View itemView) {
            super(itemView);
            tvg = (TextView) itemView.findViewById(R.id.item_tv);
        }
    }
    @Override
    public MyAdapter.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        View view = mInflater.inflate(R.layout.item_recyclerview_tv,parent,false);
        view.setOnClickListener(this);
        // 设置Item的宽度
        ViewGroup.LayoutParams lp = view.getLayoutParams();
        lp.width = getItemStdWidth();
        return new ViewHolder(view);
    }
    // 获取标准宽度
    public int getItemStdWidth() {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((Activity)mContext).getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.widthPixels / ITEM_NUM;
    }
    @Override
    public void onBindViewHolder(MyAdapter.ViewHolder holder, int position) {
        holder.tvg.setText(mList.get(position));
        //将position保存在itemView的Tag中，以便点击时进行获取
        holder.itemView.setTag(position);
//        Log.i(TAG, position +"....."+vector.get(position));
        if(isSelected(position)){
            holder.tvg.setTextSize(15);
            holder.tvg.setTextColor(Color.WHITE);
        }else {
            holder.tvg.setTextColor(Color.GRAY);
            holder.tvg.setTextSize(15);
        }

//        if(vector.get(position)){
//            holder.tvg.setTextColor(Color.RED);
//        }else {
//            holder.tvg.setTextColor(Color.BLUE);
//
//        }
    }

    // 高亮中心, 更新前后位置
    public void highlightItem(int position) {
        mHighlight = position;
        int offset = ITEM_NUM / 2;
        for (int i = position - offset; i <= position + offset; ++i){
            notifyItemChanged(i);
        }
    }

    /**
     * 是否选中
     * @param position
     * @return
     */
    public boolean isSelected(int position){
        return mHighlight == position;
    }

    @Override
    public int getItemCount() {
        return mList.size();
    }

    public void addItem(String st){
        mList.add(mList.size()-2,st);
        notifyDataSetChanged();
    }
    public void removeItem(int i){
        mList.remove(i+2);
        notifyDataSetChanged();
    }
    public void setOnItemClickListener(OnItemClickListener listener) {
        this.mOnItemClickListener = listener;
    }
    public static interface OnItemClickListener {
        void onItemClick(View view , int position);
    }

}
