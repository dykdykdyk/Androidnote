.class public Lcom/laiwang/sdk/utils/LWAPINotification;
.super Ljava/lang/Object;
.source "LWAPINotification.java"


# static fields
.field private static handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 17
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/laiwang/sdk/utils/LWAPINotification;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

