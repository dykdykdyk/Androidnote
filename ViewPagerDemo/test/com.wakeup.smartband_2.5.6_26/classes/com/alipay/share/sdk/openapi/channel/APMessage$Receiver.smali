.class public final Lcom/alipay/share/sdk/openapi/channel/APMessage$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "APMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/share/sdk/openapi/channel/APMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Receiver"
.end annotation


# static fields
.field public static final callbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/share/sdk/openapi/channel/APMessage$CallBack;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final callBack:Lcom/alipay/share/sdk/openapi/channel/APMessage$CallBack;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/share/sdk/openapi/channel/APMessage$Receiver;->callbacks:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

