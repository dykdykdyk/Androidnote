package com.ustone.plugin.update;

import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Handler;
import org.apache.cordova.LOG;

import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.List;

public class CheckUpdateThread implements Runnable {
    private String TAG = "CheckUpdateThread";

    HashMap<String, String> mHashMap;
    private Context mContext;
    private List<Version> queue;
    private String packageName;
    private String updateXmlUrl;
    private Handler mHandler;

    private void setMHashMap(HashMap<String, String> mHashMap) {
        this.mHashMap = mHashMap;
    }

    public HashMap<String, String> getMHashMap() {
        return mHashMap;
    }

    public CheckUpdateThread(Context mContext, Handler mHandler, List<Version> queue, String packageName, String updateXmlUrl) {
        this.mContext = mContext;
        this.queue = queue;
        this.packageName = packageName;
        this.updateXmlUrl = updateXmlUrl;
        this.mHandler = mHandler;
    }

    @Override
    public void run() {
        int versionCodeLocal = getVersionCodeLocal(mContext);
        int versionCodeRemote = getVersionCodeRemote();
        queue.clear();
        queue.add(new Version(versionCodeLocal, versionCodeRemote));

        if (versionCodeLocal == 0 || versionCodeRemote == 0) {
            mHandler.sendEmptyMessage(Constants.NETWORK_ERROR);
        } else {
            mHandler.sendEmptyMessage(Constants.VERSION_COMPARE_START);
        }
    }

    private InputStream returnFileIS(String path) {
        LOG.d(TAG, "returnFileIS..");

        URL url = null;
        InputStream is = null;

        try {
            url = new URL(path);
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setDoInput(true);
            conn.connect();
            is = conn.getInputStream();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return is;
    }

    private int getVersionCodeLocal(Context context) {
        LOG.d(TAG, "getVersionCode..");

        int versionCode = 0;
        try {
            versionCode = context.getPackageManager().getPackageInfo(packageName, 0).versionCode;
        } catch (NameNotFoundException e) {
            e.printStackTrace();
        }
        return versionCode;
    }

    private int getVersionCodeRemote() {
        int versionCodeRemote = 0;

        InputStream is = returnFileIS(updateXmlUrl);
        ParseXmlService service = new ParseXmlService();
        try {
            setMHashMap(service.parseXml(is));
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (null != getMHashMap()) {
            versionCodeRemote = Integer.valueOf(getMHashMap().get("version"));
        }

        return versionCodeRemote;
    }
}