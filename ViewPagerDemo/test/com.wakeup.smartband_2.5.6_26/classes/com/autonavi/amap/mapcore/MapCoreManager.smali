.class public Lcom/autonavi/amap/mapcore/MapCoreManager;
.super Ljava/lang/Object;
.source "MapCoreManager.java"


# static fields
.field static mapCoreManager:Lcom/autonavi/amap/mapcore/MapCoreManager;


# instance fields
.field private mapCoreTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/autonavi/amap/mapcore/MapCore;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 111
    :try_start_0
    const-string/jumbo v0, "gdinamapv4sdk752"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 112
    const-string/jumbo v0, "gdinamapv4sdk752ex"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    .line 116
    :goto_c
    return-void

    .line 113
    :catch_d
    move-exception v0

    goto :goto_c
.end method

.method private constructor <init>()V
    .registers 2

