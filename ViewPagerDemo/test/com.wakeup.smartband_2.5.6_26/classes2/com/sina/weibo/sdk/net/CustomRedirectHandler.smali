.class public abstract Lcom/sina/weibo/sdk/net/CustomRedirectHandler;
.super Ljava/lang/Object;
.source "CustomRedirectHandler.java"

# interfaces
.implements Lorg/apache/http/client/RedirectHandler;


# static fields
.field private static final MAX_REDIRECT_COUNT:I = 0xf

.field private static final TAG:Ljava/lang/String;


# instance fields
.field redirectCount:I

.field redirectUrl:Ljava/lang/String;

.field private tempRedirectUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const-class v0, Lcom/sina/weibo/sdk/net/CustomRedirectHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/net/CustomRedirectHandler;->TAG:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .registers 1

