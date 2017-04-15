package gridviewdemo.dyk.view;

import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;

import gridviewdemo.dyk.gridviewdemo.R;

/**
 * Created by Administrator on 2017/3/31.
 */

public class FragOne extends Fragment{
    private Button next;
    private titleSelectInterface mSelectInterface;
    public interface titleSelectInterface {
        public void onTitleSelect(String title);
    }
    @Override
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container,  Bundle savedInstanceState) {
        View view =inflater.inflate(R.layout.fragone,container,false);
        next = (Button) view.findViewById(R.id.nextbutton);
        next.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                mSelectInterface.onTitleSelect("1");
            }
        });
        return view;
    }
    @Override
    public void onAttach(Context context) {
        super.onAttach(context);
        try {
            mSelectInterface = (titleSelectInterface)context;
        } catch (Exception e) {
            throw new ClassCastException(context.toString() + "must implement OnArticleSelectedListener");
        }
    }
}
