.class final Lokhttp3/RealCall;
.super Ljava/lang/Object;
.source "RealCall.java"

# interfaces
.implements Lokhttp3/Call;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/RealCall$ApplicationInterceptorChain;,
        Lokhttp3/RealCall$AsyncCall;
    }
.end annotation


# instance fields
.field volatile canceled:Z

.field private final client:Lokhttp3/OkHttpClient;

.field engine:Lokhttp3/internal/http/HttpEngine;

.field private executed:Z

.field originalRequest:Lokhttp3/Request;


# direct methods
