.class public abstract Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;
.super Lcom/handmark/pulltorefresh/library/PullToRefreshBase;
.source "PullToRefreshAdapterViewBase.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/widget/AbsListView;",
        ">",
        "Lcom/handmark/pulltorefresh/library/PullToRefreshBase",
        "<TT;>;",
        "Landroid/widget/AbsListView$OnScrollListener;"
    }
.end annotation


# instance fields
.field private mEmptyView:Landroid/view/View;

.field private mIndicatorIvBottom:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

.field private mIndicatorIvTop:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

.field private mLastItemVisible:Z

.field private mOnLastItemVisibleListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mScrollEmptyView:Z

.field private mShowIndicator:Z


# direct methods
