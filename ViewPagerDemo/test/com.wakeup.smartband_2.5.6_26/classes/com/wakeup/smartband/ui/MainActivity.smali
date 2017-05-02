.class public Lcom/wakeup/smartband/ui/MainActivity;
.super Lcom/wakeup/smartband/base/BaseActivity;
.source "MainActivity.java"


# static fields
.field public static final REQUEST_CODE_LOCATION:I = 0x7b

.field private static final REQUEST_ENABLE_BT:I = 0x2

.field public static final TAG:Ljava/lang/String; = "MainActivity"

.field public static instance:Lcom/wakeup/smartband/ui/MainActivity; = null

.field private static final url:Ljava/lang/String; = "http://testwan.applinzi.com/weixinhao/api/api_type.php"


# instance fields
.field home_know:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0138
    .end annotation
.end field

.field home_know_pic:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0137
    .end annotation
.end field

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0135
    .end annotation
.end field

.field mFl_sliding:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0139
    .end annotation
.end field

.field mHold_fragment:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0136
    .end annotation
.end field

.field private mHomeFragment:Lcom/wakeup/smartband/ui/fragment/HomeFragment;

.field private mService:Lcom/wakeup/smartband/ble_service/BleService;

.field private mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 66
    const/4 v0, 0x0

    sput-object v0, Lcom/wakeup/smartband/ui/MainActivity;->instance:Lcom/wakeup/smartband/ui/MainActivity;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

