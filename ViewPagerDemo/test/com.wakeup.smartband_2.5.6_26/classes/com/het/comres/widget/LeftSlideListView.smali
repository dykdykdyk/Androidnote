.class public Lcom/het/comres/widget/LeftSlideListView;
.super Landroid/widget/ListView;
.source "LeftSlideListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/het/comres/widget/LeftSlideListView$OnRefreshListener;,
        Lcom/het/comres/widget/LeftSlideListView$OnItemDeleteListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "LeftSlideListView"

.field public static final TOUCH_MODE_DOWN_DRAGGING:I = 0x2

.field public static final TOUCH_MODE_UP_DRAGGING:I = 0x1


# instance fields
.field private final MIN_HORIZONTAL_OFFSET:I

.field private final TOUCH_MODE_DEFAULT:I

.field private final TOUCH_MODE_RESET:I

.field private final TOUCH_MODE_SLIDING:I

.field mActionDownX:F

.field mActionDownY:F

.field private mDeletePosition:I

.field private mFlexible:Z

.field private mMaxHorizontalOffset:I

.field mOffsetX:F

.field mOnItemDeleteListener:Lcom/het/comres/widget/LeftSlideListView$OnItemDeleteListener;

.field mOnRefreshListener:Lcom/het/comres/widget/LeftSlideListView$OnRefreshListener;

.field private mOverDraggingBias:F

.field private mPosition:I

.field mRefresh:Z

.field mScroller:Landroid/widget/Scroller;

.field private mTouchMode:I

.field onDeleteTouchEvent:Landroid/view/View$OnTouchListener;


# direct methods
