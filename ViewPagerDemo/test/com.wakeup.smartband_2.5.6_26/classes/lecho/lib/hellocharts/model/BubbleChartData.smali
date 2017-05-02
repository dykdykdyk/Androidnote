.class public Llecho/lib/hellocharts/model/BubbleChartData;
.super Llecho/lib/hellocharts/model/AbstractChartData;
.source "BubbleChartData.java"


# static fields
.field public static final DEFAULT_BUBBLE_SCALE:F = 1.0f

.field public static final DEFAULT_MIN_BUBBLE_RADIUS_DP:I = 0x6


# instance fields
.field private bubbleScale:F

.field private formatter:Llecho/lib/hellocharts/formatter/BubbleChartValueFormatter;

.field private hasLabels:Z

.field private hasLabelsOnlyForSelected:Z

.field private minBubbleRadius:I

.field private values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Llecho/lib/hellocharts/model/BubbleValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

