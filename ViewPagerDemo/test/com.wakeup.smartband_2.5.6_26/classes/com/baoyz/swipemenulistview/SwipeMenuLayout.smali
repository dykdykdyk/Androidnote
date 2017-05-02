.class public Lcom/baoyz/swipemenulistview/SwipeMenuLayout;
.super Landroid/widget/FrameLayout;
.source "SwipeMenuLayout.java"


# static fields
.field private static final CONTENT_VIEW_ID:I = 0x1

.field private static final MENU_VIEW_ID:I = 0x2

.field private static final STATE_CLOSE:I = 0x0

.field private static final STATE_OPEN:I = 0x1


# instance fields
.field private MAX_VELOCITYX:I

.field private MIN_FLING:I

.field private isFling:Z

.field private mBaseX:I

.field private mCloseInterpolator:Landroid/view/animation/Interpolator;

.field private mCloseScroller:Landroid/support/v4/widget/ScrollerCompat;

.field private mContentView:Landroid/view/View;

.field private mDownX:I

.field private mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

.field private mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mMenuView:Lcom/baoyz/swipemenulistview/SwipeMenuView;

.field private mOpenInterpolator:Landroid/view/animation/Interpolator;

.field private mOpenScroller:Landroid/support/v4/widget/ScrollerCompat;

.field private mSwipeDirection:I

.field private position:I

.field private state:I


# direct methods
