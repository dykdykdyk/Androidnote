.class public Lcom/sina/weibo/sdk/api/share/VersionCheckHandler;
.super Ljava/lang/Object;
.source "VersionCheckHandler.java"

# interfaces
.implements Lcom/sina/weibo/sdk/api/share/IVersionCheckHandler;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    const-class v0, Lcom/sina/weibo/sdk/api/share/VersionCheckHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/api/share/VersionCheckHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

