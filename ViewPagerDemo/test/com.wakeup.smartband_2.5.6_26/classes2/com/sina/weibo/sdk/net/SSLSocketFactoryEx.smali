.class public Lcom/sina/weibo/sdk/net/SSLSocketFactoryEx;
.super Lorg/apache/http/conn/ssl/SSLSocketFactory;
.source "SSLSocketFactoryEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sina/weibo/sdk/net/SSLSocketFactoryEx$KeyStoresTrustManagerEX;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field sslContext:Ljavax/net/ssl/SSLContext;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const-class v0, Lcom/sina/weibo/sdk/net/SSLSocketFactoryEx;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/net/SSLSocketFactoryEx;->TAG:Ljava/lang/String;

    return-void
.end method

