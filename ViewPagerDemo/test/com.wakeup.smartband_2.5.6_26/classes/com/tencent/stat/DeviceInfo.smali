.class public Lcom/tencent/stat/DeviceInfo;
.super Ljava/lang/Object;


# static fields
.field public static final NEW_USER:I = 0x0

.field public static final OLD_USER:I = 0x1

.field public static final TAG_ANDROID_ID:Ljava/lang/String; = "aid"

.field public static final TAG_FLAG:Ljava/lang/String; = "__MTA_DEVICE_INFO__"

.field public static final TAG_IMEI:Ljava/lang/String; = "ui"

.field public static final TAG_MAC:Ljava/lang/String; = "mc"

.field public static final TAG_MID:Ljava/lang/String; = "mid"

.field public static final TAG_TIMESTAMPS:Ljava/lang/String; = "ts"

.field public static final TAG_VERSION:Ljava/lang/String; = "ver"

.field public static final UPGRADE_USER:I = 0x2

.field private static h:Lcom/tencent/stat/common/StatLogger;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/tencent/stat/common/k;->b()Lcom/tencent/stat/common/StatLogger;

    move-result-object v0

    sput-object v0, Lcom/tencent/stat/DeviceInfo;->h:Lcom/tencent/stat/common/StatLogger;

    return-void
.end method

.method constructor <init>()V
    .registers 3

