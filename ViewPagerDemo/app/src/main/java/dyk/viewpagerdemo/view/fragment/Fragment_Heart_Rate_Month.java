package dyk.viewpagerdemo.view.fragment;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import dyk.viewpagerdemo.R;

/**
 * Created by dengyangkang on 2017/5/5.
 */

public class Fragment_Heart_Rate_Month extends Fragment {
    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,  Bundle savedInstanceState) {
        View view = View.inflate(getActivity(), R.layout.fragment_heart_rate_month, null);
//        TextView tv= (TextView) view.findViewById(R.id.textView);
//        tv.setText("UFC");
        return view;
    }
}
