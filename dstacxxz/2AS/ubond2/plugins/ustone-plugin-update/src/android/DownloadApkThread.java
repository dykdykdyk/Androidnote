package com.ustone.plugin.update;

import android.app.Dialog;
import android.content.Context;
import android.os.Environment;
import android.util.Log;
import android.widget.ProgressBar;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;

public class DownloadApkThread implements Runnable {
    private String TAG = "DownloadApkThread";

    HashMap<String, String> mHashMap;
    private String mSavePath;
    private int progress;
    private ProgressBar mProgress;
    private boolean cancelUpdate = false;
    private Dialog mDownloadDialog;
    private Context mContext;
    private DownloadHandler mHandler;

    public DownloadApkThread(Context mContext, ProgressBar mProgress, Dialog mDownloadDialog, HashMap<String, String> mHashMap) {
        this.mContext = mContext;
        this.mProgress = mProgress;
        this.mDownloadDialog = mDownloadDialog;
        this.mHashMap = mHashMap;

        this.mSavePath = Environment.getExternalStorageDirectory() + "/" + "download"; // SD Path
        this.mHandler = new DownloadHandler(mContext, mProgress, mSavePath, mHashMap);
    }

    @Override
    public void run() {
        downloadAndInstall();
        mDownloadDialog.dismiss();
    }

    public void cancelBuildUpdate() {
        this.cancelUpdate = true;
    }

    private void downloadAndInstall() {
        try {
            if (Environment.getExternalStorageState().equals(Environment.MEDIA_MOUNTED)) {
                URL url = new URL(mHashMap.get("url"));
                HttpURLConnection conn = (HttpURLConnection) url.openConnection();
                conn.connect();
                int length = conn.getContentLength();
                InputStream is = conn.getInputStream();

                File file = new File(mSavePath);
                if (!file.exists()) {
                    file.mkdir();
                }
                File apkFile = new File(mSavePath, mHashMap.get("name"));
                FileOutputStream fos = new FileOutputStream(apkFile);
                int count = 0;
                byte buf[] = new byte[1024];

                do {
                    int numread = is.read(buf);
                    count += numread;
                    progress = (int) (((float) count / length) * 100);
                    mProgress.setProgress(progress);
                    mHandler.updateProgress(progress);
                    mHandler.sendEmptyMessage(Constants.DOWNLOAD);
                    if (numread <= 0) {
                        mHandler.sendEmptyMessage(Constants.DOWNLOAD_FINISH);
                        break;
                    }
                    fos.write(buf, 0, numread);
                } while (!cancelUpdate);
                fos.close();
                is.close();
            }
        } catch (MalformedURLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}