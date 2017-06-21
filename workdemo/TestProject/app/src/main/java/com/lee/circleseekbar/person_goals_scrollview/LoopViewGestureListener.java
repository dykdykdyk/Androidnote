package com.lee.circleseekbar.person_goals_scrollview;

import android.view.MotionEvent;


/**
 * Created by Administrator on 2017/05/29.
 */

public class LoopViewGestureListener extends android.view.GestureDetector.SimpleOnGestureListener {

    final  LoopView loopView;

    LoopViewGestureListener( LoopView loopview) {
        loopView = loopview;
    }

    @Override
    public final boolean onFling(MotionEvent e1, MotionEvent e2, float velocityX, float velocityY) {
        loopView.scrollBy(velocityY);
        return true;
    }
}