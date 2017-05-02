.class Ltwitter4j/HttpClientImpl;
.super Ltwitter4j/HttpClientBase;
.source "HttpClientImpl.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ltwitter4j/HttpResponseCode;


# static fields
.field private static final instanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ltwitter4j/HttpClientConfiguration;",
            "Ltwitter4j/HttpClient;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Ltwitter4j/Logger;

.field private static final serialVersionUID:J = -0x599855c36357ce6L


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 32
    const-class v0, Ltwitter4j/HttpClientImpl;

    invoke-static {v0}, Ltwitter4j/Logger;->getLogger(Ljava/lang/Class;)Ltwitter4j/Logger;

    move-result-object v0

    sput-object v0, Ltwitter4j/HttpClientImpl;->logger:Ltwitter4j/Logger;

    .line 41
    :try_start_8
    const-string/jumbo v0, "android.os.Build$VERSION"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "SDK"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_2e

    .line 42
    const-string/jumbo v0, "http.keepAlive"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2e} :catch_37

    .line 58
    :cond_2e
    :goto_2e
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Ltwitter4j/HttpClientImpl;->instanceMap:Ljava/util/Map;

    return-void

    .line 44
    :catch_37
    move-exception v0

    goto :goto_2e
.end method

.method public constructor <init>()V
    .registers 2

