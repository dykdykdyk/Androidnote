package zhj.viewgroupdemo;

import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.TextView;

/**
 * Created by Administrator on 2017/8/17.
 */
public class ListAVH extends RecyclerView.ViewHolder{

    public TimeLineMarker imgLine;   //时间轴 图片
    public TextView time;      //时间 文字
    public TextView value;  //值
    public ListAVH(View itemView) {
        super(itemView);

        imgLine = (TimeLineMarker) itemView.findViewById(R.id.img);
        time = (TextView) itemView.findViewById(R.id.txtTime);
        value = (TextView) itemView.findViewById(R.id.txtTime_value);
    }
}
