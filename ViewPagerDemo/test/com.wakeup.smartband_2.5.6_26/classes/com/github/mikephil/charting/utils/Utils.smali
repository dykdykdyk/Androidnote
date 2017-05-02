.class public abstract Lcom/github/mikephil/charting/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final DEG2RAD:D = 0.017453292519943295

.field public static final DOUBLE_EPSILON:D

.field public static final FDEG2RAD:F = 0.017453292f

.field public static final FLOAT_EPSILON:F

.field private static final POW_10:[I

.field private static mCalcTextHeightRect:Landroid/graphics/Rect;

.field private static mCalcTextSizeRect:Landroid/graphics/Rect;

.field private static mDefaultValueFormatter:Lcom/github/mikephil/charting/formatter/IValueFormatter;

.field private static mDrawTextRectBuffer:Landroid/graphics/Rect;

.field private static mFontMetrics:Landroid/graphics/Paint$FontMetrics;

.field private static mFontMetricsBuffer:Landroid/graphics/Paint$FontMetrics;

.field private static mMaximumFlingVelocity:I

.field private static mMetrics:Landroid/util/DisplayMetrics;

.field private static mMinimumFlingVelocity:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 37
    const/16 v0, 0x32

    sput v0, Lcom/github/mikephil/charting/utils/Utils;->mMinimumFlingVelocity:I

    .line 38
    const/16 v0, 0x1f40

    sput v0, Lcom/github/mikephil/charting/utils/Utils;->mMaximumFlingVelocity:I

    .line 43
    const-wide/high16 v0, 0x3ff0000000000000L

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    sput-wide v0, Lcom/github/mikephil/charting/utils/Utils;->DOUBLE_EPSILON:D

    .line 46
    const/high16 v0, 0x3f800000

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    sput v0, Lcom/github/mikephil/charting/utils/Utils;->FLOAT_EPSILON:F

    .line 158
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/github/mikephil/charting/utils/Utils;->mCalcTextHeightRect:Landroid/graphics/Rect;

    .line 175
    new-instance v0, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    sput-object v0, Lcom/github/mikephil/charting/utils/Utils;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 211
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/github/mikephil/charting/utils/Utils;->mCalcTextSizeRect:Landroid/graphics/Rect;

    .line 235
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_58

    sput-object v0, Lcom/github/mikephil/charting/utils/Utils;->POW_10:[I

    .line 239
    invoke-static {}, Lcom/github/mikephil/charting/utils/Utils;->generateDefaultValueFormatter()Lcom/github/mikephil/charting/formatter/IValueFormatter;

    move-result-object v0

    sput-object v0, Lcom/github/mikephil/charting/utils/Utils;->mDefaultValueFormatter:Lcom/github/mikephil/charting/formatter/IValueFormatter;

    .line 526
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/github/mikephil/charting/utils/Utils;->mDrawTextRectBuffer:Landroid/graphics/Rect;

    .line 527
    new-instance v0, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    sput-object v0, Lcom/github/mikephil/charting/utils/Utils;->mFontMetricsBuffer:Landroid/graphics/Paint$FontMetrics;

    return-void

    .line 235
    :array_58
    .array-data 4
        0x1
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
        0x3b9aca00
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

