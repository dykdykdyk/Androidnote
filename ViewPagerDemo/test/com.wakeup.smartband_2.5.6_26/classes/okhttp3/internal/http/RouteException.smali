.class public final Lokhttp3/internal/http/RouteException;
.super Ljava/lang/Exception;
.source "RouteException.java"


# static fields
.field private static final addSuppressedExceptionMethod:Ljava/lang/reflect/Method;


# instance fields
.field private lastException:Ljava/io/IOException;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    .line 32
    :try_start_0
    const-class v2, Ljava/lang/Throwable;

    const-string/jumbo v3, "addSuppressed"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/Throwable;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_14

    move-result-object v1

    .line 36
    .local v1, "m":Ljava/lang/reflect/Method;
    :goto_11
    sput-object v1, Lokhttp3/internal/http/RouteException;->addSuppressedExceptionMethod:Ljava/lang/reflect/Method;

    .line 37
    return-void

    .line 33
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :catch_14
    move-exception v0

    .line 34
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .restart local v1    # "m":Ljava/lang/reflect/Method;
    goto :goto_11
.end method

