.class final Ltwitter4j/StdOutLogger;
.super Ltwitter4j/Logger;
.source "StdOutLogger.java"


# static fields
.field private static final DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 10
    invoke-static {}, Ltwitter4j/conf/ConfigurationContext;->getInstance()Ltwitter4j/conf/Configuration;

    move-result-object v0

    invoke-interface {v0}, Ltwitter4j/conf/Configuration;->isDebugEnabled()Z

    move-result v0

    sput-boolean v0, Ltwitter4j/StdOutLogger;->DEBUG:Z

    return-void
.end method

.method constructor <init>()V
    .registers 1

