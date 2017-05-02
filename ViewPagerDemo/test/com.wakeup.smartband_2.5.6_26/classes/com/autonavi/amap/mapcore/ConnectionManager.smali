.class public Lcom/autonavi/amap/mapcore/ConnectionManager;
.super Lcom/autonavi/amap/mapcore/SingalThread;
.source "ConnectionManager.java"


# static fields
.field private static final MAX_THREAD_COUNT:I = 0x1


# instance fields
.field private connPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/BaseMapLoader;",
            ">;"
        }
    .end annotation
.end field

.field mGLMapEngine:Lcom/autonavi/amap/mapcore/MapCore;

.field threadFlag:Z

.field private threadPool:Ljava/util/concurrent/ExecutorService;

.field private threadPoolList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
