package gridviewdemo.dyk.view;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import gridviewdemo.dyk.gridviewdemo.R;

/**
 * Created by dengyangkang on 2017/3/31.
 */

public class FragSeven extends Fragment {
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
//        return super.onCreateView(inflater, container, savedInstanceState);
        return inflater.inflate(R.layout.fragseven,container,false);
    }
}
