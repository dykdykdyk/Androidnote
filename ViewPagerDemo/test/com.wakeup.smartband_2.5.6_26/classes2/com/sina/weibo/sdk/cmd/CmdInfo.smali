.class Lcom/sina/weibo/sdk/cmd/CmdInfo;
.super Ljava/lang/Object;
.source "CmdInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private frequency:I

.field private mInstallCmds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sina/weibo/sdk/cmd/AppInstallCmd;",
            ">;"
        }
    .end annotation
.end field

.field private mInvokeCmds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sina/weibo/sdk/cmd/AppInvokeCmd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    const-class v0, Lcom/sina/weibo/sdk/cmd/BaseCmd;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/cmd/CmdInfo;->TAG:Ljava/lang/String;

    return-void
.end method

