.class Lcom/amap/api/mapcore/util/p;
.super Ljava/lang/Object;
.source "CircleDelegateImp.java"

# interfaces
.implements Lcom/autonavi/amap/mapcore/interfaces/ICircleDelegate;


# static fields
.field private static m:F

.field private static n:I

.field private static o:I


# instance fields
.field private a:Lcom/amap/api/maps/model/LatLng;

.field private b:D

.field private c:F

.field private d:I

.field private e:I

.field private f:F

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Lcom/autonavi/amap/mapcore/interfaces/IAMapDelegate;

.field private j:Ljava/nio/FloatBuffer;

.field private k:I

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 264
    const v0, 0x4c18dfc2

    sput v0, Lcom/amap/api/mapcore/util/p;->m:F

    .line 265
    const/16 v0, 0x100

    sput v0, Lcom/amap/api/mapcore/util/p;->n:I

    .line 266
    const/16 v0, 0x14

    sput v0, Lcom/amap/api/mapcore/util/p;->o:I

    return-void
.end method

