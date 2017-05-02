.class public Lcom/wakeup/smartband/ui/fragment/sleep/SleepWeekFragment;
.super Landroid/support/v4/app/Fragment;
.source "SleepWeekFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wakeup/smartband/ui/fragment/sleep/SleepWeekFragment$ReadDbTask;
    }
.end annotation


# instance fields
.field private context:Landroid/app/Activity;

.field private kong:I

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

.field listAll2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/wakeup/smartband/model/SleepChartModel;",
            ">;>;"
        }
    .end annotation
.end field

.field mChart:Lcom/github/mikephil/charting/charts/BarChart;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0207
    .end annotation
.end field

.field mv:Lcom/github/mikephil/charting/components/MarkerView;

.field myFmt:Ljava/text/SimpleDateFormat;

.field sleep_total_minute:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0256
    .end annotation
.end field

.field private time:J

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

.field tv_wakeup_times:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0177
    .end annotation
.end field

.field private weeklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

