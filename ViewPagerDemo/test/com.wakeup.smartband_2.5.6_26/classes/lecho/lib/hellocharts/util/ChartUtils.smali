.class public abstract Llecho/lib/hellocharts/util/ChartUtils;
.super Ljava/lang/Object;
.source "ChartUtils.java"


# static fields
.field public static final COLORS:[I

.field public static final COLOR_BLUE:I

.field public static final COLOR_GREEN:I

.field private static COLOR_INDEX:I = 0x0

.field public static final COLOR_ORANGE:I

.field public static final COLOR_RED:I

.field public static final COLOR_VIOLET:I

.field private static final DARKEN_INTENSITY:F = 0.9f

.field private static final DARKEN_SATURATION:F = 1.1f

.field public static final DEFAULT_COLOR:I

.field public static final DEFAULT_DARKEN_COLOR:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 9
    const-string/jumbo v0, "#DFDFDF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_COLOR:I

    .line 10
    const-string/jumbo v0, "#DDDDDD"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_DARKEN_COLOR:I

    .line 11
    const-string/jumbo v0, "#33B5E5"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Llecho/lib/hellocharts/util/ChartUtils;->COLOR_BLUE:I

    .line 12
    const-string/jumbo v0, "#AA66CC"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Llecho/lib/hellocharts/util/ChartUtils;->COLOR_VIOLET:I

    .line 13
    const-string/jumbo v0, "#99CC00"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Llecho/lib/hellocharts/util/ChartUtils;->COLOR_GREEN:I

    .line 14
    const-string/jumbo v0, "#FFBB33"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Llecho/lib/hellocharts/util/ChartUtils;->COLOR_ORANGE:I

    .line 15
    const-string/jumbo v0, "#FF4444"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Llecho/lib/hellocharts/util/ChartUtils;->COLOR_RED:I

    .line 16
    const/4 v0, 0x5

    new-array v0, v0, [I

    sget v1, Llecho/lib/hellocharts/util/ChartUtils;->COLOR_BLUE:I

    aput v1, v0, v3

    const/4 v1, 0x1

    sget v2, Llecho/lib/hellocharts/util/ChartUtils;->COLOR_VIOLET:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Llecho/lib/hellocharts/util/ChartUtils;->COLOR_GREEN:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Llecho/lib/hellocharts/util/ChartUtils;->COLOR_ORANGE:I

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Llecho/lib/hellocharts/util/ChartUtils;->COLOR_RED:I

    aput v2, v0, v1

    sput-object v0, Llecho/lib/hellocharts/util/ChartUtils;->COLORS:[I

    .line 19
    sput v3, Llecho/lib/hellocharts/util/ChartUtils;->COLOR_INDEX:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

