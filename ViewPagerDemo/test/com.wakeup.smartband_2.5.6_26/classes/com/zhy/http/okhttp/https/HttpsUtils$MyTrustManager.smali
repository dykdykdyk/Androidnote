.class Lcom/zhy/http/okhttp/https/HttpsUtils$MyTrustManager;
.super Ljava/lang/Object;
.source "HttpsUtils.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhy/http/okhttp/https/HttpsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyTrustManager"
.end annotation


# instance fields
.field private defaultTrustManager:Ljavax/net/ssl/X509TrustManager;

.field private localTrustManager:Ljavax/net/ssl/X509TrustManager;


# direct methods
