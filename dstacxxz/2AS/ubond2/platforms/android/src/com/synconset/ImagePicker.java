/**
 * An Image Picker Plugin for Cordova/PhoneGap.
 */
package com.synconset;

import org.apache.cordova.CallbackContext;
import org.apache.cordova.CordovaPlugin;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.util.ArrayList;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.provider.MediaStore;
import android.provider.MediaStore.Images.ImageColumns;
import android.util.Log;

public class ImagePicker extends CordovaPlugin {
	public static String TAG = "ImagePicker";
    public static final int PHOTOZOOM = 2; // 缩放  
    public static final int PHOTORESOULT = 3;// 结果  
    public static final int NONE = 0;  

    public static final String IMAGE_UNSPECIFIED = "image/*";  
	private CallbackContext callbackContext;
	private JSONObject params;
	 
	public boolean execute(String action, final JSONArray args, final CallbackContext callbackContext) throws JSONException {
		 this.callbackContext = callbackContext;
		 this.params = args.getJSONObject(0);
		if (action.equals("getPictures")) {
			Log.i(TAG, "打开相册...");
//			Intent intent = new Intent(cordova.getActivity(), MultiImageChooserActivity.class);
			Intent intent = new Intent(Intent.ACTION_PICK, null);  
            intent.setDataAndType(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, IMAGE_UNSPECIFIED);  
              
			
			int max = 20;
			int desiredWidth = 0;
			int desiredHeight = 0;
			int quality = 100;
			if (this.params.has("maximumImagesCount")) {
				max = this.params.getInt("maximumImagesCount");
			}
			if (this.params.has("width")) {
				desiredWidth = this.params.getInt("width");
			}
			if (this.params.has("height")) {
				desiredWidth = this.params.getInt("height");
			}
			if (this.params.has("quality")) {
				quality = this.params.getInt("quality");
			}
			intent.putExtra("MAX_IMAGES", max);
			intent.putExtra("WIDTH", desiredWidth);
			intent.putExtra("HEIGHT", desiredHeight);
			intent.putExtra("QUALITY", quality);
			if (this.cordova != null) {
//				this.cordova.startActivityForResult((CordovaPlugin) this, intent, 0);
				this.cordova.startActivityForResult((CordovaPlugin) this,intent, PHOTOZOOM);  
			}
		}
		return true;
	}
	
	public void onActivityResult(int requestCode, int resultCode, Intent data) {
		 if (resultCode == NONE)  
	            return;  
	        // 拍照  
//	        if (requestCode == PHOTOHRAPH) {  
//	            //设置文件保存路径这里放在跟目录下  
//	            File picture = new File(Environment.getExternalStorageDirectory() + "/temp.jpg");  
//	            startPhotoZoom(Uri.fromFile(picture));  
//	        }  
	          
	        if (data == null)  
	            return;  
	          
	        // 读取相册缩放图片  
	        if (requestCode == PHOTOZOOM) {  
	        	Log.i(TAG, "读取相册选中缩放图片来处理 ");
	            startPhotoZoom(data.getData());  
	        }  
	        // 处理结果  
	        if (requestCode == PHOTORESOULT) {  
	            Bundle extras = data.getExtras();  
	            if (extras != null) {  
	                Bitmap photo = extras.getParcelable("data");  
	                ByteArrayOutputStream stream = new ByteArrayOutputStream();  
	                photo.compress(Bitmap.CompressFormat.JPEG, 100, stream);// (0 - 100)压缩文件  
		        	Log.i(TAG, "path ");
		        	Uri uri = Uri.parse(MediaStore.Images.Media.insertImage(this.cordova.getActivity().getContentResolver(), photo, null,null));
		        	String path = getRealFilePath(this.cordova.getActivity(),uri);
		        	Log.i(TAG, "path ...."+path);
		        	Log.i(TAG, "uri ...."+uri);
//		        	JSONArray res = new JSONArray(path);
					this.callbackContext.success(path);
		        	
//	                Uri uri = Uri.parse(uriString)
//	                imageView.setImageBitmap(photo);  
	            }  
	  
	        }  
		
	        super.onActivityResult(requestCode, resultCode, data);  
		
//		if (resultCode == Activity.RESULT_OK && data != null) {
//			ArrayList<String> fileNames = data.getStringArrayListExtra("MULTIPLEFILENAMES");
//			JSONArray res = new JSONArray(fileNames);
//			this.callbackContext.success(res);
//		} else if (resultCode == Activity.RESULT_CANCELED && data != null) {
//			String error = data.getStringExtra("ERRORMESSAGE");
//			this.callbackContext.error(error);
//		} else if (resultCode == Activity.RESULT_CANCELED) {
//			JSONArray res = new JSONArray();
//			this.callbackContext.success(res);
//		} else {
//			this.callbackContext.error("No images selected");
//		}
	}
	 public void startPhotoZoom(Uri uri) {  
	        Intent intent = new Intent("com.android.camera.action.CROP");  
	        intent.setDataAndType(uri, IMAGE_UNSPECIFIED);  
	        intent.putExtra("crop", "true");  
	        // aspectX aspectY 是宽高的比例  
	        intent.putExtra("aspectX", 1);  
	        intent.putExtra("aspectY", 1);  
	        // outputX outputY 是裁剪图片宽高  
	        intent.putExtra("outputX", 300);  
	        intent.putExtra("outputY", 300);  
	        intent.putExtra("return-data", true);  
	        intent.putExtra("outputFormat", Bitmap.CompressFormat.JPEG.toString());
	        intent.putExtra("noFaceDetection", true); // no face detection
	        this.cordova.startActivityForResult((CordovaPlugin) this,intent, PHOTORESOULT);  
//	        startActivityForResult(intent, PHOTORESOULT);  
	    }  
	 
	 public static String getRealFilePath( final Context context, final Uri uri ) {
		    if ( null == uri ) return null;
		    final String scheme = uri.getScheme();
		    String data = null;
		    if ( scheme == null )
		        data = uri.getPath();
		    else if ( ContentResolver.SCHEME_FILE.equals( scheme ) ) {
		        data = uri.getPath();
		    } else if ( ContentResolver.SCHEME_CONTENT.equals( scheme ) ) {
		        Cursor cursor = context.getContentResolver().query( uri, new String[] { ImageColumns.DATA }, null, null, null );
		        if ( null != cursor ) {
		            if ( cursor.moveToFirst() ) {
		                int index = cursor.getColumnIndex( ImageColumns.DATA );
		                if ( index > -1 ) {
		                    data = cursor.getString( index );
		                }
		            }
		            cursor.close();
		        }
		    }
		    return data;
		}
}