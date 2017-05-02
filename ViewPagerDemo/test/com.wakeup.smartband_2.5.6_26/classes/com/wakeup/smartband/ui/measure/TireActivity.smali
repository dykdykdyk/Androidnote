.class public Lcom/wakeup/smartband/ui/measure/TireActivity;
.super Lcom/wakeup/smartband/base/BaseActivity;
.source "TireActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wakeup/smartband/ui/measure/TireActivity$GetTiredDataTask;
    }
.end annotation


# static fields
.field private static final CLOSE_TIRED_MEASURE:I = 0x1

.field private static final TIRED_MEASURE_TIME:J = 0x7530L


# instance fields
.field private FLAG_ONCLICK:Z

.field button1:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f021f
    .end annotation
.end field

.field circle_tired_progress:Lcom/wakeup/smartband/ui/widget/view/CircleView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0277
    .end annotation
.end field

.field data:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0222
    .end annotation
.end field

.field private fragment_day:Landroid/support/v4/app/Fragment;

.field private fragment_month:Landroid/support/v4/app/Fragment;

.field private fragment_week:Landroid/support/v4/app/Fragment;

.field private isClickStartMeasure:Z

.field private isLoadingData:Z

.field private listener:Landroid/view/View$OnClickListener;

.field private mGetTiredDataTask:Lcom/wakeup/smartband/ui/measure/TireActivity$GetTiredDataTask;

.field private mHandler:Landroid/os/Handler;

.field private mRootView:Landroid/view/View;

.field private ri:Landroid/widget/TextView;

.field private root:Landroid/widget/RelativeLayout;

.field scrollViewTired:Lcom/wakeup/smartband/ui/widget/view/hr_bpo/TiredScrollView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f002e
    .end annotation
.end field

.field private textViews:[Landroid/widget/TextView;

.field time_a:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0287
    .end annotation
.end field

.field private title:Landroid/widget/TextView;

.field private topbar:Landroid/widget/RelativeLayout;

.field private type:I

.field private ye_fragment:I

.field private yue:Landroid/widget/TextView;

.field private zhou:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

