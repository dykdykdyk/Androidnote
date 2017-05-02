.class public Lcom/wakeup/smartband/ui/camera/AlbumItemActivity;
.super Lcom/wakeup/smartband/base/BaseActivity;
.source "AlbumItemActivity.java"

# interfaces
.implements Lcom/linj/album/view/MatrixImageView$OnSingleTapListener;


# instance fields
.field private isHide:Z

.field ll_bottom:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f00a6
    .end annotation
.end field

.field mCountView:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f00a4
    .end annotation
.end field

.field private mSaveRoot:Ljava/lang/String;

.field mViewPager:Lcom/linj/album/view/AlbumViewPager;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f00a1
    .end annotation
.end field

.field private pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field rl_topbar:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f00a2
    .end annotation
.end field

.field root:Landroid/view/View;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f00a0
    .end annotation
.end field

.field tv_delete:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f00a7
    .end annotation
.end field

.field tv_share:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f00a8
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

