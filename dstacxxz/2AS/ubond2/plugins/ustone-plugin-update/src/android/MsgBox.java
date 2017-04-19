package com.ustone.plugin.update;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ProgressBar;
import org.apache.cordova.LOG;

import com.ionicframework.ufind1210015.R;

import java.util.HashMap;
import java.util.Map;

public class MsgBox{
    public static final String TAG = "MsgBox";
    private Context mContext;
    private String packageName;
    private Resources resources;

    private Dialog noticeDialog;
    private Dialog downloadDialog;
    private ProgressBar downloadDialogProgress;
    private Dialog errorDialog;

    public MsgBox(Context mContext) {
        this.mContext = mContext;
        packageName = mContext.getPackageName();
        resources = mContext.getResources();
    }

    public Dialog showNoticeDialog(OnClickListener onClickListener) {
        if (noticeDialog == null) {
            LOG.d(TAG, "showNoticeDialog");
            AlertDialog.Builder builder = new AlertDialog.Builder(mContext);
            builder.setTitle(getString("update_title"));
            builder.setMessage(getString("update_message"));
            builder.setPositiveButton(getString("update_update_btn"), onClickListener);
            noticeDialog = builder.create();
        }

        if (!noticeDialog.isShowing()) noticeDialog.show();

        return noticeDialog;
    }

    public Map<String, Object> showDownloadDialog(OnClickListener onClickListener) {
        if(downloadDialog == null) {
            LOG.d(TAG, "showDownloadDialog");

            AlertDialog.Builder builder = new Builder(mContext);
            builder.setTitle(getString("updating"));
            final LayoutInflater inflater = LayoutInflater.from(mContext);
            
            /*View v = inflater.inflate(getLayout("appupdate_progress"), null);
            downloadDialogProgress = (ProgressBar) v.findViewById(getId("update_progress"));*/
            View v = inflater.inflate(R.layout.update_progress, null);
            downloadDialogProgress = (ProgressBar) v.findViewById(R.id.update_progress);
            downloadDialogProgress.setMax(100);
            Log.i(TAG, "Progress = " + downloadDialogProgress);
            builder.setView(v);
            builder.setNegativeButton(getString("update_cancel"), onClickListener);
            downloadDialog = builder.create();
        }

        if(!downloadDialog.isShowing()) downloadDialog.show();

        Map<String, Object> ret = new HashMap<String, Object>();
        ret.put("dialog", downloadDialog);
        ret.put("progress", downloadDialogProgress);
        return ret;
    }

    public Dialog showErrorDialog(OnClickListener errorDialogOnClick) {
        if(this.errorDialog == null) {
            LOG.d(TAG, "initErrorDialog");
            AlertDialog.Builder builder = new AlertDialog.Builder(mContext);
            builder.setTitle(getString("update_error_title"));
            builder.setMessage(getString("update_error_message"));
            builder.setPositiveButton(getString("update_error_yes_btn"), errorDialogOnClick);
            errorDialog = builder.create();
        }

        if(!errorDialog.isShowing()) errorDialog.show();

        return errorDialog;
    }

    private int getId(String name) {
        return resources.getIdentifier(name, "id", packageName);
    }

    private int getString(String name) {
        return resources.getIdentifier(name, "string", packageName);
    }

    private int getLayout(String name) {
    	Log.i(TAG, "name = " + name + ", packageName = " + packageName);
        return resources.getIdentifier(name, "layout", packageName);
    }

}
