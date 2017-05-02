.class public Lcom/umeng/socialize/common/QueuedWork;
.super Ljava/lang/Object;
.source "QueuedWork.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/common/QueuedWork$UMAsyncTask;,
        Lcom/umeng/socialize/common/QueuedWork$DialogThread;
    }
.end annotation


# static fields
.field private static uiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/umeng/socialize/common/QueuedWork;->uiHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

