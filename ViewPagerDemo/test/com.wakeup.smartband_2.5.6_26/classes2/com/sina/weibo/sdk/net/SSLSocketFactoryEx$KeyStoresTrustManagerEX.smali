.class public Lcom/sina/weibo/sdk/net/SSLSocketFactoryEx$KeyStoresTrustManagerEX;
.super Ljava/lang/Object;
.source "SSLSocketFactoryEx.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/sdk/net/SSLSocketFactoryEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyStoresTrustManagerEX"
.end annotation


# instance fields
.field protected x509TrustManagers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljavax/net/ssl/X509TrustManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
