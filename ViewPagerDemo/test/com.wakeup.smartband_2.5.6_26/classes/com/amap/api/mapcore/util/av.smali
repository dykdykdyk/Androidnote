.class public Lcom/amap/api/mapcore/util/av;
.super Ljava/lang/Object;
.source "TileOverlayDelegateImp.java"

# interfaces
.implements Lcom/autonavi/amap/mapcore/interfaces/ITileOverlayDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/av$a;,
        Lcom/amap/api/mapcore/util/av$b;
    }
.end annotation


# static fields
.field private static g:I


# instance fields
.field private a:Lcom/amap/api/mapcore/util/aw;

.field private b:Lcom/amap/api/maps/model/TileProvider;

.field private c:Ljava/lang/Float;

.field private d:Z

.field private e:Z

.field private f:Lcom/autonavi/amap/mapcore/interfaces/IAMapDelegate;

.field private h:I

.field private i:I

.field private j:I

.field private k:Lcom/amap/api/mapcore/util/db;

.field private l:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/amap/api/mapcore/util/av$a;",
            ">;"
        }
    .end annotation
.end field

.field private m:Z

.field private n:Lcom/amap/api/mapcore/util/av$b;

.field private o:Ljava/lang/String;

.field private p:Ljava/nio/FloatBuffer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput v0, Lcom/amap/api/mapcore/util/av;->g:I

    return-void
.end method

