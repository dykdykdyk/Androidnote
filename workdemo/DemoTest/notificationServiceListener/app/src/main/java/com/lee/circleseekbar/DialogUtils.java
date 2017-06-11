package com.lee.circleseekbar;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.text.TextUtils;

/**自定义对话框
 * Created by dengyangkang on 2017/5/18.
 */

public class DialogUtils {
    private static  DialogUtils mDialog;
    private static  Context context;
    //设置上下文对象
    public DialogUtils(){

    }
    public DialogUtils with(Context context) {
        this.context = context;
        return this;
    }
    public static DialogUtils build() {
        if (mDialog == null) {
            mDialog = new DialogUtils();
        }
        return mDialog;
    }
    public  void showDialog(String title,String message,int iconResId,
                            Context context,final OnClickback callback ){
        AlertDialog.Builder  builder = new AlertDialog.Builder(context);
        if (!TextUtils.isEmpty(title)) {
            builder.setTitle(title);
        }
        if (!TextUtils.isEmpty(message)) {
            builder.setMessage(message);
        }
        if (iconResId != 0) {
            builder.setIcon(iconResId);
        }
        builder.setPositiveButton("确定", new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which) {
                callback.onOk();
            }
        });
        builder.setNegativeButton("取消", new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which) {
                callback.onCancel();
            }
        });
        builder.create().show();
    }
    interface PositiveOnClick{
        void onOk();
    }
    public static abstract class OnClickback implements PositiveOnClick{
        public void onCancel(){//点击取消的回调
        }
    }
}
