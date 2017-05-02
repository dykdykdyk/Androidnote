.class public Lcom/wakeup/smartband/ui/fragment/step/StepWeekFragment;
.super Landroid/support/v4/app/Fragment;
.source "StepWeekFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wakeup/smartband/ui/fragment/step/StepWeekFragment$ReadDbTask;
    }
.end annotation


# static fields
.field private static TimeInMillisPerHour:J


# instance fields
.field private TAG:Ljava/lang/String;

.field private barChart3s:Lcom/wakeup/smartband/barcharformatter/BarChart3s;

.field cal_value:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0266
    .end annotation
.end field

.field private content:Landroid/app/Activity;

.field mChart:Lcom/github/mikephil/charting/charts/BarChart;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0207
    .end annotation
.end field

.field mHealthDeatail:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0210
    .end annotation
.end field

.field mileage_value:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0263
    .end annotation
.end field

.field time_line_view:Lcom/wakeup/smartband/ui/widget/view/TimelineView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0206
    .end annotation
.end field

.field tv_distanceUnit:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0264
    .end annotation
.end field

.field walk_count:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0261
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
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 55
    const-wide/32 v0, 0x36ee80

    sput-wide v0, Lcom/wakeup/smartband/ui/fragment/step/StepWeekFragment;->TimeInMillisPerHour:J

    return-void
.end method

.method public constructor <init>()V
    .registers 2

