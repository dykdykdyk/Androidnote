.class public Lcom/het/common/utils/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field private static SDK_PATH:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const-string/jumbo v0, "/mnt/sdcard/"

    sput-object v0, Lcom/het/common/utils/FileUtils;->SDK_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

