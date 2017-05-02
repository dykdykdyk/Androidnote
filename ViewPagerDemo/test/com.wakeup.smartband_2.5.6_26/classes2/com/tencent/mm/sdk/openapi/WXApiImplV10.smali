.class final Lcom/tencent/mm/sdk/openapi/WXApiImplV10;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/sdk/openapi/IWXAPI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mm/sdk/openapi/WXApiImplV10$1;,
        Lcom/tencent/mm/sdk/openapi/WXApiImplV10$ActivityLifecycleCb;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MicroMsg.SDK.WXApiImplV10"

.field private static activityCb:Lcom/tencent/mm/sdk/openapi/WXApiImplV10$ActivityLifecycleCb;

.field private static wxappPayEntryClassname:Ljava/lang/String;


# instance fields
.field private appId:Ljava/lang/String;

.field private checkSignature:Z

.field private context:Landroid/content/Context;

.field private detached:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->activityCb:Lcom/tencent/mm/sdk/openapi/WXApiImplV10$ActivityLifecycleCb;

    sput-object v0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->wxappPayEntryClassname:Ljava/lang/String;

    return-void
.end method

