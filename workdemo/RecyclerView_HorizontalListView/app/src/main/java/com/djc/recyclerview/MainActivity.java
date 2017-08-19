package com.djc.recyclerview;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import java.util.ArrayList;
import java.util.List;

public class MainActivity extends Activity {
    private List<String> titleList;
    private RecyclerView mRecyclerView;
    private MyAdapter mAdapter;
    private final static String TAG = "Main";
    private TextView select_tv;

    boolean isLeft = true; //点击左边
    private int mHighLightItem = 201; //默认选中的item

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity);
        initData();
        ((Button)findViewById(R.id.button)).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                startActivity(new Intent(MainActivity.this,MainActivity_c.class));
            }
        });
        select_tv = (TextView) findViewById(R.id.select_tv);
        mRecyclerView = (RecyclerView) findViewById(R.id.id_recyclerview_horizontal);
        //设置布局管理器
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this);
        linearLayoutManager.setOrientation(LinearLayoutManager.HORIZONTAL);
        mRecyclerView.setLayoutManager(linearLayoutManager);
        //设置适配器
        mAdapter = new MyAdapter(this, titleList);
        mRecyclerView.setAdapter(mAdapter);

        mAdapter.highlightItem(mHighLightItem);
        mRecyclerView.scrollToPosition(mHighLightItem+2); //滑到居中的位置
//        select_tv.setText(titleList.get(mHighLightItem+2));
        select_tv.setText(("199"));
        mAdapter.setOnItemClickListener(new MyAdapter.OnItemClickListener() {
            @Override
            public void onItemClick(View view, int position) {

//                Log.i(TAG, "onItemClick....." + position);
//                if (position > 11 || position <2) {
//                    return;
//                }
//                Toast.makeText(MainActivity.this, titleList.get(position-2), Toast.LENGTH_SHORT).show();
//                select_tv.setText(titleList.get(position - 2));
//                mAdapter.highlightItem(position);
//                if (mHighLightItem > position) { //点击左边
//                    isLeft = true;
//                } else if (mHighLightItem < position) { //点击右边
//                    isLeft = false;
//                }
//                mHighLightItem = position;
//                if (isLeft) {
//                    mRecyclerView.scrollToPosition(position - 2);
//                } else {
//                    mRecyclerView.scrollToPosition(position + 2);
//                }

            }
        });

        mRecyclerView.addOnScrollListener(new RecyclerView.OnScrollListener() {
            @Override
            public void onScrollStateChanged(RecyclerView recyclerView, int newState) {
                super.onScrollStateChanged(recyclerView, newState);
                Log.i(TAG, "onScrollStateChanged....." + newState);
                switch (newState) {
                    case RecyclerView.SCROLL_STATE_IDLE:
                        int high = getMiddlePosition();
                        int d = getScrollPosition();
                        Log.i(TAG, "getMiddlePosition()=" + high + ", getScrollPosition()=" + d);
                        mAdapter.highlightItem(high);
                        mHighLightItem = high;
                        mRecyclerView.scrollToPosition(d);
                        select_tv.setText(titleList.get(d+2));
                        break;
                    case RecyclerView.SCROLL_STATE_DRAGGING:
                        break;
                    case RecyclerView.SCROLL_STATE_SETTLING:
                        break;
                }
            }

            @Override
            public void onScrolled(RecyclerView recyclerView, int dx, int dy) {
                super.onScrolled(recyclerView, dx, dy);

            }
        });
    }

    /**
     * 获取中间位置
     *
     * @return 当前值
     */
    private int getMiddlePosition() {
        return getScrollPosition() + (mAdapter.ITEM_NUM / 2);
    }

    /**
     * 获取滑动值, 滑动偏移 / 每个格子宽度
     *
     * @return 当前值
     */
    private int getScrollPosition() {
        int position = (int) ((double) mRecyclerView.computeHorizontalScrollOffset()
                / (double) mAdapter.getItemStdWidth());
        return position;
    }

    private void initData() {
        titleList = new ArrayList<>();
        titleList.add("");
        titleList.add("");
        for (int i = 0; i < 200; i++) {
            titleList.add("title" + i);
        }
        titleList.add("");
        titleList.add("");
    }

    /**
     * 是否滑到底部
     *
     * @param recyclerView
     * @return
     */
    public boolean isSlideToBottom(RecyclerView recyclerView) {
        if (recyclerView == null) return false;
        if (recyclerView.computeHorizontalScrollExtent() + recyclerView.computeHorizontalScrollOffset() >= recyclerView.computeHorizontalScrollRange())
            return true;
        return false;
    }

}
