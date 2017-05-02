.class public abstract Ltwitter4j/HttpResponse;
.super Ljava/lang/Object;
.source "HttpResponse.java"


# static fields
.field private static final logger:Ltwitter4j/Logger;


# instance fields
.field protected final CONF:Ltwitter4j/HttpClientConfiguration;

.field protected is:Ljava/io/InputStream;

.field private json:Ltwitter4j/JSONObject;

.field private jsonArray:Ltwitter4j/JSONArray;

.field protected responseAsString:Ljava/lang/String;

.field protected statusCode:I

.field private streamConsumed:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const-class v0, Ltwitter4j/HttpResponseImpl;

    invoke-static {v0}, Ltwitter4j/Logger;->getLogger(Ljava/lang/Class;)Ltwitter4j/Logger;

    move-result-object v0

    sput-object v0, Ltwitter4j/HttpResponse;->logger:Ltwitter4j/Logger;

    return-void
.end method

.method constructor <init>()V
    .registers 3

