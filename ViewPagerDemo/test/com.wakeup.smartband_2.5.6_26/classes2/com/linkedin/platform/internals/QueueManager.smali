.class public Lcom/linkedin/platform/internals/QueueManager;
.super Ljava/lang/Object;
.source "QueueManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static queueManager:Lcom/linkedin/platform/internals/QueueManager;


# instance fields
.field private ctx:Landroid/content/Context;

.field private requestQueue:Lcom/android/volley/RequestQueue;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const-class v0, Lcom/linkedin/platform/internals/QueueManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/linkedin/platform/internals/QueueManager;->TAG:Ljava/lang/String;

    return-void
.end method

