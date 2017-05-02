.class public final Ltwitter4j/TwitterFactory;
.super Ljava/lang/Object;
.source "TwitterFactory.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final DEFAULT_AUTHORIZATION:Ltwitter4j/auth/Authorization;

.field private static final SINGLETON:Ltwitter4j/Twitter;

.field private static final TWITTER_CONSTRUCTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<",
            "Ltwitter4j/Twitter;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x7d3ac09ed45ed66L


# instance fields
.field private final conf:Ltwitter4j/conf/Configuration;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .prologue
    .line 39
    invoke-static {}, Ltwitter4j/conf/ConfigurationContext;->getInstance()Ltwitter4j/conf/Configuration;

    move-result-object v7

    invoke-static {v7}, Ltwitter4j/auth/AuthorizationFactory;->getInstance(Ltwitter4j/conf/Configuration;)Ltwitter4j/auth/Authorization;

    move-result-object v7

    sput-object v7, Ltwitter4j/TwitterFactory;->DEFAULT_AUTHORIZATION:Ltwitter4j/auth/Authorization;

    .line 49
    :try_start_a
    const-string/jumbo v7, "com.google.appengine.api.urlfetch.URLFetchService"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_10
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_10} :catch_56

    .line 50
    const/4 v6, 0x1

    .line 55
    .local v6, "gaeDetected":Z
    :goto_11
    const/4 v1, 0x0

    .line 56
    .local v1, "className":Ljava/lang/String;
    if-eqz v6, :cond_20

    .line 57
    const-string/jumbo v0, "twitter4j.AppEngineTwitterImpl"

    .line 59
    .local v0, "APP_ENGINE_TWITTER_IMPL":Ljava/lang/String;
    :try_start_17
    const-string/jumbo v7, "twitter4j.AppEngineTwitterImpl"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 60
    const-string/jumbo v1, "twitter4j.AppEngineTwitterImpl"
    :try_end_20
    .catch Ljava/lang/ClassNotFoundException; {:try_start_17 .. :try_end_20} :catch_7c

    .line 64
    .end local v0    # "APP_ENGINE_TWITTER_IMPL":Ljava/lang/String;
    :cond_20
    :goto_20
    if-nez v1, :cond_25

    .line 65
    const-string/jumbo v1, "twitter4j.TwitterImpl"

    .line 70
    :cond_25
    :try_start_25
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 71
    .local v2, "clazz":Ljava/lang/Class;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ltwitter4j/conf/Configuration;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Ltwitter4j/auth/Authorization;

    aput-object v9, v7, v8

    invoke-virtual {v2, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_39
    .catch Ljava/lang/NoSuchMethodException; {:try_start_25 .. :try_end_39} :catch_59
    .catch Ljava/lang/ClassNotFoundException; {:try_start_25 .. :try_end_39} :catch_60

    move-result-object v4

    .line 77
    .local v4, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ltwitter4j/Twitter;>;"
    sput-object v4, Ltwitter4j/TwitterFactory;->TWITTER_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    .line 80
    :try_start_3c
    sget-object v7, Ltwitter4j/TwitterFactory;->TWITTER_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {}, Ltwitter4j/conf/ConfigurationContext;->getInstance()Ltwitter4j/conf/Configuration;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    sget-object v10, Ltwitter4j/TwitterFactory;->DEFAULT_AUTHORIZATION:Ltwitter4j/auth/Authorization;

    aput-object v10, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ltwitter4j/Twitter;

    sput-object v7, Ltwitter4j/TwitterFactory;->SINGLETON:Ltwitter4j/Twitter;
    :try_end_55
    .catch Ljava/lang/InstantiationException; {:try_start_3c .. :try_end_55} :catch_67
    .catch Ljava/lang/IllegalAccessException; {:try_start_3c .. :try_end_55} :catch_6e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3c .. :try_end_55} :catch_75

    .line 88
    return-void

    .line 51
    .end local v1    # "className":Ljava/lang/String;
    .end local v2    # "clazz":Ljava/lang/Class;
    .end local v4    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ltwitter4j/Twitter;>;"
    .end local v6    # "gaeDetected":Z
    :catch_56
    move-exception v3

    .line 52
    .local v3, "cnfe":Ljava/lang/ClassNotFoundException;
    const/4 v6, 0x0

    .restart local v6    # "gaeDetected":Z
    goto :goto_11

    .line 72
    .end local v3    # "cnfe":Ljava/lang/ClassNotFoundException;
    .restart local v1    # "className":Ljava/lang/String;
    :catch_59
    move-exception v5

    .line 73
    .local v5, "e":Ljava/lang/NoSuchMethodException;
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    .line 74
    .end local v5    # "e":Ljava/lang/NoSuchMethodException;
    :catch_60
    move-exception v5

    .line 75
    .local v5, "e":Ljava/lang/ClassNotFoundException;
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    .line 81
    .end local v5    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v2    # "clazz":Ljava/lang/Class;
    .restart local v4    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ltwitter4j/Twitter;>;"
    :catch_67
    move-exception v5

    .line 82
    .local v5, "e":Ljava/lang/InstantiationException;
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    .line 83
    .end local v5    # "e":Ljava/lang/InstantiationException;
    :catch_6e
    move-exception v5

    .line 84
    .local v5, "e":Ljava/lang/IllegalAccessException;
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    .line 85
    .end local v5    # "e":Ljava/lang/IllegalAccessException;
    :catch_75
    move-exception v5

    .line 86
    .local v5, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    .line 61
    .end local v2    # "clazz":Ljava/lang/Class;
    .end local v4    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ltwitter4j/Twitter;>;"
    .end local v5    # "e":Ljava/lang/reflect/InvocationTargetException;
    .restart local v0    # "APP_ENGINE_TWITTER_IMPL":Ljava/lang/String;
    :catch_7c
    move-exception v7

    goto :goto_20
.end method

.method public constructor <init>()V
    .registers 2

