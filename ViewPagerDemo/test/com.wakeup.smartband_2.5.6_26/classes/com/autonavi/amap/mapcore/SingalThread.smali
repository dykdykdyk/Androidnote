.class public Lcom/autonavi/amap/mapcore/SingalThread;
.super Ljava/lang/Thread;
.source "SingalThread.java"


# instance fields
.field private isWaiting:Z

.field logTag:Ljava/lang/String;

.field private final mLock:Ljava/util/concurrent/locks/Lock;

.field private final mWaiting:Ljava/util/concurrent/locks/Condition;


# direct methods
.method public constructor <init>()V
    .registers 2

