.class final Ltwitter4j/NullLoggerFactory;
.super Ltwitter4j/LoggerFactory;
.source "NullLoggerFactory.java"


# static fields
.field private static final SINGLETON:Ltwitter4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    new-instance v0, Ltwitter4j/NullLogger;

    invoke-direct {v0}, Ltwitter4j/NullLogger;-><init>()V

    sput-object v0, Ltwitter4j/NullLoggerFactory;->SINGLETON:Ltwitter4j/Logger;

    return-void
.end method

.method constructor <init>()V
    .registers 1

