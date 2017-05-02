.class public Llecho/lib/hellocharts/model/Line;
.super Ljava/lang/Object;
.source "Line.java"


# static fields
.field private static final DEFAULT_AREA_TRANSPARENCY:I = 0x40

.field private static final DEFAULT_LINE_STROKE_WIDTH_DP:I = 0x3

.field private static final DEFAULT_POINT_RADIUS_DP:I = 0x6


# instance fields
.field private areaTransparency:I

.field private color:I

.field private darkenColor:I

.field private formatter:Llecho/lib/hellocharts/formatter/LineChartValueFormatter;

.field private hasLabels:Z

.field private hasLabelsOnlyForSelected:Z

.field private hasLines:Z

.field private hasPoints:Z

.field private isCubic:Z

.field private isFilled:Z

.field private pathEffect:Landroid/graphics/PathEffect;

.field private pointRadius:I

.field private shape:Llecho/lib/hellocharts/model/ValueShape;

.field private strokeWidth:I

.field private values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Llecho/lib/hellocharts/model/PointValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

