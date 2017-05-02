.class public Lcom/wakeup/smartband/ui/fragment/heartrate/HeartRateMonthFragment;
.super Lcom/wakeup/smartband/base/BaseFragment;
.source "HeartRateMonthFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wakeup/smartband/ui/fragment/heartrate/HeartRateMonthFragment$ReadDbTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HeartRateMonthFragment"


# instance fields
.field private barChart3s:Lcom/wakeup/smartband/barcharformatter/BarChart3s;

.field private content:Landroid/app/Activity;

.field private format:Ljava/text/SimpleDateFormat;

.field mChart:Lcom/github/mikephil/charting/charts/BarChart;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0207
    .end annotation
.end field

.field private monthDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field time_line_view:Lcom/wakeup/smartband/ui/widget/view/TimelineView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0206
    .end annotation
.end field

.field tv_average_heart_rate_value:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f022e
    .end annotation
.end field

.field tv_health_detail:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0210
    .end annotation
.end field

.field tv_heart_rate_state:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0233
    .end annotation
.end field

.field tv_highest_heart_rate_value:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0230
    .end annotation
.end field

.field tv_lowest_heart_rate_value:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0232
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

