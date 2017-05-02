.class final Ltwitter4j/StdOutLoggerFactory;
.super Ltwitter4j/LoggerFactory;
.source "StdOutLoggerFactory.java"


# static fields
.field private static final SINGLETON:Ltwitter4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    new-instance v0, Ltwitter4j/StdOutLogger;

    invoke-direct {v0}, Ltwitter4j/StdOutLogger;-><init>()V

    sput-object v0, Ltwitter4j/StdOutLoggerFactory;->SINGLETON:Ltwitter4j/Logger;

    return-void
.end method

.method constructor <init>()V
    .registers 1

