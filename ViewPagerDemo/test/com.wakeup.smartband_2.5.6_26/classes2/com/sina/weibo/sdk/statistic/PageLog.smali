.class Lcom/sina/weibo/sdk/statistic/PageLog;
.super Ljava/lang/Object;
.source "PageLog.java"


# static fields
.field private static FILE_SESSION:Ljava/lang/String;

.field private static MIN_ENDTIME:J


# instance fields
.field private mDuration:J

.field private mEnd_time:J

.field protected mPage_id:Ljava/lang/String;

.field protected mStart_time:J

.field protected mType:Lcom/sina/weibo/sdk/statistic/LogType;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 21
    const-string/jumbo v0, "session"

    sput-object v0, Lcom/sina/weibo/sdk/statistic/PageLog;->FILE_SESSION:Ljava/lang/String;

    .line 22
    const-wide/16 v0, 0x3e8

    sput-wide v0, Lcom/sina/weibo/sdk/statistic/PageLog;->MIN_ENDTIME:J

    return-void
.end method

