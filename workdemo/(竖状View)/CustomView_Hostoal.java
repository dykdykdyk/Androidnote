package net.qiujuer.example.timeline;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;

/**
 * Created by dengyangkang on 2017/9/9.
 */

public class CustomView_Hostoal extends View{
    Paint mPaint ;
    Bitmap bitmap;
    int xLeft ;
    public CustomView_Hostoal(Context context) {
        super(context);
        init();
    }

    public CustomView_Hostoal(Context context, AttributeSet attrs) {
        super(context, attrs);
        init();
    }

    public CustomView_Hostoal(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        init();
    }
  public void init(){
      mPaint =new Paint();
      mPaint.setColor(Color.WHITE);
      mPaint.setAntiAlias(true);
      bitmap = BitmapFactory.decodeResource(getResources(),R.drawable.tired_progress);
  }
    @Override
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        RectF r =new RectF(xLeft,0,xLeft+10,4500);
        canvas.drawBitmap(bitmap,0,0,null);
        canvas.drawRect(r,mPaint);
    }
    public void setYaxiz(int y){
        xLeft=y;
    }
}
