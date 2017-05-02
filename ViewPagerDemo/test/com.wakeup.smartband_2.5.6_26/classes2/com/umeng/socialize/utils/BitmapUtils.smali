.class public Lcom/umeng/socialize/utils/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/utils/BitmapUtils$FileLastModifSort;
    }
.end annotation


# static fields
.field private static final CACHE_SIZE:I = 0xa

.field public static final COMPRESS_FLAG:I = 0x300000

.field public static final FOLDER:Ljava/lang/String; = "umeng_cache"

.field private static final FREE_SD_SPACE:I = 0x28

.field public static MAX_HEIGHT:I = 0x0

.field public static MAX_WIDTH:I = 0x0

.field private static final MB:I = 0x100000

.field public static PATH:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "BitmapUtils"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const-string/jumbo v0, "/mnt/sdcard/"

    sput-object v0, Lcom/umeng/socialize/utils/BitmapUtils;->PATH:Ljava/lang/String;

    .line 50
    invoke-static {}, Lcom/umeng/socialize/utils/BitmapUtils;->init()V

    .line 382
    const/16 v0, 0x300

    sput v0, Lcom/umeng/socialize/utils/BitmapUtils;->MAX_WIDTH:I

    .line 386
    const/16 v0, 0x400

    sput v0, Lcom/umeng/socialize/utils/BitmapUtils;->MAX_HEIGHT:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

