package com.canking.notifymrg;

import android.app.Notification;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.graphics.drawable.Icon;
import android.os.Bundle;
import android.provider.Settings;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.RemoteViews;
import android.widget.TextView;
import android.widget.Toast;

import java.util.ArrayList;
import java.util.List;

public class MainActivity extends AppCompatActivity implements View.OnClickListener {
    private static final String ENABLED_NOTIFICATION_LISTENERS = "enabled_notification_listeners";

    final static String UPDATE = "com.baidu.notifymgr.NOTIFICATION_LISTENER_EXAMPLE";
    final static String EVENT = "notification_event";
    final static String ICON_S = "small_icon";
    final static String VIEW_S = "view_small";
    final static String View_L = "view_large";

    private TextView mInfoTex;
    private NotificationReceiver nReceiver;
    private Button mStart, mStop, mClearAll, mNowList;
    private ListView mListView;
    private List<NTBean> mInfoList;
    private InfoListAdapter mAdapter;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        initView();
        initData();
    }

    private void initView() {
        mStart = (Button) findViewById(R.id.start);
        mStop = (Button) findViewById(R.id.stop);
        mClearAll = (Button) findViewById(R.id.clear_all);
        mInfoTex = (TextView) findViewById(R.id.info);
        mListView = (ListView) findViewById(R.id.list);
        mNowList = (Button) findViewById(R.id.now_list);

        mNowList.setOnClickListener(this);
        mStop.setOnClickListener(this);
        mClearAll.setOnClickListener(this);
        mStart.setOnClickListener(this);

        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
    }

    private void initData() {
        nReceiver = new NotificationReceiver();
        IntentFilter filter = new IntentFilter();
        filter.addAction(UPDATE);
        registerReceiver(nReceiver, filter);

        mInfoList = new ArrayList<>();
        mAdapter = new InfoListAdapter(this, mInfoList);
        mListView.setAdapter(mAdapter);
    }

    @Override
    public void onClick(View v) {
        if (v == mStart) {
            if (!isEnabled()) {
                Intent intent = new Intent("android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS");
                startActivity(intent);
            } else {
                Toast.makeText(this, "已开启服务权限", Toast.LENGTH_LONG).show();
            }
        } else if (v == mStop) {
            Intent s = new Intent(this, NLService.class);
            stopService(s);
        } else if (v == mClearAll) {
            Intent i1 = new Intent(NLService.COMMAND);
            i1.putExtra(NLService.COMMAND_EXTRA, NLService.CANCEL_ALL);
            sendBroadcast(i1);
        } else if (v == mNowList) {
            Intent i1 = new Intent(NLService.COMMAND);
            i1.putExtra(NLService.COMMAND_EXTRA, NLService.GET_LIST);
            sendBroadcast(i1);
            v.setEnabled(false);
        }
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        unregisterReceiver(nReceiver);
    }

    public class InfoListAdapter extends BaseAdapter {
        private List<NTBean> nInfoList;
        private LayoutInflater nInflater;
        private Context nContext;

        public InfoListAdapter(Context cxt, List<NTBean> source) {
            nInfoList = source;
            nInflater = LayoutInflater.from(cxt);
            nContext = cxt;
        }

        @Override
        public int getCount() {
            return nInfoList.size();
        }

        @Override
        public Object getItem(int position) {
            return nInfoList.get(position);
        }

        @Override
        public View getView(int position, View convertView, ViewGroup parent) {
            ViewHolder viewHolder;
            if (convertView == null) {
                convertView = nInflater.inflate(R.layout.list_item, parent, false);
                viewHolder = new ViewHolder();
                viewHolder.title = (TextView) convertView.findViewById(R.id.title);
                viewHolder.notiTitel = (TextView) convertView.findViewById(R.id.noti_title);
                viewHolder.notiText = (TextView) convertView.findViewById(R.id.noti_text);
                viewHolder.notiSubText = (TextView) convertView.findViewById(R.id.noti_sub_text);
                viewHolder.smallIcon = (ImageView) convertView.findViewById(R.id.noti_small_icon);
                viewHolder.largeIcon = (ImageView) convertView.findViewById(R.id.noti_large_icon);
                viewHolder.contentView = (ViewGroup) convertView.findViewById(R.id.noti_content_view);
                viewHolder.bigContentView = (ViewGroup) convertView.findViewById(R.id.noti_bit_content_view);
                convertView.setTag(viewHolder);
            } else {
                viewHolder = (ViewHolder) convertView.getTag();
            }
            NTBean bean = nInfoList.get(position);
            viewHolder.title.setText(bean.info);
            viewHolder.notiTitel.setText(bean.title);
            viewHolder.notiSubText.setText(bean.subText);
            viewHolder.notiText.setText(bean.text);
            viewHolder.largeIcon.setImageBitmap(bean.largeIcon);
            viewHolder.smallIcon.setImageIcon(bean.smallIcon);//high api level
            viewHolder.contentView.removeAllViews();
            viewHolder.bigContentView.removeAllViews();

            if (bean.viewS != null) {
                View view = bean.viewS.apply(nContext, viewHolder.contentView);
                viewHolder.contentView.addView(view);
            }
            if (bean.viewL != null) {
                View view = bean.viewL.apply(nContext, viewHolder.bigContentView);
                viewHolder.bigContentView.addView(view);
            }
            return convertView;
        }

        @Override
        public long getItemId(int position) {
            return position;
        }

    }

    public static class ViewHolder {
        public TextView title, notiTitel, notiText, notiSubText;
        public ImageView smallIcon, largeIcon;
        public ViewGroup contentView, bigContentView;
    }

    class NotificationReceiver extends BroadcastReceiver {


        @Override
        public void onReceive(Context context, Intent intent) {
            String temp = mInfoList.size() + "：" + intent.getStringExtra(EVENT);
            NTBean bean = new NTBean();
            bean.info = temp;

            Bundle budle = intent.getExtras();
            bean.title = budle.getString(Notification.EXTRA_TITLE);
            bean.text = budle.getString(Notification.EXTRA_TEXT);
            bean.subText = budle.getString(Notification.EXTRA_SUB_TEXT);
            bean.largeIcon = budle.getParcelable(Notification.EXTRA_LARGE_ICON);
            Icon icon = budle.getParcelable(Notification.EXTRA_SMALL_ICON);
            bean.smallIcon = icon;

            bean.viewS = budle.getParcelable(VIEW_S);
            bean.viewL = budle.getParcelable(View_L);

            mInfoList.add(bean);
            Log.e("changxing", "receive:" + temp + "\n" + budle);
            mAdapter.notifyDataSetChanged();
        }

    }

    class NTBean {
        String info;
        String title;
        String text;
        String subText;
        Icon smallIcon;
        Bitmap largeIcon;
        RemoteViews viewS, viewL;
    }

    private boolean isEnabled() {
        String pkgName = getPackageName();
        final String flat = Settings.Secure.getString(getContentResolver(),
                ENABLED_NOTIFICATION_LISTENERS);
        if (!TextUtils.isEmpty(flat)) {
            final String[] names = flat.split(":");
            for (int i = 0; i < names.length; i++) {
                final ComponentName cn = ComponentName.unflattenFromString(names[i]);
                if (cn != null) {
                    if (TextUtils.equals(pkgName, cn.getPackageName())) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

}
