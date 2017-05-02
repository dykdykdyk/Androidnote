.class Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;
.super Ljava/lang/Object;
.source "AppInstallCmdExecutor.java"

# interfaces
.implements Lcom/sina/weibo/sdk/cmd/CmdExecutor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor$InstallHandler;,
        Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor$NOTIFICATION_CONSTANTS;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sina/weibo/sdk/cmd/CmdExecutor",
        "<",
        "Lcom/sina/weibo/sdk/cmd/AppInstallCmd;",
        ">;"
    }
.end annotation


# static fields
.field private static final MESSAGE_DO_CMD:I = 0x1

.field private static final MESSAGE_QUIT_LOOP:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field private static final WB_APK_FILE_DIR:Ljava/lang/String;


# instance fields
.field private isStarted:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor$InstallHandler;

.field private mLooper:Landroid/os/Looper;

.field private thread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/Android/org_share_data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->WB_APK_FILE_DIR:Ljava/lang/String;

    .line 54
    const-class v0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->TAG:Ljava/lang/String;

    .line 58
    return-void
.end method

