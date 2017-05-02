.class public abstract Lcom/amap/api/mapcore/util/cv;
.super Ljava/lang/Object;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/cv$a;,
        Lcom/amap/api/mapcore/util/cv$e;,
        Lcom/amap/api/mapcore/util/cv$b;,
        Lcom/amap/api/mapcore/util/cv$d;,
        Lcom/amap/api/mapcore/util/cv$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/concurrent/ThreadFactory;

.field public static final b:Ljava/util/concurrent/Executor;

.field public static final c:Ljava/util/concurrent/Executor;

.field public static final d:Ljava/util/concurrent/Executor;

.field private static final e:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Lcom/amap/api/mapcore/util/cv$b;

.field private static volatile g:Ljava/util/concurrent/Executor;


# instance fields
.field private final h:Lcom/amap/api/mapcore/util/cv$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amap/api/mapcore/util/cv$e",
            "<TParams;TResult;>;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<TResult;>;"
        }
    .end annotation
.end field

.field private volatile j:Lcom/amap/api/mapcore/util/cv$d;

.field private final k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final l:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .prologue
    const/4 v10, 0x0

    .line 241
    new-instance v0, Lcom/amap/api/mapcore/util/cw;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/cw;-><init>()V

    sput-object v0, Lcom/amap/api/mapcore/util/cv;->a:Ljava/util/concurrent/ThreadFactory;

    .line 249
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/amap/api/mapcore/util/cv;->e:Ljava/util/concurrent/BlockingQueue;

    .line 255
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x5

    const/16 v3, 0x80

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/amap/api/mapcore/util/cv;->e:Ljava/util/concurrent/BlockingQueue;

    sget-object v8, Lcom/amap/api/mapcore/util/cv;->a:Ljava/util/concurrent/ThreadFactory;

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v1, Lcom/amap/api/mapcore/util/cv;->b:Ljava/util/concurrent/Executor;

    .line 264
    invoke-static {}, Lcom/amap/api/mapcore/util/dj;->c()Z

    move-result v0

    if-eqz v0, :cond_4a

    new-instance v0, Lcom/amap/api/mapcore/util/cv$c;

    invoke-direct {v0, v10}, Lcom/amap/api/mapcore/util/cv$c;-><init>(Lcom/amap/api/mapcore/util/cw;)V

    .line 265
    :goto_33
    sput-object v0, Lcom/amap/api/mapcore/util/cv;->c:Ljava/util/concurrent/Executor;

    .line 267
    const/4 v0, 0x2

    sget-object v1, Lcom/amap/api/mapcore/util/cv;->a:Ljava/util/concurrent/ThreadFactory;

    .line 268
    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore/util/cv;->d:Ljava/util/concurrent/Executor;

    .line 273
    new-instance v0, Lcom/amap/api/mapcore/util/cv$b;

    invoke-direct {v0, v10}, Lcom/amap/api/mapcore/util/cv$b;-><init>(Lcom/amap/api/mapcore/util/cw;)V

    sput-object v0, Lcom/amap/api/mapcore/util/cv;->f:Lcom/amap/api/mapcore/util/cv$b;

    .line 275
    sget-object v0, Lcom/amap/api/mapcore/util/cv;->c:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/amap/api/mapcore/util/cv;->g:Ljava/util/concurrent/Executor;

    return-void

    .line 264
    :cond_4a
    sget-object v0, Lcom/amap/api/mapcore/util/cv;->a:Ljava/util/concurrent/ThreadFactory;

    .line 265
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    goto :goto_33
.end method

.method public constructor <init>()V
    .registers 3

