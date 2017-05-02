.class public Lcom/wakeup/smartband/ui/fragment/bloodoxygen/BloodOxygenMonthFragment;
.super Lcom/wakeup/smartband/base/BaseFragment;
.source "BloodOxygenMonthFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wakeup/smartband/ui/fragment/bloodoxygen/BloodOxygenMonthFragment$ReadDbTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BloodOxygenMonthFragment"


# instance fields
.field private barChart3s:Lcom/wakeup/smartband/barcharformatter/BarChart3s;

.field blood_pressure_state:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f020e
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

.field tv_average_blood_oxygen:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0209
    .end annotation
.end field

.field tv_highest_blood_pressure:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f020b
    .end annotation
.end field

.field tv_lowest_blood_pressure:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f020d
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

