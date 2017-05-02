.class public Lcom/zhy/http/okhttp/request/PostFileRequest;
.super Lcom/zhy/http/okhttp/request/OkHttpRequest;
.source "PostFileRequest.java"


# static fields
.field private static MEDIA_TYPE_STREAM:Lokhttp3/MediaType;


# instance fields
.field private file:Ljava/io/File;

.field private mediaType:Lokhttp3/MediaType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const-string/jumbo v0, "application/octet-stream"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcom/zhy/http/okhttp/request/PostFileRequest;->MEDIA_TYPE_STREAM:Lokhttp3/MediaType;

    return-void
.end method

