.class public Lcom/wakeup/smartband/ui/set/CheckUpdateActivity;
.super Lcom/wakeup/smartband/base/BaseActivity;
.source "CheckUpdateActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CheckUpdateActivity"

.field private static final url:Ljava/lang/String;


# instance fields
.field private firmware_path:Ljava/lang/String;

.field private folderName:Ljava/lang/String;

.field mCommonTopBar:Lcom/het/comres/widget/CommonTopBar;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f01c8
    .end annotation
.end field

.field private mCurrentVersion:F

.field private mDeviceAddress:Ljava/lang/String;

.field private mDeviceName:Ljava/lang/String;

.field private final mDfuProgressListener:Lno/nordicsemi/android/dfu/DfuProgressListener;

.field private mDownloadUrl:Ljava/lang/String;

.field private mLatestVersion:F

.field private mManager:Lcom/wakeup/smartband/manager/CommandManager;

.field mTv_current_version:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f00e5
    .end annotation
.end field

.field mTv_latest_version:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f00e8
    .end annotation
.end field

.field private mUpMsg:Ljava/lang/String;

.field private mVersion:Ljava/lang/String;

.field mtv_update:Landroid/widget/Button;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f00ea
    .end annotation
.end field

.field pb_update:Lcom/wakeup/smartband/ui/widget/view/CircleView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f00e0
    .end annotation
.end field

.field rl_latest_version:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f00e7
    .end annotation
.end field

.field tv_update_warn:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f00eb
    .end annotation
.end field

.field tv_version_name:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f00e4
    .end annotation
.end field

.field tv_version_state:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f00e2
    .end annotation
.end field

.field view2:Landroid/view/View;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f00e9
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/wakeup/smartband/net/NetHelper;->basicUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/app.php/Api/hardUpdate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wakeup/smartband/ui/set/CheckUpdateActivity;->url:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

