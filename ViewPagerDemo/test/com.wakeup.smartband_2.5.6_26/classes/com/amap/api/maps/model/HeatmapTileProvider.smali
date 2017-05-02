.class public Lcom/amap/api/maps/model/HeatmapTileProvider;
.super Ljava/lang/Object;
.source "HeatmapTileProvider.java"

# interfaces
.implements Lcom/amap/api/maps/model/TileProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/maps/model/HeatmapTileProvider$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_GRADIENT:Lcom/amap/api/maps/model/Gradient;

.field public static final DEFAULT_OPACITY:D = 0.6

.field public static final DEFAULT_RADIUS:I = 0xc

.field private static final a:[I

.field private static final b:[F


# instance fields
.field private c:Lcom/amap/api/maps/model/c;

.field private d:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/amap/api/maps/model/WeightedLatLng;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/amap/api/mapcore/util/cy;

.field private f:I

.field private g:Lcom/amap/api/maps/model/Gradient;

.field private h:[I

.field private i:[D

.field private j:D

.field private k:[D


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 43
    new-array v0, v4, [I

    const/16 v1, 0x66

    const/16 v2, 0xe1

    .line 44
    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v3

    const/4 v1, 0x1

    const/16 v2, 0xff

    .line 45
    invoke-static {v2, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    sput-object v0, Lcom/amap/api/maps/model/HeatmapTileProvider;->a:[I

    .line 48
    new-array v0, v4, [F

    fill-array-data v0, :array_2c

    sput-object v0, Lcom/amap/api/maps/model/HeatmapTileProvider;->b:[F

    .line 57
    new-instance v0, Lcom/amap/api/maps/model/Gradient;

    sget-object v1, Lcom/amap/api/maps/model/HeatmapTileProvider;->a:[I

    sget-object v2, Lcom/amap/api/maps/model/HeatmapTileProvider;->b:[F

    invoke-direct {v0, v1, v2}, Lcom/amap/api/maps/model/Gradient;-><init>([I[F)V

    sput-object v0, Lcom/amap/api/maps/model/HeatmapTileProvider;->DEFAULT_GRADIENT:Lcom/amap/api/maps/model/Gradient;

    return-void

    .line 48
    :array_2c
    .array-data 4
        0x3e4ccccd
        0x3f800000
    .end array-data
.end method

