.class public final Ltwitter4j/HttpClientFactory;
.super Ljava/lang/Object;
.source "HttpClientFactory.java"


# static fields
.field private static final HTTP_CLIENT_CONSTRUCTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private static final HTTP_CLIENT_IMPLEMENTATION:Ljava/lang/String; = "twitter4j.http.httpClient"

.field private static final confClientMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ltwitter4j/HttpClientConfiguration;",
            "Ltwitter4j/HttpClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    .line 34
    const/4 v0, 0x0

    .line 36
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v4, "twitter4j.http.httpClient"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 37
    .local v2, "httpClientImpl":Ljava/lang/String;
    if-eqz v2, :cond_e

    .line 39
    :try_start_a
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_d} :catch_44

    move-result-object v0

    .line 43
    :cond_e
    :goto_e
    if-nez v0, :cond_17

    .line 45
    :try_start_10
    const-string/jumbo v4, "twitter4j.AlternativeHttpClientImpl"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_16
    .catch Ljava/lang/ClassNotFoundException; {:try_start_10 .. :try_end_16} :catch_46

    move-result-object v0

    .line 49
    :cond_17
    :goto_17
    if-nez v0, :cond_20

    .line 51
    :try_start_19
    const-string/jumbo v4, "twitter4j.HttpClientImpl"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_19 .. :try_end_1f} :catch_36

    move-result-object v0

    .line 57
    :cond_20
    const/4 v4, 0x1

    :try_start_21
    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ltwitter4j/HttpClientConfiguration;

    aput-object v6, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    sput-object v4, Ltwitter4j/HttpClientFactory;->HTTP_CLIENT_CONSTRUCTOR:Ljava/lang/reflect/Constructor;
    :try_end_2e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_21 .. :try_end_2e} :catch_3d

    .line 63
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Ltwitter4j/HttpClientFactory;->confClientMap:Ljava/util/HashMap;

    return-void

    .line 52
    :catch_36
    move-exception v1

    .line 53
    .local v1, "cnfe":Ljava/lang/ClassNotFoundException;
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 58
    .end local v1    # "cnfe":Ljava/lang/ClassNotFoundException;
    :catch_3d
    move-exception v3

    .line 59
    .local v3, "nsme":Ljava/lang/NoSuchMethodException;
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 40
    .end local v3    # "nsme":Ljava/lang/NoSuchMethodException;
    :catch_44
    move-exception v4

    goto :goto_e

    .line 46
    :catch_46
    move-exception v4

    goto :goto_17
.end method

.method public constructor <init>()V
    .registers 1

