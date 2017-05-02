.class public Lcom/het/comres/widget/DrawerArrowDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "DrawerArrowDrawable.java"


# static fields
.field private static final ARROW_HEAD_ANGLE:F


# instance fields
.field protected context:Landroid/content/Context;

.field protected mBarGap:F

.field protected mBarSize:F

.field protected mBarThickness:F

.field protected mMiddleArrowSize:F

.field protected final mPaint:Landroid/graphics/Paint;

.field protected final mPath:Landroid/graphics/Path;

.field protected mProgress:F

.field protected mSize:I

.field protected mTopBottomArrowSize:F

.field protected mVerticalMirror:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 15
    const-wide v0, 0x4046800000000000L

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/het/comres/widget/DrawerArrowDrawable;->ARROW_HEAD_ANGLE:F

    return-void
.end method

