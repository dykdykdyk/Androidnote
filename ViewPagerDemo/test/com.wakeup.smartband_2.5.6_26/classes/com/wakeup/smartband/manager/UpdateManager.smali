.class public Lcom/wakeup/smartband/manager/UpdateManager;
.super Ljava/lang/Object;
.source "UpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wakeup/smartband/manager/UpdateManager$downloadApkThread;
    }
.end annotation


# static fields
.field private static final DOWNLOAD:I = 0x1

.field private static final DOWNLOAD_FINISH:I = 0x2

.field private static final IS_UPDATE:I = 0x3

.field private static final NO_INTERNET:I = 0x5

.field private static final NO_UPDATE:I = 0x4

.field private static final SERVICE_URL:Ljava/lang/String;

.field private static final UPDATE_ERROR:I = 0x6


# instance fields
.field private cancelUpdate:Z

.field private dialog:Landroid/app/Dialog;

.field private flag:I

.field private mCommPrompDialog:Lcom/het/comres/view/dialog/CommPrompDialog;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field mHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mProgress:Landroid/widget/ProgressBar;

.field private mSavePath:Ljava/lang/String;

.field private progress:I

.field private tvPrecent:Landroid/widget/TextView;

.field private versionBean:Lcom/wakeup/smartband/bean/VersionBean;

.field private versionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/wakeup/smartband/net/NetHelper;->basicUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/app.php/Api/updateandroid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wakeup/smartband/manager/UpdateManager;->SERVICE_URL:Ljava/lang/String;

    return-void
.end method

