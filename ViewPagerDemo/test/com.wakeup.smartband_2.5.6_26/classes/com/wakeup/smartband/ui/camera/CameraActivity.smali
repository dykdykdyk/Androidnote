.class public Lcom/wakeup/smartband/ui/camera/CameraActivity;
.super Lcom/wakeup/smartband/base/BaseActivity;
.source "CameraActivity.java"

# interfaces
.implements Lcom/linj/camera/view/CameraContainer$TakePictureListener;


# instance fields
.field btn_takephoto:Landroid/widget/Button;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f00dc
    .end annotation
.end field

.field camera_library:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f00db
    .end annotation
.end field

.field flashBtn:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f00d8
    .end annotation
.end field

.field mContainer:Lcom/linj/camera/view/CameraContainer;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f00d7
    .end annotation
.end field

.field private mRceiveDataReceiver:Landroid/content/BroadcastReceiver;

.field private mSaveRoot:Ljava/lang/String;

.field mThumbView:Lcom/linj/album/view/FilterImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f00da
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

