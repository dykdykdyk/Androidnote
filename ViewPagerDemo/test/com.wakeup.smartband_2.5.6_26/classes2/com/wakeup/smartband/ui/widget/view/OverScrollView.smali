.class public Lcom/wakeup/smartband/ui/widget/view/OverScrollView;
.super Landroid/widget/FrameLayout;
.source "OverScrollView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final INVALID_POINTER:I = -0x1

.field static final MAX_SCROLL_FACTOR:F = 0.5f

.field static final OVERSHOOT_TENSION:F = 0.75f


# instance fields
.field protected child:Landroid/view/View;

.field hasFailedObtainingScrollFields:Z

.field inflater:Landroid/view/LayoutInflater;

.field isInFlingMode:Z

.field private mActivePointerId:I

.field private mChildToScrollTo:Landroid/view/View;

.field protected mContext:Landroid/content/Context;

.field private mFillViewport:Z

.field private mIsBeingDragged:Z

.field private mIsLayoutDirty:Z

.field private mLastMotionY:F

.field private mLastScroll:J

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mScrollViewMovedFocus:Z

.field mScrollXField:Ljava/lang/reflect/Field;

.field mScrollYField:Ljava/lang/reflect/Field;

.field private mScroller:Landroid/widget/Scroller;

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field metrics:Landroid/util/DisplayMetrics;

.field private overScrollerSpringbackTask:Ljava/lang/Runnable;

.field prevScrollY:I


# direct methods
