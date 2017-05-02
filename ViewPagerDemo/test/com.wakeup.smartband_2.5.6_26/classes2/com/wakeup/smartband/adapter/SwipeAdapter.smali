.class public Lcom/wakeup/smartband/adapter/SwipeAdapter;
.super Landroid/widget/BaseAdapter;
.source "SwipeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wakeup/smartband/adapter/SwipeAdapter$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/wakeup/smartband/adapter/SwipeAdapter$Callback;

.field private mContext:Landroid/content/Context;

.field private mCurrentOpenedSwipeLayout:Lcom/wakeup/smartband/ui/widget/swipe/SwipeLayout;

.field private mOnItemDeleteClickListener:Landroid/view/View$OnClickListener;

.field private mOnSwipeItemClickListener:Landroid/view/View$OnClickListener;

.field private mSwipeDragStatusListener:Lcom/wakeup/smartband/ui/widget/swipe/SwipeLayout$SwipeDragStatusListener;

.field private mSwipeItemDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lcom/wakeup/smartband/model/SwipeItemData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
