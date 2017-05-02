.class public Lcom/wakeup/smartband/ui/alert/DisturbanceModelOrSedentarinessActivity;
.super Lcom/wakeup/smartband/base/BaseActivity;
.source "DisturbanceModelOrSedentarinessActivity.java"


# static fields
.field public static DISTURBANCEMODEL_OR_SEDENTARINESS:Ljava/lang/String;

.field public static YE_NODISTURBANCE:Z

.field public static YE_SEDENTARINESS:Z


# instance fields
.field private YE_FLAG:Z

.field private endTime:Ljava/lang/String;

.field private hour:Ljava/lang/String;

.field introduction:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0126
    .end annotation
.end field

.field ir_noti_on:Lcom/wakeup/smartband/ui/widget/ItemRelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f011d
    .end annotation
.end field

.field private isNotiOnChecked:Z

.field private iv_noti_on:Landroid/widget/ImageView;

.field loopView_hour:Lcom/wakeup/smartband/pickerview/LoopView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0128
    .end annotation
.end field

.field loopView_min:Lcom/wakeup/smartband/pickerview/LoopView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0129
    .end annotation
.end field

.field mCommonTopBar:Lcom/het/comres/widget/CommonTopBar;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f01c8
    .end annotation
.end field

.field private mManager:Lcom/wakeup/smartband/manager/CommandManager;

.field private mins:Ljava/lang/String;

.field rt_End:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0121
    .end annotation
.end field

.field rt_Start:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f011e
    .end annotation
.end field

.field rt_Time:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0127
    .end annotation
.end field

.field private sedentariness_noti_switch:Z

.field private startOrEndTime:I

.field private startTime:Ljava/lang/String;

.field private stringsh:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private stringsm:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field tv_End:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0123
    .end annotation
.end field

.field tv_Start:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f011f
    .end annotation
.end field

.field tv_Time_End:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0125
    .end annotation
.end field

.field tv_Time_Start:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0120
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 71
    const-string/jumbo v0, "disturbanceModelOrSedentariness"

    sput-object v0, Lcom/wakeup/smartband/ui/alert/DisturbanceModelOrSedentarinessActivity;->DISTURBANCEMODEL_OR_SEDENTARINESS:Ljava/lang/String;

    .line 73
    const/4 v0, 0x1

    sput-boolean v0, Lcom/wakeup/smartband/ui/alert/DisturbanceModelOrSedentarinessActivity;->YE_NODISTURBANCE:Z

    .line 75
    const/4 v0, 0x0

    sput-boolean v0, Lcom/wakeup/smartband/ui/alert/DisturbanceModelOrSedentarinessActivity;->YE_SEDENTARINESS:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

