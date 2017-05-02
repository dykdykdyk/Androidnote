.class public final Ltwitter4j/conf/ConfigurationContext;
.super Ljava/lang/Object;
.source "ConfigurationContext.java"


# static fields
.field private static final CONFIGURATION_IMPL:Ljava/lang/String; = "twitter4j.configurationFactory"

.field private static final DEFAULT_CONFIGURATION_FACTORY:Ljava/lang/String; = "twitter4j.conf.PropertyConfigurationFactory"

.field private static final factory:Ltwitter4j/conf/ConfigurationFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    .line 34
    :try_start_0
    const-string/jumbo v5, "twitter4j.configurationFactory"

    const-string/jumbo v6, "twitter4j.conf.PropertyConfigurationFactory"

    invoke-static {v5, v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_9} :catch_17

    move-result-object v0

    .line 41
    .local v0, "CONFIG_IMPL":Ljava/lang/String;
    :goto_a
    :try_start_a
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ltwitter4j/conf/ConfigurationFactory;

    sput-object v5, Ltwitter4j/conf/ConfigurationContext;->factory:Ltwitter4j/conf/ConfigurationFactory;
    :try_end_16
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_16} :catch_1c
    .catch Ljava/lang/InstantiationException; {:try_start_a .. :try_end_16} :catch_23
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_16} :catch_2a

    .line 49
    return-void

    .line 35
    .end local v0    # "CONFIG_IMPL":Ljava/lang/String;
    :catch_17
    move-exception v4

    .line 37
    .local v4, "ignore":Ljava/lang/SecurityException;
    const-string/jumbo v0, "twitter4j.conf.PropertyConfigurationFactory"

    .restart local v0    # "CONFIG_IMPL":Ljava/lang/String;
    goto :goto_a

    .line 42
    .end local v4    # "ignore":Ljava/lang/SecurityException;
    :catch_1c
    move-exception v1

    .line 43
    .local v1, "cnfe":Ljava/lang/ClassNotFoundException;
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 44
    .end local v1    # "cnfe":Ljava/lang/ClassNotFoundException;
    :catch_23
    move-exception v3

    .line 45
    .local v3, "ie":Ljava/lang/InstantiationException;
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 46
    .end local v3    # "ie":Ljava/lang/InstantiationException;
    :catch_2a
    move-exception v2

    .line 47
    .local v2, "iae":Ljava/lang/IllegalAccessException;
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5
.end method

.method public constructor <init>()V
    .registers 1

