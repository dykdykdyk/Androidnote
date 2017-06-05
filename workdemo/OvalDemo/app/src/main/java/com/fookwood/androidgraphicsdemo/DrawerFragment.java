package com.fookwood.androidgraphicsdemo;

import android.app.Activity;
import android.app.Fragment;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.SimpleAdapter;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

public class DrawerFragment extends Fragment {


    private ListView mList;

    @Nullable
    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View v = inflater.inflate(R.layout.fragment_navigation_drawer, null);
        mList = (ListView) v.findViewById(R.id.drawer_list);
        mList.setAdapter(new SimpleAdapter(getActivity(), getData(), R.layout.fragment_navigation_drawer_item,
                new String[]{"text"}, new int[]{R.id.drawer_text_view}));
        mList.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                mHost.onDrawerItemselected(position);
            }
        });
        return v;
    }

    private List<Map<String, Object >> getData(){
        List<Map<String, Object> > ans = new LinkedList<>();

        Map<String, Object> item = new HashMap<>();
        item.put("text", "Canvas basic");
        ans.add(item);

        return ans;
    }

    private OnDrawItemSelectedListener mHost;

    @Override
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        mHost = (OnDrawItemSelectedListener)getActivity();
    }

    @Override
    public void onDetach() {
        super.onDetach();
        mHost = null;
    }

    public interface OnDrawItemSelectedListener{
        void onDrawerItemselected(int position);
    }

}
