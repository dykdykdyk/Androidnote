.class public Lcom/wakeup/smartband/utils/TextShowUtils;
.super Ljava/lang/Object;
.source "TextShowUtils.java"


# static fields
.field private static handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/wakeup/smartband/utils/TextShowUtils;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

