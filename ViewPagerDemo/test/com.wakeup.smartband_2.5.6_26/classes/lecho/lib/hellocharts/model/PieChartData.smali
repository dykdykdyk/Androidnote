.class public Llecho/lib/hellocharts/model/PieChartData;
.super Llecho/lib/hellocharts/model/AbstractChartData;
.source "PieChartData.java"


# static fields
.field public static final DEFAULT_CENTER_CIRCLE_SCALE:F = 0.6f

.field public static final DEFAULT_CENTER_TEXT1_SIZE_SP:I = 0x2a

.field public static final DEFAULT_CENTER_TEXT2_SIZE_SP:I = 0x10

.field private static final DEFAULT_SLICE_SPACING_DP:I = 0x2


# instance fields
.field private centerCircleColor:I

.field private centerCircleScale:F

.field private centerText1:Ljava/lang/String;

.field private centerText1Color:I

.field private centerText1FontSize:I

.field private centerText1Typeface:Landroid/graphics/Typeface;

.field private centerText2:Ljava/lang/String;

.field private centerText2Color:I

.field private centerText2FontSize:I

.field private centerText2Typeface:Landroid/graphics/Typeface;

.field private formatter:Llecho/lib/hellocharts/formatter/PieChartValueFormatter;

.field private hasCenterCircle:Z

.field private hasLabels:Z

.field private hasLabelsOnlyForSelected:Z

.field private hasLabelsOutside:Z

.field private slicesSpacing:I

.field private values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Llecho/lib/hellocharts/model/SliceValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 5

