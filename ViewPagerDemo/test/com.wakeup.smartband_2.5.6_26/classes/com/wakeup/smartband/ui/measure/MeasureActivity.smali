.class public Lcom/wakeup/smartband/ui/measure/MeasureActivity;
.super Lcom/wakeup/smartband/base/BaseActivity;
.source "MeasureActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wakeup/smartband/ui/measure/MeasureActivity$GetDBModelTask;,
        Lcom/wakeup/smartband/ui/measure/MeasureActivity$MyHandler;
    }
.end annotation


# static fields
.field private static final CLOSE_ONE_KEY_MEASURE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MeasureActivity"

.field public static instance:Lcom/wakeup/smartband/ui/measure/MeasureActivity;


# instance fields
.field private FLAG_MEASURE:Z

.field mCommonTopBar:Lcom/het/comres/widget/CommonTopBar;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f01c8
    .end annotation
.end field

.field private mGetDBModelTask:Lcom/wakeup/smartband/ui/measure/MeasureActivity$GetDBModelTask;

.field private mHandler:Landroid/os/Handler;

.field private mManager:Lcom/wakeup/smartband/manager/CommandManager;

.field one_key_view:Lcom/wakeup/smartband/ui/widget/view/OneKeyView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f013c
    .end annotation
.end field

.field private root:Landroid/view/View;

.field tv_blood_oxygen:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0148
    .end annotation
.end field

.field tv_blood_pressure:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0145
    .end annotation
.end field

.field tv_heart_rate:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0142
    .end annotation
.end field

.field tv_measure_time:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f013f
    .end annotation
.end field

.field tv_one_key_measure:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f013d
    .end annotation
.end field

.field tv_tired:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f014b
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 65
    const/4 v0, 0x0

    sput-object v0, Lcom/wakeup/smartband/ui/measure/MeasureActivity;->instance:Lcom/wakeup/smartband/ui/measure/MeasureActivity;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

