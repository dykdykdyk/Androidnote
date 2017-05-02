.class public Lcom/wakeup/smartband/ui/fragment/tired/TiredMonthFragment;
.super Lcom/wakeup/smartband/base/BaseFragment;
.source "TiredMonthFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wakeup/smartband/ui/fragment/tired/TiredMonthFragment$ReadDbTask;
    }
.end annotation


# instance fields
.field private barChart3s:Lcom/wakeup/smartband/barcharformatter/BarChart3s;

.field private content:Landroid/app/Activity;

.field heart_rate_state:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0233
    .end annotation
.end field

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

.field tv_average_tired:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f027f
    .end annotation
.end field

.field tv_health_detail:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0210
    .end annotation
.end field

.field tv_highest_tired:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0281
    .end annotation
.end field

.field tv_lowest_tired:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0283
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

