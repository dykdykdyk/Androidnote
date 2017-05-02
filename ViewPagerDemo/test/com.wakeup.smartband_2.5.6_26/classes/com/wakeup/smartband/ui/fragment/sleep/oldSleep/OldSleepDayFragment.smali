.class public Lcom/wakeup/smartband/ui/fragment/sleep/oldSleep/OldSleepDayFragment;
.super Lcom/wakeup/smartband/base/BaseFragment;
.source "OldSleepDayFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wakeup/smartband/ui/fragment/sleep/oldSleep/OldSleepDayFragment$ReadDbTask;
    }
.end annotation


# static fields
.field private static handler:Landroid/os/Handler;


# instance fields
.field private TAG:Ljava/lang/String;

.field private barChart3s:Lcom/wakeup/smartband/barcharformatter/BarChart3s;

.field private context:Landroid/app/Activity;

.field private daylist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field getTv_yesterday_minutes:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0315
    .end annotation
.end field

.field mChart:Lcom/github/mikephil/charting/charts/BarChart;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0309
    .end annotation
.end field

.field sleep_total_minute:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f030c
    .end annotation
.end field

.field time_line_view:Lcom/wakeup/smartband/ui/widget/view/TimelineView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0308
    .end annotation
.end field

.field tv_deep_sleep_hour:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f030d
    .end annotation
.end field

.field tv_deep_sleep_minute:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f030e
    .end annotation
.end field

.field tv_shallow_sleep_hour:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0311
    .end annotation
.end field

.field tv_shallow_sleep_minute:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0312
    .end annotation
.end field

.field tv_sleep_total_hour:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f030b
    .end annotation
.end field

.field tv_wake_up_hour:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f030f
    .end annotation
.end field

.field tv_wake_up_minutes:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0310
    .end annotation
.end field

.field tv_wakeup_times:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0313
    .end annotation
.end field

.field tv_yesterday_sleep:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0314
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/wakeup/smartband/ui/fragment/sleep/oldSleep/OldSleepDayFragment;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

