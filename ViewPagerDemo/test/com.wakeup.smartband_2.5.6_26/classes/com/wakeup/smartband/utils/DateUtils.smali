.class public Lcom/wakeup/smartband/utils/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# static fields
.field public static FORMAT_DATE:Ljava/lang/String;

.field public static FORMAT_MDHM_CN:Ljava/lang/String;

.field public static FORMAT_TIME:Ljava/lang/String;

.field public static MILLISECOND_OF_DAY:J

.field public static MILLISECOND_OF_HOUR:J

.field public static MILLISECOND_OF_MINUTE:J

.field private static dayTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 19
    const-string/jumbo v0, "MM\u6708dd\u65e5 HH:mm"

    sput-object v0, Lcom/wakeup/smartband/utils/DateUtils;->FORMAT_MDHM_CN:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, "MM\u6708dd\u65e5"

    sput-object v0, Lcom/wakeup/smartband/utils/DateUtils;->FORMAT_DATE:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, "dd\u65e5 HH"

    sput-object v0, Lcom/wakeup/smartband/utils/DateUtils;->FORMAT_TIME:Ljava/lang/String;

    .line 22
    const-wide/32 v0, 0xea60

    sput-wide v0, Lcom/wakeup/smartband/utils/DateUtils;->MILLISECOND_OF_MINUTE:J

    .line 23
    sget-wide v0, Lcom/wakeup/smartband/utils/DateUtils;->MILLISECOND_OF_MINUTE:J

    const-wide/16 v2, 0x3c

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/wakeup/smartband/utils/DateUtils;->MILLISECOND_OF_HOUR:J

    .line 24
    sget-wide v0, Lcom/wakeup/smartband/utils/DateUtils;->MILLISECOND_OF_HOUR:J

    const-wide/16 v2, 0x18

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/wakeup/smartband/utils/DateUtils;->MILLISECOND_OF_DAY:J

    .line 212
    const-wide/32 v0, 0x5265c00

    sput-wide v0, Lcom/wakeup/smartband/utils/DateUtils;->dayTime:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

