package dyk.viewpagerdemo.view.customview;

import android.content.Context;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.LinearLayout;

import java.util.List;

import dyk.viewpagerdemo.R;
import dyk.viewpagerdemo.utils.DateHelper;
import dyk.viewpagerdemo.utils.LogUtil;
import dyk.viewpagerdemo.view.adapter.RecyclerViewAdapter;

/**
 * Created by dengyangkang on 2017/5/10.
 */

public class TimeLine_ScrollView_Week extends LinearLayout {
    /**
     * Constructor that is called when inflating a view from XML. This is called
     * when a view is being constructed from an XML file, supplying attributes
     * that were specified in the XML file. This version uses a default style of
     * 0, so the only attribute values applied are those in the Context's Theme
     * and the given AttributeSet.
     */
    private List<String> titleList;
    private RecyclerView mRecyclerView;
    private RecyclerViewAdapter mAdapter;
    private int mHighLightItem; //默认选中的item

    public TimeLine_ScrollView_Week(Context context, AttributeSet attrs) {
        super(context, attrs);
        LayoutInflater.from(context).inflate(R.layout.timeline_scrollview,this);
        titleList = DateHelper.getTimeOfWeek();
        mHighLightItem =titleList.size()-1;
        mRecyclerView = (RecyclerView) findViewById(R.id.id_recyclerview_horizontal);
        //设置布局管理器
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context);
        linearLayoutManager.setOrientation(LinearLayoutManager.HORIZONTAL);
        mRecyclerView.setLayoutManager(linearLayoutManager);
        //设置适配器
        mAdapter = new RecyclerViewAdapter(context, titleList,3);
        mRecyclerView.setAdapter(mAdapter);
        mAdapter.highlightItem(mHighLightItem-1);
        mRecyclerView.scrollToPosition(mHighLightItem); //滑到居中的位置
        mRecyclerView.addOnScrollListener(new RecyclerView.OnScrollListener(){
            @Override
            public void onScrollStateChanged(RecyclerView recyclerView, int newState) {
                super.onScrollStateChanged(recyclerView, newState);
                LogUtil.i("TimeLine_ScrollView", "onScrollStateChanged....." + newState);
                switch (newState) {
                    case RecyclerView.SCROLL_STATE_IDLE:
                        int high = getMiddlePosition();
                        int d = getScrollPosition();
                        LogUtil.i("TimeLine_ScrollView", "getMiddlePosition()=" + high + ", getScrollPosition()=" + d);
                        mAdapter.highlightItem(high);
                        mHighLightItem = high;
                        mRecyclerView.scrollToPosition(d);
//                        select_tv.setText(titleList.get(d+2));
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
}
