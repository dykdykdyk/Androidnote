.class Lcom/sina/weibo/sdk/statistic/StatisticConfig;
.super Ljava/lang/Object;
.source "StatisticConfig.java"


# static fields
.field public static ACTIVITY_DURATION_OPEN:Z = false

.field private static final DEFAULT_UPLOAD_INTERVAL:J = 0x15f90L

.field private static final MAX_UPLOAD_INTERVAL:J = 0x1b77400L

.field public static final MIN_UPLOAD_INTERVAL:J = 0x7530L

.field public static kContinueSessionMillis:J

.field private static kForceUploadInterval:J

.field private static kUploadInterval:J

.field private static mAppkey:Ljava/lang/String;

.field private static mChannel:Ljava/lang/String;

.field private static mNeedGizp:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const-wide/16 v2, 0x7530

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 12
    sput-object v1, Lcom/sina/weibo/sdk/statistic/StatisticConfig;->mAppkey:Ljava/lang/String;

    .line 13
    sput-object v1, Lcom/sina/weibo/sdk/statistic/StatisticConfig;->mChannel:Ljava/lang/String;

    .line 19
    sput-boolean v0, Lcom/sina/weibo/sdk/statistic/StatisticConfig;->ACTIVITY_DURATION_OPEN:Z

    .line 20
    sput-boolean v0, Lcom/sina/weibo/sdk/statistic/StatisticConfig;->mNeedGizp:Z

    .line 22
    sput-wide v2, Lcom/sina/weibo/sdk/statistic/StatisticConfig;->kContinueSessionMillis:J

    .line 24
    const-wide/32 v0, 0x15f90

    sput-wide v0, Lcom/sina/weibo/sdk/statistic/StatisticConfig;->kUploadInterval:J

    .line 25
    sput-wide v2, Lcom/sina/weibo/sdk/statistic/StatisticConfig;->kForceUploadInterval:J

    return-void
.end method

.method constructor <init>()V
    .registers 1

