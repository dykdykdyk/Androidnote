.class public final Ltwitter4j/HttpRequest;
.super Ljava/lang/Object;
.source "HttpRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final NULL_PARAMETERS:[Ltwitter4j/HttpParameter;

.field private static final serialVersionUID:J = 0x2eb4a519dbc50ddcL


# instance fields
.field private final authorization:Ltwitter4j/auth/Authorization;

.field private final method:Ltwitter4j/RequestMethod;

.field private final parameters:[Ltwitter4j/HttpParameter;

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

.field private final url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const/4 v0, 0x0

    new-array v0, v0, [Ltwitter4j/HttpParameter;

    sput-object v0, Ltwitter4j/HttpRequest;->NULL_PARAMETERS:[Ltwitter4j/HttpParameter;

    return-void
.end method

