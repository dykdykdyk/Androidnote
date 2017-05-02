.class public final Lim/yixin/sdk/channel/YXMessageChannel$Receiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/yixin/sdk/channel/YXMessageChannel;
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
            "Lim/yixin/sdk/channel/YXMessageChannel$CallBack;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final defaultCallback:Lim/yixin/sdk/channel/YXMessageChannel$CallBack;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lim/yixin/sdk/channel/YXMessageChannel$Receiver;->callbacks:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

