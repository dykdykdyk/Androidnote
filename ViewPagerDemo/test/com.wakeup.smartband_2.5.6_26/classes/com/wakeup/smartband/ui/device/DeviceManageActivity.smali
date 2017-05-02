.class public Lcom/wakeup/smartband/ui/device/DeviceManageActivity;
.super Lcom/wakeup/smartband/base/BaseActivity;
.source "DeviceManageActivity.java"


# static fields
.field public static instance:Lcom/wakeup/smartband/ui/device/DeviceManageActivity;


# instance fields
.field ir_on_time_measure:Lcom/wakeup/smartband/ui/widget/ItemRelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f011b
    .end annotation
.end field

.field ir_up_lightscreen:Lcom/wakeup/smartband/ui/widget/ItemRelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f011a
    .end annotation
.end field

.field private isOnTimeMeasureChecked:Z

.field private isUpLightScreenChecked:Z

.field item_connect_manage:Lcom/het/comres/view/layout/ItemLinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0117
    .end annotation
.end field

.field item_find_band:Lcom/het/comres/view/layout/ItemLinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0118
    .end annotation
.end field

.field item_smart_alert:Lcom/het/comres/view/layout/ItemLinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0119
    .end annotation
.end field

.field item_version_update:Lcom/het/comres/view/layout/ItemLinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f011c
    .end annotation
.end field

.field private iv_on_time_measure:Landroid/widget/ImageView;

.field private iv_up_lightscreen:Landroid/widget/ImageView;

.field mCommonTopBar:Lcom/het/comres/widget/CommonTopBar;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f01c8
    .end annotation
.end field

.field private mManager:Lcom/wakeup/smartband/manager/CommandManager;

.field pb_remain_battery:Lcom/wakeup/smartband/ui/widget/view/CircleView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0115
    .end annotation
.end field

.field private root:Landroid/view/View;

.field tv_battery_percent:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0116
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/wakeup/smartband/ui/device/DeviceManageActivity;->instance:Lcom/wakeup/smartband/ui/device/DeviceManageActivity;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

