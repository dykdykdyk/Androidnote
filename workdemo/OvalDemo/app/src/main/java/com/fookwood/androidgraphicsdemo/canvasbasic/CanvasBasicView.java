package com.fookwood.androidgraphicsdemo.canvasbasic;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;

public class CanvasBasicView extends View {

    public CanvasBasicView(Context context) {
        super(context);
        init(null, 0);
    }

    public CanvasBasicView(Context context, AttributeSet attrs) {
        super(context, attrs);
        init(attrs, 0);
    }

    public CanvasBasicView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        init(attrs, defStyle);
    }

    private void init(AttributeSet attrs, int defStyle) {
    }

    @Override
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int verticalCenter    =  getHeight() / 2;
        int horizontalCenter  =  getWidth() / 2;
        int circleRadius      = 200;
        Paint paint = new Paint();
//        paint.setAntiAlias(false);
//        paint.setColor(Color.RED);
//        canvas.drawCircle( horizontalCenter, verticalCenter-250, circleRadius, paint);
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(20);
        paint.setStrokeCap(Paint.Cap.ROUND);
        float x = (getWidth() - getHeight() / 2) / 2;
        float y = getHeight() / 4;

        RectF oval = new RectF( x, y,
                getWidth() - x, getHeight() - y);
        canvas.drawArc(oval,180,180,false,paint);
//        canvas.drawCircle( horizontalCenter, verticalCenter-250, circleRadius, paint);
    }
}
