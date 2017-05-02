.class public Llecho/lib/hellocharts/renderer/LineChartRenderer;
.super Llecho/lib/hellocharts/renderer/AbstractChartRenderer;
.source "LineChartRenderer.java"


# static fields
.field private static final DEFAULT_LINE_STROKE_WIDTH_DP:I = 0x3

.field private static final DEFAULT_TOUCH_TOLERANCE_MARGIN_DP:I = 0x4

.field private static final LINE_SMOOTHNESS:F = 0.16f

.field private static final MODE_DRAW:I = 0x0

.field private static final MODE_HIGHLIGHT:I = 0x1


# instance fields
.field private baseValue:F

.field private checkPrecision:I

.field private dataProvider:Llecho/lib/hellocharts/provider/LineChartDataProvider;

.field private linePaint:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;

.field private pointPaint:Landroid/graphics/Paint;

.field private smallpointPaint:Landroid/graphics/Paint;

.field private softwareBitmap:Landroid/graphics/Bitmap;

.field private softwareCanvas:Landroid/graphics/Canvas;

.field private tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

.field private textPaint:Landroid/graphics/Paint;

.field private touchToleranceMargin:I


# direct methods
