.class public Lcom/het/comres/view/pulltorefresh/XListView;
.super Landroid/widget/ListView;
.source "XListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/het/comres/view/pulltorefresh/XListView$IXListViewListener;,
        Lcom/het/comres/view/pulltorefresh/XListView$OnXScrollListener;
    }
.end annotation


# static fields
.field private static final OFFSET_RADIO:F = 2.0f

.field private static final PULL_LOAD_MORE_DELTA:I = 0x32

.field private static final SCROLL_BACK_FOOTER:I = 0x1

.field private static final SCROLL_BACK_HEADER:I = 0x0

.field private static final SCROLL_DURATION:I = 0x190


# instance fields
.field private mEnableAutoLoad:Z

.field private mEnablePullLoad:Z

.field private mEnablePullRefresh:Z

.field private mFooterLayout:Landroid/widget/LinearLayout;

.field private mFooterView:Lcom/het/comres/view/pulltorefresh/XFooterView;

.field private mHeader:Lcom/het/comres/view/pulltorefresh/XHeaderView;

.field private mHeaderContent:Landroid/widget/RelativeLayout;

.field private mHeaderHeight:I

.field private mHeaderTime:Landroid/widget/TextView;

.field private mIsFooterReady:Z

.field private mLastY:F

.field private mListener:Lcom/het/comres/view/pulltorefresh/XListView$IXListViewListener;

.field private mPullLoading:Z

.field private mPullRefreshing:Z

.field private mScrollBack:I

.field private mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mScroller:Landroid/widget/Scroller;

.field private mTotalItemCount:I


# direct methods
