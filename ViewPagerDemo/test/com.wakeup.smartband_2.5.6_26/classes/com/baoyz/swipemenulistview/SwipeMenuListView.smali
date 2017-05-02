.class public Lcom/baoyz/swipemenulistview/SwipeMenuListView;
.super Landroid/widget/ListView;
.source "SwipeMenuListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baoyz/swipemenulistview/SwipeMenuListView$OnMenuStateChangeListener;,
        Lcom/baoyz/swipemenulistview/SwipeMenuListView$OnSwipeListener;,
        Lcom/baoyz/swipemenulistview/SwipeMenuListView$OnMenuItemClickListener;
    }
.end annotation


# static fields
.field public static final DIRECTION_LEFT:I = 0x1

.field public static final DIRECTION_RIGHT:I = -0x1

.field private static final TOUCH_STATE_NONE:I = 0x0

.field private static final TOUCH_STATE_X:I = 0x1

.field private static final TOUCH_STATE_Y:I = 0x2


# instance fields
.field private MAX_X:I

.field private MAX_Y:I

.field private mCloseInterpolator:Landroid/view/animation/Interpolator;

.field private mDirection:I

.field private mDownX:F

.field private mDownY:F

.field private mMenuCreator:Lcom/baoyz/swipemenulistview/SwipeMenuCreator;

.field private mOnMenuItemClickListener:Lcom/baoyz/swipemenulistview/SwipeMenuListView$OnMenuItemClickListener;

.field private mOnMenuStateChangeListener:Lcom/baoyz/swipemenulistview/SwipeMenuListView$OnMenuStateChangeListener;

.field private mOnSwipeListener:Lcom/baoyz/swipemenulistview/SwipeMenuListView$OnSwipeListener;

.field private mOpenInterpolator:Landroid/view/animation/Interpolator;

.field private mTouchPosition:I

.field private mTouchState:I

.field private mTouchView:Lcom/baoyz/swipemenulistview/SwipeMenuLayout;


# direct methods
