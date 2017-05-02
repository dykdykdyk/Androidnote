.class public Llecho/lib/hellocharts/renderer/AxesRenderer;
.super Ljava/lang/Object;
.source "AxesRenderer.java"


# static fields
.field private static final BOTTOM:I = 0x3

.field private static final DEFAULT_AXIS_MARGIN_DP:I = 0x2

.field private static final LEFT:I = 0x1

.field private static final RIGHT:I = 0x2

.field private static final TOP:I

.field private static final labelWidthChars:[C


# instance fields
.field private autoValuesBufferTab:[Llecho/lib/hellocharts/util/AxisAutoValues;

.field private autoValuesToDrawTab:[[F

.field private axisMargin:I

.field private chart:Llecho/lib/hellocharts/view/Chart;

.field private computator:Llecho/lib/hellocharts/computator/ChartComputator;

.field private density:F

.field private fontMetricsTab:[Landroid/graphics/Paint$FontMetricsInt;

.field private labelBaselineTab:[F

.field private labelBuffer:[C

.field private labelDimensionForMarginsTab:[I

.field private labelDimensionForStepsTab:[I

.field private labelPaintTab:[Landroid/graphics/Paint;

.field private labelTextAscentTab:[I

.field private labelTextDescentTab:[I

.field private labelWidthTab:[I

.field private linePaintTab:[Landroid/graphics/Paint;

.field private linesDrawBufferTab:[[F

.field private nameBaselineTab:[F

.field private namePaintTab:[Landroid/graphics/Paint;

.field private rawValuesTab:[[F

.field private scaledDensity:F

.field private separationLineTab:[F

.field private tiltedLabelXTranslation:[I

.field private tiltedLabelYTranslation:[I

.field private valuesToDrawNumTab:[I

.field private valuesToDrawTab:[[Llecho/lib/hellocharts/model/AxisValue;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelWidthChars:[C

    .line 43
    return-void

    .line 39
    :array_a
    .array-data 2
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
    .end array-data
.end method

