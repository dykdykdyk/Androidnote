.class public Lcom/autonavi/amap/mapcore/VTMCDataCache;
.super Ljava/lang/Object;
.source "VTMCDataCache.java"


# static fields
.field public static final MAXSIZE:I = 0x1f4

.field public static final MAX_EXPIREDTIME:I = 0x12c

.field private static instance:Lcom/autonavi/amap/mapcore/VTMCDataCache;

.field static vtmcHs:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/autonavi/amap/mapcore/f;",
            ">;"
        }
    .end annotation
.end field

.field static vtmcList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mNewestTimeStamp:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/autonavi/amap/mapcore/VTMCDataCache;->vtmcHs:Ljava/util/Hashtable;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/autonavi/amap/mapcore/VTMCDataCache;->vtmcList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

