.class public Lcom/tencent/connect/common/UIListenerManager;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/connect/common/UIListenerManager$ApiTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "openSDK_LOG.UIListenerManager"

.field private static mInstance:Lcom/tencent/connect/common/UIListenerManager;


# instance fields
.field private mListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/connect/common/UIListenerManager$ApiTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/connect/common/UIListenerManager;->mInstance:Lcom/tencent/connect/common/UIListenerManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

