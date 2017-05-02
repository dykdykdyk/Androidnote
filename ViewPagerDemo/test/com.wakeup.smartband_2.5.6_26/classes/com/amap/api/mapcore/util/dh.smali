.class public Lcom/amap/api/mapcore/util/dh;
.super Ljava/lang/Object;
.source "ResourcesUtil.java"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-boolean v0, Lcom/amap/api/mapcore/util/dh;->a:Z

    .line 15
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/system/framework/amap.jar"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    sput-boolean v0, Lcom/amap/api/mapcore/util/dh;->a:Z

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .registers 1

