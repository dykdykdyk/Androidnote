.class public Lcom/zhy/http/okhttp/request/PostStringRequest;
.super Lcom/zhy/http/okhttp/request/OkHttpRequest;
.source "PostStringRequest.java"


# static fields
.field private static MEDIA_TYPE_PLAIN:Lokhttp3/MediaType;


# instance fields
.field private content:Ljava/lang/String;

.field private mediaType:Lokhttp3/MediaType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const-string/jumbo v0, "text/plain;charset=utf-8"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcom/zhy/http/okhttp/request/PostStringRequest;->MEDIA_TYPE_PLAIN:Lokhttp3/MediaType;

    return-void
.end method

