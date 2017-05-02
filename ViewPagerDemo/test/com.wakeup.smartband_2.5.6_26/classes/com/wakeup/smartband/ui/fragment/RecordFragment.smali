.class public Lcom/wakeup/smartband/ui/fragment/RecordFragment;
.super Lcom/wakeup/smartband/base/BaseFragment;
.source "RecordFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wakeup/smartband/ui/fragment/RecordFragment$UpdateProgressThread;
    }
.end annotation


# static fields
.field private static final IS_SHOW_BTN:I = 0x3

.field private static final UPDATE_PROGRESS:I = 0x2

.field private static final UPDATE_TIMING:I = 0x1

.field public static endTime:J


# instance fields
.field private TimingTask:Ljava/lang/Runnable;

.field private averageSnr:I

.field private distance:F

.field private flag:Z

.field private googleMapActivity:Lcom/wakeup/smartband/ui/run/GoogleMapActivity;

.field private gpsCount:I

.field private handler:Landroid/os/Handler;

.field private lastEndTime:J

.field ll_point:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0249
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mManager:Lcom/wakeup/smartband/manager/CommandManager;

.field private mapActivity:Lcom/wakeup/smartband/ui/run/MapActivity;

.field private pointCount:I

.field rl_pause:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f024f
    .end annotation
.end field

.field scv_pause_btn_pregress:Lcom/wakeup/smartband/ui/widget/view/SemicircleView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0251
    .end annotation
.end field

.field private snrsum:F

.field private startTime:J

.field public time:Ljava/lang/String;

.field tv_complete:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f024b
    .end annotation
.end field

.field tv_continue:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f024c
    .end annotation
.end field

.field tv_distance:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0191
    .end annotation
.end field

.field tv_map_display:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0252
    .end annotation
.end field

.field tv_pause:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0250
    .end annotation
.end field

.field tv_record_gps:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0248
    .end annotation
.end field

.field tv_speed:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f024e
    .end annotation
.end field

.field tv_time:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f01aa
    .end annotation
.end field

.field tv_unit:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f024a
    .end annotation
.end field

.field private updateProgressThread:Lcom/wakeup/smartband/ui/fragment/RecordFragment$UpdateProgressThread;


# direct methods
.method public constructor <init>()V
    .registers 2

