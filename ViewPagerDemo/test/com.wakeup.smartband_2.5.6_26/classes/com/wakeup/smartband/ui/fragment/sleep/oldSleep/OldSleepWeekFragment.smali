.class public Lcom/wakeup/smartband/ui/fragment/sleep/oldSleep/OldSleepWeekFragment;
.super Landroid/support/v4/app/Fragment;
.source "OldSleepWeekFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wakeup/smartband/ui/fragment/sleep/oldSleep/OldSleepWeekFragment$ReadDbTask;
    }
.end annotation


# instance fields
.field private barChart3s:Lcom/wakeup/smartband/barcharformatter/BarChart3s;

.field private content:Landroid/app/Activity;

.field mChart:Lcom/github/mikephil/charting/charts/BarChart;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0207
    .end annotation
.end field

.field sleep_total_minute:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0256
    .end annotation
.end field

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
    .registers 1

