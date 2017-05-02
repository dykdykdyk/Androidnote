.class public Lcom/wakeup/smartband/ui/fragment/step/StepDayFragment;
.super Lcom/wakeup/smartband/base/BaseFragment;
.source "StepDayFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wakeup/smartband/ui/fragment/step/StepDayFragment$ReadDbTask;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private barChart3s:Lcom/wakeup/smartband/barcharformatter/BarChart3s;

.field cal_value:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0266
    .end annotation
.end field

.field private calory:I

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

.field private kilo:D

.field mChart:Lcom/github/mikephil/charting/charts/BarChart;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0207
    .end annotation
.end field

.field mileage_value:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0263
    .end annotation
.end field

.field not_available_data:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0269
    .end annotation
.end field

.field pb_target_complete:Landroid/widget/ProgressBar;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0268
    .end annotation
.end field

.field private requestCode:I

.field private stepCount:I

.field private stepModel:Lcom/wakeup/smartband/model/StepAndSleepModel;

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


# direct methods
.method public constructor <init>()V
    .registers 2

