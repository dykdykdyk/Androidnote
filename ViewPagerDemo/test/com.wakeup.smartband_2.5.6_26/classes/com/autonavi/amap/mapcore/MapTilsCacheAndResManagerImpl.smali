.class public Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManagerImpl;
.super Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;
.source "MapTilsCacheAndResManagerImpl.java"


# static fields
.field private static final CREATE_DIR_COUNT:I = 0x5

.field private static final Style_Update_Internal_Time:J = 0x2932e00L

.field private static volatile instance:Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManagerImpl;


# instance fields
.field private mCachePath:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mMapBaseDataPath:Ljava/lang/String;

.field private mMapExtResPath:Ljava/lang/String;

.field private mMapOfflinePath:Ljava/lang/String;

.field private mMapOnlineTilesPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManagerImpl;->instance:Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManagerImpl;

    return-void
.end method

