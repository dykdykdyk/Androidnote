.class public Llecho/lib/hellocharts/renderer/BubbleChartRenderer;
.super Llecho/lib/hellocharts/renderer/AbstractChartRenderer;
.source "BubbleChartRenderer.java"


# static fields
.field private static final DEFAULT_TOUCH_ADDITIONAL_DP:I = 0x4

.field private static final MODE_DRAW:I = 0x0

.field private static final MODE_HIGHLIGHT:I = 0x1


# instance fields
.field private bubbleCenter:Landroid/graphics/PointF;

.field private bubblePaint:Landroid/graphics/Paint;

.field private bubbleRect:Landroid/graphics/RectF;

.field private bubbleScaleX:F

.field private bubbleScaleY:F

.field private dataProvider:Llecho/lib/hellocharts/provider/BubbleChartDataProvider;

.field private hasLabels:Z

.field private hasLabelsOnlyForSelected:Z

.field private isBubbleScaledByX:Z

.field private maxRadius:F

.field private minRawRadius:F

.field private tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

.field private touchAdditional:I

.field private valueFormatter:Llecho/lib/hellocharts/formatter/BubbleChartValueFormatter;


# direct methods
