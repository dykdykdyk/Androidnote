package com.lee.circleseekbar.person_goals_scrollview;


/**
 * Created by Administrator on 2017/05/29.
 */


final class OnItemSelectedRunnable implements Runnable {
    final  LoopView loopView;

    OnItemSelectedRunnable( LoopView loopview) {
        loopView = loopview;
    }

    @Override
    public final void run() {
        loopView.onItemSelectedListener.onItemSelected(loopView.getSelectedItem());
    }
}
