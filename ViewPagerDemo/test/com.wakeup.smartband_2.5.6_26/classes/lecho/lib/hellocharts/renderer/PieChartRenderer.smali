.class public Llecho/lib/hellocharts/renderer/PieChartRenderer;
.super Llecho/lib/hellocharts/renderer/AbstractChartRenderer;
.source "PieChartRenderer.java"


# static fields
.field private static final DEFAULT_LABEL_INSIDE_RADIUS_FACTOR:F = 0.7f

.field private static final DEFAULT_LABEL_OUTSIDE_RADIUS_FACTOR:F = 1.0f

.field private static final DEFAULT_START_ROTATION:I = 0x2d

.field private static final DEFAULT_TOUCH_ADDITIONAL_DP:I = 0x8

.field private static final MAX_WIDTH_HEIGHT:F = 100.0f

.field private static final MODE_DRAW:I = 0x0

.field private static final MODE_HIGHLIGHT:I = 0x1


# instance fields
.field private centerCirclePaint:Landroid/graphics/Paint;

.field private centerCircleScale:F

.field private centerCircleText1FontMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private centerCircleText1Paint:Landroid/graphics/Paint;

.field private centerCircleText2FontMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private centerCircleText2Paint:Landroid/graphics/Paint;

.field private circleFillRatio:F

.field private dataProvider:Llecho/lib/hellocharts/provider/PieChartDataProvider;

.field private drawCircleOval:Landroid/graphics/RectF;

.field private hasCenterCircle:Z

.field private hasLabels:Z

.field private hasLabelsOnlyForSelected:Z

.field private hasLabelsOutside:Z

.field private maxSum:F

.field private originCircleOval:Landroid/graphics/RectF;

.field private rotation:I

.field private separationLinesPaint:Landroid/graphics/Paint;

.field private slicePaint:Landroid/graphics/Paint;

.field private sliceVector:Landroid/graphics/PointF;

.field private softwareBitmap:Landroid/graphics/Bitmap;

.field private softwareCanvas:Landroid/graphics/Canvas;

.field private tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

.field private touchAdditional:I

.field private valueFormatter:Llecho/lib/hellocharts/formatter/PieChartValueFormatter;


# direct methods
