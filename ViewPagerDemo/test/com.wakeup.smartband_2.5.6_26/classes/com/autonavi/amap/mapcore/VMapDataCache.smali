.class public Lcom/autonavi/amap/mapcore/VMapDataCache;
.super Ljava/lang/Object;
.source "VMapDataCache.java"


# static fields
.field private static final MAXSIZE:I = 0x190

.field private static instance:Lcom/autonavi/amap/mapcore/VMapDataCache;


# instance fields
.field vCancelMapDataHs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/autonavi/amap/mapcore/e;",
            ">;"
        }
    .end annotation
.end field

.field vCancelMapDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field vMapDataHs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/autonavi/amap/mapcore/e;",
            ">;"
        }
    .end annotation
.end field

.field vMapDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

