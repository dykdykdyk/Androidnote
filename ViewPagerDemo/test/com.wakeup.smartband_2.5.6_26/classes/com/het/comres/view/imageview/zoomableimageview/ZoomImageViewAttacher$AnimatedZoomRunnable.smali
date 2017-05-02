.class Lcom/het/comres/view/imageview/zoomableimageview/ZoomImageViewAttacher$AnimatedZoomRunnable;
.super Ljava/lang/Object;
.source "ZoomImageViewAttacher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/het/comres/view/imageview/zoomableimageview/ZoomImageViewAttacher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatedZoomRunnable"
.end annotation


# static fields
.field static final ANIMATION_SCALE_PER_ITERATION_IN:F = 1.07f

.field static final ANIMATION_SCALE_PER_ITERATION_OUT:F = 0.93f


# instance fields
.field private final mDeltaScale:F

.field private final mFocalX:F

.field private final mFocalY:F

.field private final mTargetZoom:F

.field final synthetic this$0:Lcom/het/comres/view/imageview/zoomableimageview/ZoomImageViewAttacher;


# direct methods
