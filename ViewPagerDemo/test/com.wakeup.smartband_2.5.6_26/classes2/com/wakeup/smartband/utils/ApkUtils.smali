.class public Lcom/wakeup/smartband/utils/ApkUtils;
.super Ljava/lang/Object;
.source "ApkUtils.java"


# static fields
.field private static APK_NAME:Ljava/lang/String; = null

.field public static final APK_URI:Ljava/lang/String; = "apkUri"

.field public static final APP_VERSION:Ljava/lang/String; = "appVersion"

.field public static final IS_INSTALL:Ljava/lang/String; = "isInstall"

.field private static PATH:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/update"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wakeup/smartband/utils/ApkUtils;->PATH:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, "clife.apk"

    sput-object v0, Lcom/wakeup/smartband/utils/ApkUtils;->APK_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

