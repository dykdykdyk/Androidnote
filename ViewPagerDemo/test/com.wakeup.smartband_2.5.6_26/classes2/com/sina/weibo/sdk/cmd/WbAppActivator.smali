.class public Lcom/sina/weibo/sdk/cmd/WbAppActivator;
.super Ljava/lang/Object;
.source "WbAppActivator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sina/weibo/sdk/cmd/WbAppActivator$FrequencyHelper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mInstance:Lcom/sina/weibo/sdk/cmd/WbAppActivator;


# instance fields
.field private mAppkey:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mInstallExecutor:Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;

.field private mInvokeExecutor:Lcom/sina/weibo/sdk/cmd/AppInvokeCmdExecutor;

.field private volatile mLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const-class v0, Lcom/sina/weibo/sdk/cmd/WbAppActivator;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->TAG:Ljava/lang/String;

    .line 33
    return-void
.end method

