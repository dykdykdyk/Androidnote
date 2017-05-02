.class public Lcom/zhy/http/okhttp/cookie/store/MemoryCookieStore;
.super Ljava/lang/Object;
.source "MemoryCookieStore.java"

# interfaces
.implements Lcom/zhy/http/okhttp/cookie/store/CookieStore;


# instance fields
.field private final allCookies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Cookie;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

