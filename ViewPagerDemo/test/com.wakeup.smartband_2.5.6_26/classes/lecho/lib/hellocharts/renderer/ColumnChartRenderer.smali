.class public Llecho/lib/hellocharts/renderer/ColumnChartRenderer;
.super Llecho/lib/hellocharts/renderer/AbstractChartRenderer;
.source "ColumnChartRenderer.java"


# static fields
.field public static final DEFAULT_COLUMN_TOUCH_ADDITIONAL_WIDTH_DP:I = 0x8

.field public static final DEFAULT_SUBCOLUMN_SPACING_DP:I = 0x1

.field private static final MODE_CHECK_TOUCH:I = 0x1

.field private static final MODE_DRAW:I = 0x0

.field private static final MODE_HIGHLIGHT:I = 0x2


# instance fields
.field private baseValue:F

.field private columnPaint:Landroid/graphics/Paint;

.field private dataProvider:Llecho/lib/hellocharts/provider/ColumnChartDataProvider;

.field private drawRect:Landroid/graphics/RectF;

.field private fillRatio:F

.field private subcolumnSpacing:I

.field private tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

.field private touchAdditionalWidth:I

.field private touchedPoint:Landroid/graphics/PointF;


# direct methods
