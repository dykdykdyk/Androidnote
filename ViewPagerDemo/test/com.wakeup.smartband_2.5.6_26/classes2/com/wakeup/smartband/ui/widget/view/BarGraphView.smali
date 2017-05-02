.class public Lcom/wakeup/smartband/ui/widget/view/BarGraphView;
.super Landroid/view/View;
.source "BarGraphView.java"


# static fields
.field private static final BAR_CONTENT_COLOR_DEF:I = -0x10000

.field private static final CANVAS_BG_COLOR_DEF:I

.field private static final CHART_TITLE_COLOR_DEF:I = -0x10000

.field private static final CHART_TITLE_SIZE_DEF:I = 0xa

.field private static final RECT_SPACE_DEF:I = 0x5

.field private static final VIEW_HEIGHT_DEF:I = 0xc8

.field private static mScale:F


# instance fields
.field private isShowValue:Z

.field private mAlixPaint:Landroid/graphics/Paint;

.field private mChartBarContentColor:I

.field private mChartBgColor:I

.field private mChartHeight:I

.field private mChartTitleColor:I

.field private mChartTitleTextSize:I

.field private mChartViewHeight:I

.field private mChartWidth:I

.field private mContentPaint:Landroid/graphics/Paint;

.field private mContext:Landroid/content/Context;

.field private mDensity:I

.field private mPaintTimes:I

.field private mResources:Landroid/content/res/Resources;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mTagPaint:Landroid/graphics/Paint;

.field private mTitle:Ljava/lang/String;

.field private mTitlePaint:Landroid/graphics/Paint;

.field private mTotalPaintTimes:I

.field private mUnitValue:I

.field private values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private xPoint:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const-string/jumbo v0, "#FFAAAAAA"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/wakeup/smartband/ui/widget/view/BarGraphView;->CANVAS_BG_COLOR_DEF:I

    .line 31
    const/high16 v0, 0x42c80000

    sput v0, Lcom/wakeup/smartband/ui/widget/view/BarGraphView;->mScale:F

    return-void
.end method

