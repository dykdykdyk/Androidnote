.class public Lcom/zhy/http/okhttp/request/CountingRequestBody;
.super Lokhttp3/RequestBody;
.source "CountingRequestBody.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhy/http/okhttp/request/CountingRequestBody$Listener;,
        Lcom/zhy/http/okhttp/request/CountingRequestBody$CountingSink;
    }
.end annotation


# instance fields
.field protected countingSink:Lcom/zhy/http/okhttp/request/CountingRequestBody$CountingSink;

.field protected delegate:Lokhttp3/RequestBody;

.field protected listener:Lcom/zhy/http/okhttp/request/CountingRequestBody$Listener;


# direct methods
