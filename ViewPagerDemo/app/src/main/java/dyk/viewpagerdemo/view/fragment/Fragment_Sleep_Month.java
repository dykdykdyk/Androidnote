package dyk.viewpagerdemo.view.fragment;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import dyk.viewpagerdemo.R;

/**
 * Created by dengyangkang on 2017/5/5.
 */

public class Fragment_Sleep_Month extends Fragment {
    @Nullable
    @Override
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        View view = View.inflate(getActivity(), R.layout.fragment_sleep_month, null);
//        TextView tv= (TextView) view.findViewById(R.id.textView);
//        tv.setText("UFC");
        return view;
    }
}
