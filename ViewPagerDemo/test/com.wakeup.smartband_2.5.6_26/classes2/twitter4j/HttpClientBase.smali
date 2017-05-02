.class public abstract Ltwitter4j/HttpClientBase;
.super Ljava/lang/Object;
.source "HttpClientBase.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ltwitter4j/HttpClient;


# static fields
.field private static final logger:Ltwitter4j/Logger;

.field private static final serialVersionUID:J = -0x6f42041d5227216dL


# instance fields
.field protected final CONF:Ltwitter4j/HttpClientConfiguration;

.field private final requestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const-class v0, Ltwitter4j/HttpClientBase;

    invoke-static {v0}, Ltwitter4j/Logger;->getLogger(Ljava/lang/Class;)Ltwitter4j/Logger;

    move-result-object v0

    sput-object v0, Ltwitter4j/HttpClientBase;->logger:Ltwitter4j/Logger;

    return-void
.end method

