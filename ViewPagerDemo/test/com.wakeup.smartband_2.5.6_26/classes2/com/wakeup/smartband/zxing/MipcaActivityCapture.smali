.class public final Lcom/wakeup/smartband/zxing/MipcaActivityCapture;
.super Lcom/wakeup/smartband/base/BaseActivity;
.source "MipcaActivityCapture.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnClickListener;


# static fields
.field static final BIND_TYPE_BLE:Ljava/lang/String; = "2"

.field static final BIND_TYPE_WIFI:Ljava/lang/String; = "1"

.field public static final QCODE:Ljava/lang/String; = "account/qrcode/"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private beepManager:Lcom/wakeup/smartband/zxing/utils/BeepManager;

.field private cameraManager:Lcom/wakeup/smartband/zxing/camera/CameraManager;

.field commonTopBar:Lcom/het/comres/widget/CommonTopBar;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f01c8
    .end annotation
.end field

.field private eventType:I

.field private handler:Lcom/wakeup/smartband/zxing/utils/CaptureActivityHandler;

.field private inactivityTimer:Lcom/wakeup/smartband/zxing/utils/InactivityTimer;

.field private isHasSurface:Z

.field private mCropRect:Landroid/graphics/Rect;

.field private mIntent:Landroid/content/Intent;

.field private scanPreview:Landroid/view/SurfaceView;

.field private viewfinderView:Lcom/wakeup/smartband/zxing/view/ViewfinderView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    const-class v0, Lcom/wakeup/smartband/zxing/MipcaActivityCapture;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wakeup/smartband/zxing/MipcaActivityCapture;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

