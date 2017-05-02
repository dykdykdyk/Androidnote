.class public Lcom/wakeup/smartband/ui/fragment/SlidingFragment;
.super Lcom/wakeup/smartband/base/BaseFragment;
.source "SlidingFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SlidingFragment"

.field public static batteryPercent:I

.field public static isCharging:Z


# instance fields
.field private final BLEStatusChangeReceiver:Landroid/content/BroadcastReceiver;

.field private isAppUpdate:Z

.field private isOtaUpdate:Z

.field private mManager:Lcom/wakeup/smartband/manager/CommandManager;

.field pb_battery_progress:Landroid/widget/ProgressBar;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0257
    .end annotation
.end field

.field tv_battery_percent:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0116
    .end annotation
.end field

.field tv_connect_state:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0101
    .end annotation
.end field

.field tv_device_manage:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f025d
    .end annotation
.end field

.field tv_disconnect_band:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0106
    .end annotation
.end field

.field tv_health_news:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f025a
    .end annotation
.end field

.field tv_personal_info:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0259
    .end annotation
.end field

.field tv_sliding_about:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f025f
    .end annotation
.end field

.field tv_sliding_setting:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f025e
    .end annotation
.end field

.field tv_takephoto:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f025b
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

