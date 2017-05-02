.class public Lcom/linj/camera/view/CameraView;
.super Landroid/view/SurfaceView;
.source "CameraView.java"

# interfaces
.implements Lcom/linj/camera/view/CameraOperation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linj/camera/view/CameraView$FlashMode;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CameraView"


# instance fields
.field private callback:Landroid/view/SurfaceHolder$Callback;

.field private mCamera:Landroid/hardware/Camera;

.field private mFlashMode:Lcom/linj/camera/view/CameraView$FlashMode;

.field private mIsFrontCamera:Z

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mOrientation:I

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mRecordPath:Ljava/lang/String;

.field private mZoom:I


# direct methods
