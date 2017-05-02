.class Lcom/sina/weibo/sdk/statistic/WBAgentExecutor;
.super Ljava/lang/Object;
.source "WBAgentExecutor.java"


# static fields
.field private static TIMEOUT:J

.field private static mExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 9
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 8
    sput-object v0, Lcom/sina/weibo/sdk/statistic/WBAgentExecutor;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 10
    const-wide/16 v0, 0x5

    sput-wide v0, Lcom/sina/weibo/sdk/statistic/WBAgentExecutor;->TIMEOUT:J

    return-void
.end method

.method constructor <init>()V
    .registers 1

