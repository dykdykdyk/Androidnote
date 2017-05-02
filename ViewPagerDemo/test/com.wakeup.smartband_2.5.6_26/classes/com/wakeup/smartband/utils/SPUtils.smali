.class public Lcom/wakeup/smartband/utils/SPUtils;
.super Ljava/lang/Object;
.source "SPUtils.java"


# static fields
.field public static BAND_VERSION:Ljava/lang/String; = null

.field public static BAND_VERSION_STATUS:Ljava/lang/String; = null

.field public static BAND_VERSION_TYPE:Ljava/lang/String; = null

.field public static BIND_DEVICE_ADDRESS:Ljava/lang/String; = null

.field public static BIND_DEVICE_ADDRESS2:Ljava/lang/String; = null

.field public static final CONNECTED_DEVICE_NAME:Ljava/lang/String; = "connectedDeviceName"

.field public static EMERGENCY_CONTACT:Ljava/lang/String; = null

.field public static FACEBOOK_NOTI_SWITCH:Ljava/lang/String; = null

.field public static FALLDOWN_WARN_SWITCH:Ljava/lang/String; = null

.field public static FIRMWARE_PATH:Ljava/lang/String; = null

.field public static FIRST_OPEN_TIME:Ljava/lang/String; = null

.field public static final FRIDAY_SWITCH:Ljava/lang/String; = "fridaySwitch"

.field public static final GOOGLEFIT_CONNECT:Ljava/lang/String; = "googlefit_connect"

.field public static IN_ANTI_LOST_SWITCH:Ljava/lang/String; = null

.field public static IN_CALL_WARN_SWITCH:Ljava/lang/String; = null

.field public static IN_HOUR_SYSTEM_SWITCH:Ljava/lang/String; = null

.field public static IN_SMS_WARN_SWITCH:Ljava/lang/String; = null

.field public static IS_BIND_WEIXING:Ljava/lang/String; = null

.field public static IS_FIRST_IN_APP:Ljava/lang/String; = null

.field public static IS_READ_HELP:Ljava/lang/String; = null

.field public static IS_USER_INFO_INITIAL:Ljava/lang/String; = null

.field public static IS_USER_INFO_SET:Ljava/lang/String; = null

.field public static IS_USER_INFO_UPDATED:Ljava/lang/String; = null

.field public static final LAST_SYNCDATA_TIME:Ljava/lang/String; = "lastSyncdataTime"

.field public static LINE_NOTI_SWITCH:Ljava/lang/String; = null

.field public static final MONDAY_SWITCH:Ljava/lang/String; = "mondaySwitch"

.field public static final NOOBSTRUCT_END:Ljava/lang/String; = "NoObstructEnd"

.field public static final NOOBSTRUCT_NOTI_SWITCH:Ljava/lang/String; = "NoObstructNotiSwitch"

.field public static final NOOBSTRUCT_START:Ljava/lang/String; = "NoObstructStart"

.field public static final ON_TIME_MEASURE_SWITCH:Ljava/lang/String; = "onTimeMeasureSwitch"

.field public static ON_TIME_MEASURE_TIME:Ljava/lang/String; = null

.field public static PREFERENCE_NAME:Ljava/lang/String; = null

.field public static QQ_NOTI_SWITCH:Ljava/lang/String; = null

.field public static final RUN_HR_ALERT:Ljava/lang/String; = "run_hr_alert"

.field public static final RUN_MAX_HR:Ljava/lang/String; = "run_max_hr"

.field public static final RUN_MEASURE_HR:Ljava/lang/String; = "run_measure_hr"

.field public static final RUN_VOICE:Ljava/lang/String; = "run_voice"

.field public static final SATURDAY_SWITCH:Ljava/lang/String; = "saturdaySwitch"

.field public static final SEDENTARINESS_END:Ljava/lang/String; = "sedentarinessEnd"

.field public static final SEDENTARINESS_NOTI_SWITCH:Ljava/lang/String; = "sedentarinessNotiSwitch"

.field public static final SEDENTARINESS_START:Ljava/lang/String; = "sedentarinessStart"

.field public static SLEEP_START_TIME:Ljava/lang/String; = null

.field public static final SUNDAY_SWITCH:Ljava/lang/String; = "sundaySwitch"

.field public static TARGET_STEP_COUNT:Ljava/lang/String; = null

.field public static final THURSDAY_SWITCH:Ljava/lang/String; = "thursdaySwitch"

.field public static final TUESDAY_SWITCH:Ljava/lang/String; = "tuesdaySwitch"

.field public static TWITTER_NOTI_SWITCH:Ljava/lang/String; = null

.field public static UPDATE_FAILED_DEVICE_ADDRESS:Ljava/lang/String; = null

.field public static final UP_LIGHTSCREEN_SWITCH:Ljava/lang/String; = "upLightScreenSwitch"

.field public static final WEDNESDAY_SWITCH:Ljava/lang/String; = "wednesdaySwitch"

.field public static WEIBO_NOTI_SWITCH:Ljava/lang/String;

.field public static WEIXING_OPENID:Ljava/lang/String;

.field public static WEIXIN_NOTI_SWITCH:Ljava/lang/String;

.field public static WHATSAPP_NOTI_SWITCH:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    const-string/jumbo v0, "SmartBracelet"

    sput-object v0, Lcom/wakeup/smartband/utils/SPUtils;->PREFERENCE_NAME:Ljava/lang/String;

    .line 12
    const-string/jumbo v0, "isReadHelp"

    sput-object v0, Lcom/wakeup/smartband/utils/SPUtils;->IS_READ_HELP:Ljava/lang/String;

    .line 13
    const-string/jumbo v0, "firstOpenTime"

    sput-object v0, Lcom/wakeup/smartband/utils/SPUtils;->FIRST_OPEN_TIME:Ljava/lang/String;

    .line 14
    const-string/jumbo v0, "isUserInfoSet"

    sput-object v0, Lcom/wakeup/smartband/utils/SPUtils;->IS_USER_INFO_SET:Ljava/lang/String;

    .line 15
    const-string/jumbo v0, "isUserInfoInitial"

    sput-object v0, Lcom/wakeup/smartband/utils/SPUtils;->IS_USER_INFO_INITIAL:Ljava/lang/String;

    .line 16
    const-string/jumbo v0, "isFirstInApp"

    sput-object v0, Lcom/wakeup/smartband/utils/SPUtils;->IS_FIRST_IN_APP:Ljava/lang/String;

    .line 17
    const-string/jumbo v0, "inCallWarnSwitch"

    sput-object v0, Lcom/wakeup/smartband/utils/SPUtils;->IN_CALL_WARN_SWITCH:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, "inSmsWarnSwitch"

    sput-object v0, Lcom/wakeup/smartband/utils/SPUtils;->IN_SMS_WARN_SWITCH:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, "IN_HOUR_SYSTEM_SWITCH"

    sput-object v0, Lcom/wakeup/smartband/utils/SPUtils;->IN_HOUR_SYSTEM_SWITCH:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, "IN_ANTI_LOST_SWITCH"

    sput-object v0, Lcom/wakeup/smartband/utils/SPUtils;->IN_ANTI_LOST_SWITCH:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, "weiXinNotiSwitch"

    sput-object v0, Lcom/wakeup/smartband/utils/SPUtils;->WEIXIN_NOTI_SWITCH:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, "qqNotiSwitch"

    sput-object v0, Lcom/wakeup/smartband/utils/SPUtils;->QQ_NOTI_SWITCH:Ljava/lang/String;

    .line 25
    const-string/jumbo v0, "weiBoNotiSwitch"

    sput-object v0, Lcom/wakeup/smartband/utils/SPUtils;->WEIBO_NOTI_SWITCH:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, "insmswarnswitch"

    sput-object v0, Lcom/wakeup/smartband/utils/SPUtils;->TWITTER_NOTI_SWITCH:Ljava/lang/String;

    .line 27
    const-string/jumbo v0, "whatsAppNotiSwitch"

    sput-object v0, Lcom/wakeup/smartband/utils/SPUtils;->WHATSAPP_NOTI_SWITCH:Ljava/lang/String;

    .line 28
    const-string/jumbo v0, "facebookNotiSwitch"

    sput-object v0, Lcom/wakeup/smartband/utils/SPUtils;->FACEBOOK_NOTI_SWITCH:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, "LINE_NOTI_SWITCH"

    sput-object v0, Lcom/wakeup/smartband/utils/SPUtils;->LINE_NOTI_SWITCH:Ljava/lang/String;

    .line 56
    const-string/jumbo v0, "fallDownWarnSwitch"

    sput-object v0, Lcom/wakeup/smartband/utils/SPUtils;->FALLDOWN_WARN_SWITCH:Ljava/lang/String;

    .line 57
    const-string/jumbo v0, "bindDeviceAddress"

    sput-object v0, Lcom/wakeup/smartband/utils/SPUtils;->BIND_DEVICE_ADDRESS:Ljava/lang/String;

    .line 58
    const-string/jumbo v0, "bindDeviceAddress2"

    sput-object v0, Lcom/wakeup/smartband/utils/SPUtils;->BIND_DEVICE_ADDRESS2:Ljava/lang/String;

    .line 59
    const-string/jumbo v0, "isUserInfoUpdated"

    sput-object v0, Lcom/wakeup/smartband/utils/SPUtils;->IS_USER_INFO_UPDATED:Ljava/lang/String;

    .line 60
    const-string/jumbo v0, "emergencyContact"

    sput-object v0, Lcom/wakeup/smartband/utils/SPUtils;->EMERGENCY_CONTACT:Ljava/lang/String;

    .line 61
    const-string/jumbo v0, "bandVersion"

    sput-object v0, Lcom/wakeup/smartband/utils/SPUtils;->BAND_VERSION:Ljava/lang/String;

    .line 62
    const-string/jumbo v0, "bandVersionType"

    sput-object v0, Lcom/wakeup/smartband/utils/SPUtils;->BAND_VERSION_TYPE:Ljava/lang/String;

    .line 63
    const-string/jumbo v0, "bandVersionStatus"

    sput-object v0, Lcom/wakeup/smartband/utils/SPUtils;->BAND_VERSION_STATUS:Ljava/lang/String;

    .line 64
    const-string/jumbo v0, "updateFailedDeviceAddress"

    sput-object v0, Lcom/wakeup/smartband/utils/SPUtils;->UPDATE_FAILED_DEVICE_ADDRESS:Ljava/lang/String;

    .line 65
    const-string/jumbo v0, "targetStepCount"

    sput-object v0, Lcom/wakeup/smartband/utils/SPUtils;->TARGET_STEP_COUNT:Ljava/lang/String;

    .line 66
    const-string/jumbo v0, "onTimeMeasureTime"

    sput-object v0, Lcom/wakeup/smartband/utils/SPUtils;->ON_TIME_MEASURE_TIME:Ljava/lang/String;

    .line 68
    const-string/jumbo v0, "weixingopenid"

    sput-object v0, Lcom/wakeup/smartband/utils/SPUtils;->WEIXING_OPENID:Ljava/lang/String;

    .line 69
    const-string/jumbo v0, "isbindweixing"

    sput-object v0, Lcom/wakeup/smartband/utils/SPUtils;->IS_BIND_WEIXING:Ljava/lang/String;

    .line 71
    const-string/jumbo v0, "sleepStartTime"

    sput-object v0, Lcom/wakeup/smartband/utils/SPUtils;->SLEEP_START_TIME:Ljava/lang/String;

    .line 72
    const-string/jumbo v0, "FIRMWARE_PATH"

    sput-object v0, Lcom/wakeup/smartband/utils/SPUtils;->FIRMWARE_PATH:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

