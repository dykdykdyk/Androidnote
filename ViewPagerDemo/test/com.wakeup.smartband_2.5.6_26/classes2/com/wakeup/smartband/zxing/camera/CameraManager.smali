.class public Lcom/wakeup/smartband/zxing/camera/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private autoFocusManager:Lcom/wakeup/smartband/zxing/camera/AutoFocusManager;

.field private camera:Landroid/hardware/Camera;

.field private final configManager:Lcom/wakeup/smartband/zxing/camera/CameraConfigurationManager;

.field private final context:Landroid/content/Context;

.field private initialized:Z

.field private parameter:Landroid/hardware/Camera$Parameters;

.field private final previewCallback:Lcom/wakeup/smartband/zxing/camera/PreviewCallback;

.field private previewing:Z

.field private requestedCameraId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const-class v0, Lcom/wakeup/smartband/zxing/camera/CameraManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wakeup/smartband/zxing/camera/CameraManager;->TAG:Ljava/lang/String;

    return-void
.end method

