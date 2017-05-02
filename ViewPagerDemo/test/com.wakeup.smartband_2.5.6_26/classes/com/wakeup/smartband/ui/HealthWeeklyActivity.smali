.class public Lcom/wakeup/smartband/ui/HealthWeeklyActivity;
.super Lcom/wakeup/smartband/base/BaseActivity;
.source "HealthWeeklyActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wakeup/smartband/ui/HealthWeeklyActivity$HealthWeeklyAdapter;,
        Lcom/wakeup/smartband/ui/HealthWeeklyActivity$ReadDbTask;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "HealthWeeklyActivity"

.field public static TimeInMillisPerWeek:J


# instance fields
.field private chart:Lcom/github/mikephil/charting/charts/BarChart;

.field private healthWeeklyAdapter:Lcom/wakeup/smartband/ui/HealthWeeklyActivity$HealthWeeklyAdapter;

.field healthWeeklyBg:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0131
    .end annotation
.end field

.field private isCancel:Z

.field lv_health_weekly:Landroid/widget/ListView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0132
    .end annotation
.end field

.field mBack:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f01ca
    .end annotation
.end field

.field mCommonTopBar:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0316
    .end annotation
.end field

.field mShare:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0319
    .end annotation
.end field

.field mTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f031d
    .end annotation
.end field

.field private models:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/wakeup/smartband/model/DBModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private task:Lcom/wakeup/smartband/ui/HealthWeeklyActivity$ReadDbTask;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 58
    const-wide/32 v0, 0x240c8400

    sput-wide v0, Lcom/wakeup/smartband/ui/HealthWeeklyActivity;->TimeInMillisPerWeek:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

