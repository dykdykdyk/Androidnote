.class public Lcom/autonavi/amap/mapcore/interfaces/CameraAnimator;
.super Ljava/lang/Object;
.source "CameraAnimator.java"


# static fields
.field public static final CHANGE_CAMERA_MODE:I = 0x2

.field private static DECELERATION_RATE:F = 0.0f

.field public static final DEFAULT_DURATION:I = 0xfa

.field private static final END_TENSION:F = 1.0f

.field static final FLING_MODE:I = 0x1

.field private static final INFLEXION:F = 0.35f

.field private static final NB_SAMPLES:I = 0x64

.field private static final P1:F = 0.175f

.field private static final P2:F = 0.35000002f

.field private static final SPLINE_POSITION:[F

.field private static final SPLINE_TIME:[F

.field private static final START_TENSION:F = 0.5f

.field private static sViscousFluidNormalize:F

.field private static sViscousFluidScale:F


# instance fields
.field private isUseAnchor:Z

.field private mCurrBearing:F

.field private mCurrTilt:F

.field private mCurrVelocity:F

.field private mCurrX:I

.field private mCurrY:I

.field private mCurrZ:F

.field private mDeceleration:F

.field private mDeltaBearing:F

.field private mDeltaTilt:F

.field private mDeltaX:F

.field private mDeltaY:F

.field private mDeltaZ:F

.field private mDistance:I

.field private mDuration:J

.field private mDurationReciprocal:F

.field private mFinalBearing:F

.field private mFinalTilt:F

.field private mFinalX:I

.field private mFinalY:I

.field private mFinalZ:F

.field private mFinished:Z

.field private mFlingFriction:F

.field private mFlywheel:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMaxX:I

.field private mMaxY:I

.field private mMinX:I

.field private mMinY:I

.field private mMode:I

.field private mPhysicalCoeff:F

.field private final mPpi:F

.field private mStartBearing:F

.field private mStartTilt:F

.field private mStartTime:J

.field private mStartX:I

.field private mStartY:I

.field private mStartZ:F

.field private mVelocity:F


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .prologue
    const v13, 0x3e333333

    const/4 v4, 0x0

    const-wide v14, 0x3ee4f8b588e368f1L

    const/16 v12, 0x64

    const/high16 v1, 0x3f800000

    .line 57
    const-wide v2, 0x3fe8f5c28f5c28f6L

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    const-wide v6, 0x3feccccccccccccdL

    .line 58
    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    div-double/2addr v2, v6

    double-to-float v0, v2

    sput v0, Lcom/autonavi/amap/mapcore/interfaces/CameraAnimator;->DECELERATION_RATE:F

    .line 67
    const/16 v0, 0x65

    new-array v0, v0, [F

    sput-object v0, Lcom/autonavi/amap/mapcore/interfaces/CameraAnimator;->SPLINE_POSITION:[F

    .line 68
    const/16 v0, 0x65

    new-array v0, v0, [F

    sput-object v0, Lcom/autonavi/amap/mapcore/interfaces/CameraAnimator;->SPLINE_TIME:[F

    .line 80
    const/4 v0, 0x0

    move v5, v0

    move v2, v4

    :goto_32
    if-ge v5, v12, :cond_b7

    .line 81
    int-to-float v0, v5

    const/high16 v3, 0x42c80000

    div-float v6, v0, v3

    move v0, v1

    move v3, v2

    .line 86
    :goto_3b
    sub-float v2, v0, v3

    const/high16 v7, 0x40000000

    div-float/2addr v2, v7

    add-float/2addr v2, v3

    .line 87
    const/high16 v7, 0x40400000

    mul-float/2addr v7, v2

    sub-float v8, v1, v2

    mul-float/2addr v7, v8

    .line 88
    sub-float v8, v1, v2

    mul-float/2addr v8, v13

    const v9, 0x3eb33334

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    mul-float/2addr v8, v7

    mul-float v9, v2, v2

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    .line 89
    sub-float v9, v8, v6

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-double v10, v9

    cmpg-double v9, v10, v14

    if-gez v9, :cond_a7

    .line 96
    sget-object v0, Lcom/autonavi/amap/mapcore/interfaces/CameraAnimator;->SPLINE_POSITION:[F

    sub-float v8, v1, v2

    const/high16 v9, 0x3f000000

    mul-float/2addr v8, v9

    add-float/2addr v8, v2

    mul-float/2addr v7, v8

    mul-float v8, v2, v2

    mul-float/2addr v2, v8

    add-float/2addr v2, v7

    aput v2, v0, v5

    move v0, v1

    .line 102
    :goto_6f
    sub-float v2, v0, v4

    const/high16 v7, 0x40000000

    div-float/2addr v2, v7

    add-float/2addr v2, v4

    .line 103
    const/high16 v7, 0x40400000

    mul-float/2addr v7, v2

    sub-float v8, v1, v2

    mul-float/2addr v7, v8

    .line 104
    sub-float v8, v1, v2

    const/high16 v9, 0x3f000000

    mul-float/2addr v8, v9

    add-float/2addr v8, v2

    mul-float/2addr v8, v7

    mul-float v9, v2, v2

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    .line 105
    sub-float v9, v8, v6

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-double v10, v9

    cmpg-double v9, v10, v14

    if-gez v9, :cond_af

    .line 112
    sget-object v0, Lcom/autonavi/amap/mapcore/interfaces/CameraAnimator;->SPLINE_TIME:[F

    sub-float v6, v1, v2

    mul-float/2addr v6, v13

    const v8, 0x3eb33334

    mul-float/2addr v8, v2

    add-float/2addr v6, v8

    mul-float/2addr v6, v7

    mul-float v7, v2, v2

    mul-float/2addr v2, v7

    add-float/2addr v2, v6

    aput v2, v0, v5

    .line 80
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move v2, v3

    goto :goto_32

    .line 91
    :cond_a7
    cmpl-float v7, v8, v6

    if-lez v7, :cond_ad

    move v0, v2

    .line 92
    goto :goto_3b

    :cond_ad
    move v3, v2

    .line 94
    goto :goto_3b

    .line 107
    :cond_af
    cmpl-float v7, v8, v6

    if-lez v7, :cond_b5

    move v0, v2

    .line 108
    goto :goto_6f

    :cond_b5
    move v4, v2

    .line 110
    goto :goto_6f

    .line 114
    :cond_b7
    sget-object v0, Lcom/autonavi/amap/mapcore/interfaces/CameraAnimator;->SPLINE_POSITION:[F

    sget-object v2, Lcom/autonavi/amap/mapcore/interfaces/CameraAnimator;->SPLINE_TIME:[F

    aput v1, v2, v12

    aput v1, v0, v12

    .line 117
    const/high16 v0, 0x41000000

    sput v0, Lcom/autonavi/amap/mapcore/interfaces/CameraAnimator;->sViscousFluidScale:F

    .line 119
    sput v1, Lcom/autonavi/amap/mapcore/interfaces/CameraAnimator;->sViscousFluidNormalize:F

    .line 120
    invoke-static {v1}, Lcom/autonavi/amap/mapcore/interfaces/CameraAnimator;->viscousFluid(F)F

    move-result v0

    div-float v0, v1, v0

    sput v0, Lcom/autonavi/amap/mapcore/interfaces/CameraAnimator;->sViscousFluidNormalize:F

    .line 122
    return-void
.end method

