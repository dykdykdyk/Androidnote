.class final Lcom/tencent/mm/sdk/openapi/WXApiImplV10$ActivityLifecycleCb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mm/sdk/openapi/WXApiImplV10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ActivityLifecycleCb"
.end annotation


# static fields
.field private static final DELAYED:I = 0x320

.field private static final TAG:Ljava/lang/String; = "MicroMsg.SDK.WXApiImplV10.ActivityLifecycleCb"


# instance fields
.field private context:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field private isForeground:Z

.field private onPausedRunnable:Ljava/lang/Runnable;

.field private onResumedRunnable:Ljava/lang/Runnable;


# direct methods
