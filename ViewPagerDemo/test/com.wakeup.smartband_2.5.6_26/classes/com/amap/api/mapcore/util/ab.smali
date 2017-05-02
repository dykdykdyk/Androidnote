.class public Lcom/amap/api/mapcore/util/ab;
.super Ljava/lang/Object;
.source "MapFragmentDelegateImp.java"

# interfaces
.implements Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;


# static fields
.field public static volatile a:Landroid/content/Context;

.field public static c:I

.field public static d:I


# instance fields
.field public b:I

.field private e:Lcom/autonavi/amap/mapcore/interfaces/IAMapDelegate;

.field private f:I

.field private g:Lcom/amap/api/maps/AMapOptions;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput v0, Lcom/amap/api/mapcore/util/ab;->c:I

    .line 30
    const/4 v0, 0x1

    sput v0, Lcom/amap/api/mapcore/util/ab;->d:I

    return-void
.end method

