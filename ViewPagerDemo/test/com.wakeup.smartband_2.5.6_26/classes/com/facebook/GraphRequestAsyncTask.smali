.class public Lcom/facebook/GraphRequestAsyncTask;
.super Landroid/os/AsyncTask;
.source "GraphRequestAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/facebook/GraphResponse;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static executeOnExecutorMethod:Ljava/lang/reflect/Method;


# instance fields
.field private final connection:Ljava/net/HttpURLConnection;

.field private exception:Ljava/lang/Exception;

.field private final requests:Lcom/facebook/GraphRequestBatch;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 39
    const-class v2, Lcom/facebook/GraphRequestAsyncTask;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/facebook/GraphRequestAsyncTask;->TAG:Ljava/lang/String;

    .line 48
    const-class v2, Landroid/os/AsyncTask;

    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    .local v0, "method":Ljava/lang/reflect/Method;
    :goto_11
    if-ge v2, v5, :cond_3b

    aget-object v0, v4, v2

    .line 49
    const-string/jumbo v6, "executeOnExecutor"

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 50
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 51
    .local v1, "parameters":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v6, v1

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3c

    aget-object v6, v1, v3

    const-class v7, Ljava/util/concurrent/Executor;

    if-ne v6, v7, :cond_3c

    const/4 v6, 0x1

    aget-object v6, v1, v6

    .line 52
    invoke-virtual {v6}, Ljava/lang/Class;->isArray()Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 53
    sput-object v0, Lcom/facebook/GraphRequestAsyncTask;->executeOnExecutorMethod:Ljava/lang/reflect/Method;

    .line 58
    .end local v1    # "parameters":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_3b
    return-void

    .line 48
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_11
.end method

