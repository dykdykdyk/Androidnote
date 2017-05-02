.class public Lcom/amap/api/mapcore/util/bg;
.super Lcom/amap/api/maps/offlinemap/OfflineMapCity;
.source "CityObject.java"

# interfaces
.implements Lcom/amap/api/mapcore/util/bq;
.implements Lcom/amap/api/mapcore/util/cg;


# static fields
.field public static final l:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/amap/api/mapcore/util/bg;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lcom/amap/api/mapcore/util/cl;

.field public b:Lcom/amap/api/mapcore/util/cl;

.field public c:Lcom/amap/api/mapcore/util/cl;

.field public d:Lcom/amap/api/mapcore/util/cl;

.field public e:Lcom/amap/api/mapcore/util/cl;

.field public f:Lcom/amap/api/mapcore/util/cl;

.field public g:Lcom/amap/api/mapcore/util/cl;

.field public h:Lcom/amap/api/mapcore/util/cl;

.field i:Lcom/amap/api/mapcore/util/cl;

.field j:Landroid/content/Context;

.field k:Z

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 654
    new-instance v0, Lcom/amap/api/mapcore/util/bh;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/bh;-><init>()V

    sput-object v0, Lcom/amap/api/mapcore/util/bg;->l:Landroid/os/Parcelable$Creator;

    return-void
.end method

