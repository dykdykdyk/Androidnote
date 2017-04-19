package com.ustone.plugin.update;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.widget.ProgressBar;

import java.io.File;
import java.util.HashMap;
public class DownloadHandler extends Handler {
    private String TAG = "DownloadHandler";

    private Context mContext;
    private ProgressBar mProgress;
    private int progress;
    private String mSavePath;
    private HashMap<String, String> mHashMap;

    public DownloadHandler(Context mContext, ProgressBar mProgress, String mSavePath, HashMap<String, String> mHashMap) {
        this.mContext = mContext;
        this.mProgress = mProgress;
        this.mSavePath = mSavePath;
        this.mHashMap = mHashMap;
    }

    public void handleMessage(Message msg) {
        switch (msg.what) {
            case Constants.DOWNLOAD:
                break;
            case Constants.DOWNLOAD_FINISH:
                installApk();
                break;
            default:
                break;
        }
    }

    public void updateProgress(int progress) {
        this.progress = progress;
    }

    private void installApk() {
        File apkFile = new File(mSavePath, mHashMap.get("name"));
        if (!apkFile.exists()) {
            return;
        }

        Intent i = new Intent(Intent.ACTION_VIEW);
        i.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
        i.setDataAndType(Uri.parse("file://" + apkFile.toString()), "application/vnd.android.package-archive");
        mContext.startActivity(i);
    }
}
