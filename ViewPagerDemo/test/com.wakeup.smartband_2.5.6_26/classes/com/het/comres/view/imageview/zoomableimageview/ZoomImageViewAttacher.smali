.class public Lcom/het/comres/view/imageview/zoomableimageview/ZoomImageViewAttacher;
.super Ljava/lang/Object;
.source "ZoomImageViewAttacher.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Lcom/het/comres/view/imageview/zoomableimageview/IZoomImageView;
.implements Lcom/het/comres/view/imageview/zoomableimageview/VersionedGestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/het/comres/view/imageview/zoomableimageview/ZoomImageViewAttacher$FlingRunnable;,
        Lcom/het/comres/view/imageview/zoomableimageview/ZoomImageViewAttacher$AnimatedZoomRunnable;,
        Lcom/het/comres/view/imageview/zoomableimageview/ZoomImageViewAttacher$OnViewTapListener;,
        Lcom/het/comres/view/imageview/zoomableimageview/ZoomImageViewAttacher$OnPhotoTapListener;,
        Lcom/het/comres/view/imageview/zoomableimageview/ZoomImageViewAttacher$OnMatrixChangedListener;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field public static final DEFAULT_MAX_SCALE:F = 3.0f

.field public static final DEFAULT_MID_SCALE:F = 1.75f

.field public static final DEFAULT_MIN_SCALE:F = 1.0f

.field static final EDGE_BOTH:I = 0x2

.field static final EDGE_LEFT:I = 0x0

.field static final EDGE_NONE:I = -0x1

.field static final EDGE_RIGHT:I = 0x1

.field static final LOG_TAG:Ljava/lang/String; = "PhotoViewAttacher"

.field public static isNeedShowPopUp:Z

.field public static isSingleClick:Z


# instance fields
.field private mAllowParentInterceptOnEdge:Z

.field private final mBaseMatrix:Landroid/graphics/Matrix;

.field private mContext:Landroid/content/Context;

.field private mCurrentFlingRunnable:Lcom/het/comres/view/imageview/zoomableimageview/ZoomImageViewAttacher$FlingRunnable;

.field private final mDisplayRect:Landroid/graphics/RectF;

.field private final mDrawMatrix:Landroid/graphics/Matrix;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mImageView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mIvBottom:I

.field private mIvLeft:I

.field private mIvRight:I

.field private mIvTop:I

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mMatrixChangeListener:Lcom/het/comres/view/imageview/zoomableimageview/ZoomImageViewAttacher$OnMatrixChangedListener;

.field private final mMatrixValues:[F

.field private mMaxScale:F

.field private mMidScale:F

.field private mMinScale:F

.field private mPhotoTapListener:Lcom/het/comres/view/imageview/zoomableimageview/ZoomImageViewAttacher$OnPhotoTapListener;

.field private mScaleDragDetector:Lcom/het/comres/view/imageview/zoomableimageview/VersionedGestureDetector;

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field private mScrollEdge:I

.field private final mSuppMatrix:Landroid/graphics/Matrix;

.field private mViewTapListener:Lcom/het/comres/view/imageview/zoomableimageview/ZoomImageViewAttacher$OnViewTapListener;

.field private mViewTreeObserver:Landroid/view/ViewTreeObserver;

.field private mZoomEnabled:Z

.field private view:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 27
    const-string/jumbo v0, "PhotoViewAttacher"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/het/comres/view/imageview/zoomableimageview/ZoomImageViewAttacher;->DEBUG:Z

    .line 48
    sput-boolean v2, Lcom/het/comres/view/imageview/zoomableimageview/ZoomImageViewAttacher;->isSingleClick:Z

    .line 50
    sput-boolean v2, Lcom/het/comres/view/imageview/zoomableimageview/ZoomImageViewAttacher;->isNeedShowPopUp:Z

    return-void
.end method

