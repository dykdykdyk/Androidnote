.class public Lcom/tencent/open/utils/HttpUtils$CustomSSLSocketFactory;
.super Lorg/apache/http/conn/ssl/SSLSocketFactory;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/open/utils/HttpUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomSSLSocketFactory"
.end annotation


# instance fields
.field private final a:Ljavax/net/ssl/SSLContext;


# direct methods
