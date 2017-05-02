.class public Llecho/lib/hellocharts/model/ColumnChartData;
.super Llecho/lib/hellocharts/model/AbstractChartData;
.source "ColumnChartData.java"


# static fields
.field public static final DEFAULT_BASE_VALUE:F = 0.0f

.field public static final DEFAULT_FILL_RATIO:F = 0.75f


# instance fields
.field private baseValue:F

.field private columns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Llecho/lib/hellocharts/model/Column;",
            ">;"
        }
    .end annotation
.end field

.field private fillRatio:F

.field private isStacked:Z


# direct methods
.method public constructor <init>()V
    .registers 2

