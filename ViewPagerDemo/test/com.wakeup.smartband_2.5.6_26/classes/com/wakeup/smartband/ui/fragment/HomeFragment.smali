.class public Lcom/wakeup/smartband/ui/fragment/HomeFragment;
.super Lcom/wakeup/smartband/base/BaseFragment;
.source "HomeFragment.java"

# interfaces
.implements Lcom/wakeup/smartband/ui/fragment/BaseHandler$CallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wakeup/smartband/ui/fragment/HomeFragment$GetDataTask;
    }
.end annotation


# static fields
.field private static final CLOSE_REFRESH_DATA:I = 0x8

.field private static final MSG_DB_CHANGE:I = 0x0

.field private static final MSG_ONE_KEY_MEASURE:I = 0x6

.field private static final MSG_STEP_SLEEP_CHANGE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "HomeFragment"

.field private static final TAG2:Ljava/lang/String; = "BasicHistoryApi"

.field private static stepCount:I


# instance fields
.field private final BLEStatusChangeReceiver:Landroid/content/BroadcastReceiver;

.field fl_r:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f023b
    .end annotation
.end field

.field home_blood_oxygen_view:Lcom/wakeup/smartband/ui/widget/view/home/HomeBloodOxygenView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0245
    .end annotation
.end field

.field home_blood_pressure_view:Lcom/wakeup/smartband/ui/widget/view/home/HomeBloodPressureView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0244
    .end annotation
.end field

.field home_heart_rate_view:Lcom/wakeup/smartband/ui/widget/view/home/HomeHeartRateView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0243
    .end annotation
.end field

.field home_sleep_view:Lcom/wakeup/smartband/ui/widget/view/home/HomeSleepView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0242
    .end annotation
.end field

.field home_step_count_view:Lcom/wakeup/smartband/ui/widget/view/home/HomeStepCountView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0241
    .end annotation
.end field

.field home_tired_view:Lcom/wakeup/smartband/ui/widget/view/home/HomeTiredView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0246
    .end annotation
.end field

.field private lastSyncDataTime:J

.field mCommonTopBar:Lcom/het/comres/widget/CommonTopBar;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f01c8
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

.field private mGetDataTask:Lcom/wakeup/smartband/ui/fragment/HomeFragment$GetDataTask;

.field private mHandler:Landroid/os/Handler;

.field private mManager:Lcom/wakeup/smartband/manager/CommandManager;

.field mPullToRefreshImage:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f023c
    .end annotation
.end field

.field ptrs:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f023f
    .end annotation
.end field

.field view:Landroid/view/View;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f023e
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

