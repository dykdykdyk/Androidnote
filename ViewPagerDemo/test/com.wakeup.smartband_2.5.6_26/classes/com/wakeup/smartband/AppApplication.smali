.class public Lcom/wakeup/smartband/AppApplication;
.super Lorg/litepal/LitePalApplication;
.source "AppApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wakeup/smartband/AppApplication$SmsContent;
    }
.end annotation


# static fields
.field public static BO_MEASURE_TIME:J = 0x0L

.field public static BP_MEASURE_TIME:J = 0x0L

.field private static final DELAY_MSG_CANCEL_SMS_WARNING:J = 0xbb8L

.field public static HR_MEASURE_TIME:J = 0x0L

.field public static IS_HAVE_DATA_AVAILABLE:Z = false

.field private static final MSG_CANCEL_SMS_WARNING:I = 0x1

.field public static ONCE_KEY_MEASURE_TIME:J = 0x0L

.field public static PHONE_STATE:I = 0x0

.field private static final SEND_BLE_COMMAND:I = 0x2

.field private static final STOP_ALARM:I = 0x3

.field public static final TAG:Ljava/lang/String; = "AppApplication"

.field public static TARGET_STEP_COUNT:I

.field public static bandVersion:F

.field public static band_type:I

.field public static batteryPercent:I

.field public static data:[B

.field public static isCharging:Z

.field public static isConnected:Z

.field public static isFacebookOn:Z

.field public static isHourSystemWarnOn:Z

.field public static isInAntiLostWarnOn:Z

.field public static isInSMSWarnOn:Z

.field public static isIncallWarnOn:Z

.field public static isNoObstructWarnOn:Z

.field public static isOnTimeMeasureWarnOn:Z

.field public static isPauseTiming:Z

.field public static isQQWarnOn:Z

.field public static isReceiveVersionInfo:Z

.field public static isSedentarinessWarnOn:Z

.field public static isShowHourly:Z

.field public static isShowSleepInterval:Z

.field public static isShowSteplength:Z

.field public static isTwitterOn:Z

.field public static isUpLightScreenWarnOn:Z

.field public static isWeiBoWarnOn:Z

.field public static isWeiXinWarnOn:Z

.field public static isWhatsAppOn:Z

.field public static isZhLanguage:Z

.field public static iscompleted:Z

.field private static mApplication:Lcom/wakeup/smartband/AppApplication;

.field public static main_version:I

.field public static mtyb:Ljava/lang/String;

.field public static status:I


# instance fields
.field private final BLEStatusChangeReceiver:Landroid/content/BroadcastReceiver;

.field private SMSbody:Ljava/lang/String;

.field private address:Ljava/lang/String;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mHandler:Landroid/os/Handler;

.field private mManager:Lcom/wakeup/smartband/manager/CommandManager;

.field mMediaPlayer:Landroid/media/MediaPlayer;

.field private strDate:Ljava/lang/String;

.field vibraeTimes:[J


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const-wide/32 v4, 0x186a0

    const-wide/32 v2, 0x9c40

    const/4 v0, 0x0

    .line 66
    sput-wide v2, Lcom/wakeup/smartband/AppApplication;->HR_MEASURE_TIME:J

    .line 67
    sput-wide v4, Lcom/wakeup/smartband/AppApplication;->BP_MEASURE_TIME:J

    .line 68
    sput-wide v2, Lcom/wakeup/smartband/AppApplication;->BO_MEASURE_TIME:J

    .line 69
    sput-wide v4, Lcom/wakeup/smartband/AppApplication;->ONCE_KEY_MEASURE_TIME:J

    .line 84
    sput-boolean v0, Lcom/wakeup/smartband/AppApplication;->isIncallWarnOn:Z

    .line 85
    sput-boolean v0, Lcom/wakeup/smartband/AppApplication;->isInSMSWarnOn:Z

    .line 86
    sput-boolean v0, Lcom/wakeup/smartband/AppApplication;->isInAntiLostWarnOn:Z

    .line 87
    sput-boolean v0, Lcom/wakeup/smartband/AppApplication;->isWeiXinWarnOn:Z

    .line 88
    sput-boolean v0, Lcom/wakeup/smartband/AppApplication;->isQQWarnOn:Z

    .line 89
    sput-boolean v0, Lcom/wakeup/smartband/AppApplication;->isWeiBoWarnOn:Z

    .line 90
    sput-boolean v0, Lcom/wakeup/smartband/AppApplication;->isFacebookOn:Z

    .line 91
    sput-boolean v0, Lcom/wakeup/smartband/AppApplication;->isTwitterOn:Z

    .line 92
    sput-boolean v0, Lcom/wakeup/smartband/AppApplication;->isWhatsAppOn:Z

    .line 95
    sput-boolean v0, Lcom/wakeup/smartband/AppApplication;->isHourSystemWarnOn:Z

    .line 111
    sput v0, Lcom/wakeup/smartband/AppApplication;->PHONE_STATE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

