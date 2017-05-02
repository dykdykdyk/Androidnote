.class public final Lcom/tencent/open/utils/ThreadManager;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/open/utils/ThreadManager$1;,
        Lcom/tencent/open/utils/ThreadManager$SerialExecutor;
    }
.end annotation


# static fields
.field public static final NETWORK_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static a:Landroid/os/Handler;

.field private static b:Ljava/lang/Object;

.field private static c:Landroid/os/Handler;

.field private static d:Landroid/os/HandlerThread;

.field private static e:Landroid/os/Handler;

.field private static f:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tencent/open/utils/ThreadManager;->b:Ljava/lang/Object;

    .line 48
    invoke-static {}, Lcom/tencent/open/utils/ThreadManager;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    sput-object v0, Lcom/tencent/open/utils/ThreadManager;->NETWORK_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .registers 1

