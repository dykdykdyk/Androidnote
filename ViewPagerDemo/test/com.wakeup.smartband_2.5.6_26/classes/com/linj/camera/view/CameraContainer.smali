.class public Lcom/linj/camera/view/CameraContainer;
.super Landroid/widget/RelativeLayout;
.source "CameraContainer.java"

# interfaces
.implements Lcom/linj/camera/view/CameraOperation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linj/camera/view/CameraContainer$TakePictureListener;,
        Lcom/linj/camera/view/CameraContainer$DataHandler;,
        Lcom/linj/camera/view/CameraContainer$TouchListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CameraContainer"


# instance fields
.field private final autoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

.field private mCameraView:Lcom/linj/camera/view/CameraView;

.field private mDataHandler:Lcom/linj/camera/view/CameraContainer$DataHandler;

.field private mFocusImageView:Lcom/linj/camera/view/FocusImageView;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/linj/camera/view/CameraContainer$TakePictureListener;

.field private mRecordStartTime:J

.field private mRecordingInfoTextView:Landroid/widget/TextView;

.field private mSavePath:Ljava/lang/String;

.field private mTempImageView:Lcom/linj/camera/view/TempImageView;

.field private mTimeFormat:Ljava/text/SimpleDateFormat;

.field private mWaterMarkImageView:Landroid/widget/ImageView;

.field private mZoomSeekBar:Landroid/widget/SeekBar;

.field private final onSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private final pictureCallback:Landroid/hardware/Camera$PictureCallback;

.field recordRunnable:Ljava/lang/Runnable;


# direct methods
