.class final Ltwitter4j/DispatcherImpl;
.super Ljava/lang/Object;
.source "DispatcherImpl.java"

# interfaces
.implements Ltwitter4j/Dispatcher;


# static fields
.field private static final SHUTDOWN_TIME:J = 0x1388L

.field private static final logger:Ltwitter4j/Logger;


# instance fields
.field private final executorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const-class v0, Ltwitter4j/DispatcherImpl;

    invoke-static {v0}, Ltwitter4j/Logger;->getLogger(Ljava/lang/Class;)Ltwitter4j/Logger;

    move-result-object v0

    sput-object v0, Ltwitter4j/DispatcherImpl;->logger:Ltwitter4j/Logger;

    return-void
.end method

