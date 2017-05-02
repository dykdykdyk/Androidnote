.class public Lcom/wakeup/smartband/receiver/PhoneStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneStateReceiver.java"


# static fields
.field private static incomingFlag:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-boolean v0, Lcom/wakeup/smartband/receiver/PhoneStateReceiver;->incomingFlag:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

