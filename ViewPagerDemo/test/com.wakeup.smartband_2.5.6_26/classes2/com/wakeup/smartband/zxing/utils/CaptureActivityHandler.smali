.class public Lcom/wakeup/smartband/zxing/utils/CaptureActivityHandler;
.super Landroid/os/Handler;
.source "CaptureActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wakeup/smartband/zxing/utils/CaptureActivityHandler$State;
    }
.end annotation


# instance fields
.field private final activity:Lcom/wakeup/smartband/zxing/MipcaActivityCapture;

.field private final cameraManager:Lcom/wakeup/smartband/zxing/camera/CameraManager;

.field private final decodeThread:Lcom/wakeup/smartband/zxing/decode/DecodeThread;

.field private state:Lcom/wakeup/smartband/zxing/utils/CaptureActivityHandler$State;


# direct methods
