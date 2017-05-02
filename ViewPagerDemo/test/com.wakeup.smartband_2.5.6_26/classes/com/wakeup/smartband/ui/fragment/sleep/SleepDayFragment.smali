.class public Lcom/wakeup/smartband/ui/fragment/sleep/SleepDayFragment;
.super Lcom/wakeup/smartband/base/BaseFragment;
.source "SleepDayFragment.java"

# interfaces
.implements Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wakeup/smartband/ui/fragment/sleep/SleepDayFragment$ReadDbTask;
    }
.end annotation


# static fields
.field private static final DOWNLOAD_SLEEP_DATA:I = 0x1


# instance fields
.field private TAG:Ljava/lang/String;

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

.field listAll:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wakeup/smartband/model/SleepChartModel;",
            ">;"
        }
    .end annotation
.end field

.field mChart:Lcom/github/mikephil/charting/charts/HorizontalBarChart;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0254
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mManager:Lcom/wakeup/smartband/manager/CommandManager;

.field myFmt:Ljava/text/SimpleDateFormat;

.field myFmt2:Ljava/text/SimpleDateFormat;

.field myFmt3:Ljava/text/SimpleDateFormat;

.field sleep_total_minute:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0256
    .end annotation
.end field

.field private timeInMillis:J

.field time_line_view:Lcom/wakeup/smartband/ui/widget/view/TimelineView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0206
    .end annotation
.end field

.field tv_deep_sleep_hour:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0173
    .end annotation
.end field

.field tv_deep_sleep_minute:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0174
    .end annotation
.end field

.field tv_shallow_sleep_hour:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0175
    .end annotation
.end field

.field tv_shallow_sleep_minute:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0176
    .end annotation
.end field

.field tv_sleep_total_hour:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0171
    .end annotation
.end field

.field tv_time_duration:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0253
    .end annotation
.end field

.field tv_wakeup_times:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0177
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

