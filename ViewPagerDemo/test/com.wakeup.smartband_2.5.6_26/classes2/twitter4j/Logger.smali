.class public abstract Ltwitter4j/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static final LOGGER_FACTORY:Ltwitter4j/LoggerFactory;

.field private static final LOGGER_FACTORY_IMPLEMENTATION:Ljava/lang/String; = "twitter4j.loggerFactory"


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    .line 34
    const/4 v1, 0x0

    .line 36
    .local v1, "loggerFactory":Ltwitter4j/LoggerFactory;
    const-string/jumbo v4, "twitter4j.loggerFactory"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 37
    .local v2, "loggerFactoryImpl":Ljava/lang/String;
    if-eqz v2, :cond_e

    .line 38
    invoke-static {v2, v2}, Ltwitter4j/Logger;->getLoggerFactoryIfAvailable(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/LoggerFactory;

    move-result-object v1

    .line 41
    :cond_e
    invoke-static {}, Ltwitter4j/conf/ConfigurationContext;->getInstance()Ltwitter4j/conf/Configuration;

    move-result-object v0

    .line 44
    .local v0, "conf":Ltwitter4j/conf/Configuration;
    invoke-interface {v0}, Ltwitter4j/conf/Configuration;->getLoggerFactory()Ljava/lang/String;

    move-result-object v2

    .line 45
    if-eqz v2, :cond_1c

    .line 46
    invoke-static {v2, v2}, Ltwitter4j/Logger;->getLoggerFactoryIfAvailable(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/LoggerFactory;

    move-result-object v1

    .line 49
    :cond_1c
    if-nez v1, :cond_28

    .line 50
    const-string/jumbo v4, "org.slf4j.impl.StaticLoggerBinder"

    const-string/jumbo v5, "twitter4j.SLF4JLoggerFactory"

    invoke-static {v4, v5}, Ltwitter4j/Logger;->getLoggerFactoryIfAvailable(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/LoggerFactory;

    move-result-object v1

    .line 53
    :cond_28
    if-nez v1, :cond_34

    .line 54
    const-string/jumbo v4, "org.apache.commons.logging.Log"

    const-string/jumbo v5, "twitter4j.CommonsLoggingLoggerFactory"

    invoke-static {v4, v5}, Ltwitter4j/Logger;->getLoggerFactoryIfAvailable(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/LoggerFactory;

    move-result-object v1

    .line 57
    :cond_34
    if-nez v1, :cond_40

    .line 58
    const-string/jumbo v4, "org.apache.log4j.Logger"

    const-string/jumbo v5, "twitter4j.Log4JLoggerFactory"

    invoke-static {v4, v5}, Ltwitter4j/Logger;->getLoggerFactoryIfAvailable(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/LoggerFactory;

    move-result-object v1

    .line 61
    :cond_40
    if-nez v1, :cond_4c

    .line 62
    const-string/jumbo v4, "com.google.appengine.api.urlfetch.URLFetchService"

    const-string/jumbo v5, "twitter4j.JULLoggerFactory"

    invoke-static {v4, v5}, Ltwitter4j/Logger;->getLoggerFactoryIfAvailable(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/LoggerFactory;

    move-result-object v1

    .line 65
    :cond_4c
    if-nez v1, :cond_53

    .line 66
    new-instance v1, Ltwitter4j/StdOutLoggerFactory;

    .end local v1    # "loggerFactory":Ltwitter4j/LoggerFactory;
    invoke-direct {v1}, Ltwitter4j/StdOutLoggerFactory;-><init>()V

    .line 68
    .restart local v1    # "loggerFactory":Ltwitter4j/LoggerFactory;
    :cond_53
    sput-object v1, Ltwitter4j/Logger;->LOGGER_FACTORY:Ltwitter4j/LoggerFactory;

    .line 71
    :try_start_55
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "dumpConfiguration"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 72
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 73
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6d
    .catch Ljava/lang/IllegalAccessException; {:try_start_55 .. :try_end_6d} :catch_72
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_55 .. :try_end_6d} :catch_70
    .catch Ljava/lang/NoSuchMethodException; {:try_start_55 .. :try_end_6d} :catch_6e

    .line 78
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :goto_6d
    return-void

    .line 76
    :catch_6e
    move-exception v4

    goto :goto_6d

    .line 75
    :catch_70
    move-exception v4

    goto :goto_6d

    .line 74
    :catch_72
    move-exception v4

    goto :goto_6d
.end method

.method public constructor <init>()V
    .registers 1

