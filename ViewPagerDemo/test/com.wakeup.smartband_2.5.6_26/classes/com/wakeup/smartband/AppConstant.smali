.class public Lcom/wakeup/smartband/AppConstant;
.super Ljava/lang/Object;
.source "AppConstant.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wakeup/smartband/AppConstant$Result;,
        Lcom/wakeup/smartband/AppConstant$User;,
        Lcom/wakeup/smartband/AppConstant$Register;,
        Lcom/wakeup/smartband/AppConstant$Login;
    }
.end annotation


# static fields
.field public static final ADD_FAVORITE:Ljava/lang/String; = "addCollect.action"

.field public static APP_ID:Ljava/lang/String; = null

.field public static final CLIFE_OFFICIAL_URL:Ljava/lang/String; = " http://www.daorigin.com"

.field public static final CONNECT_MODE:Ljava/lang/String; = "netWorkChange"

.field public static DEBUG:Z = false

.field public static DEVELOP_KEY:Ljava/lang/String; = null

.field public static final GET_APP_VERSION_ACTION:Ljava/lang/String; = "getAppVersion.action"

.field public static final GET_BLOOR_PRESSURE_ACTION:Ljava/lang/String; = "getBloodPressure.action"

.field public static final GET_BREATH_RATE_ACTION:Ljava/lang/String; = "getBreathRate.action"

.field public static final GET_BREATH_RATE_BY_TIME:Ljava/lang/String; = "getTimeBreathRate.action"

.field public static final GET_CURRENT_ACTION:Ljava/lang/String; = "getCurrentAction.action"

.field public static final GET_HEART_BEAT_ACTION:Ljava/lang/String; = "getHeartBeat.action"

.field public static final GET_MOOD_ACTION:Ljava/lang/String; = "getMood.action"

.field public static final GET_PERSONAL_ACTION:Ljava/lang/String; = "getPersonInfo.action"

.field public static final GET_STEP_ACTION:Ljava/lang/String; = "getStep.action"

.field public static final GET_TIME_BLOOR_PRESSURE_ACTION:Ljava/lang/String; = "getTimeBloodPresserue.action"

.field public static final GET_TIME_HEART_PRESSURE_ACTION:Ljava/lang/String; = "getHeartPressure.action"

.field public static final GET_TIME_STEP_ACTION:Ljava/lang/String; = "getStep.action"

.field public static final GET_TIRED_ACTION:Ljava/lang/String; = "getTired.action"

.field public static HOST:Ljava/lang/String; = null

.field public static final HTTP:Ljava/lang/String; = "http://"

.field public static final HTTPS:Ljava/lang/String; = "https://"

.field public static final INNER_HOST:Ljava/lang/String; = "192.168.1.1:8080"

.field public static final LOGIN_ACTION:Ljava/lang/String; = "loginAction.action"

.field public static final MODIFY_PERSONAL_ACTION:Ljava/lang/String; = "modifyPersonInfo.action"

.field public static final OUTER_HOST:Ljava/lang/String; = "192.168.0.88:8080"

.field public static final QQAppID:Ljava/lang/String; = "1104959645"

.field public static final QQ_APP_KEY:Ljava/lang/String; = "8qWSwpljIEgbFEeU"

.field public static final QUERY_FAVORITE:Ljava/lang/String; = "findCollects.action"

.field public static REQUEST_URL:Ljava/lang/String; = null

.field public static final SERVER_URL:Ljava/lang/String; = "/BraceletSys/"

.field public static final SET_BLOOD_PRESSURE_ACTION:Ljava/lang/String; = "setBloodPressure.action"

.field public static final SET_HEART_PRESSURE_ACTION:Ljava/lang/String; = "setHearthPressure.action"

.field public static final SET_MESSAGE_NOTIFY_ACTION:Ljava/lang/String; = "setMessageNotity.action"

.field public static final SET_MOBILE_ACTION:Ljava/lang/String; = "setMobile.action"

.field public static final SET_PASSWORD_ACTION:Ljava/lang/String; = "setUserPd.action"

.field public static final SET_TIRED_ACTION:Ljava/lang/String; = "setTiredPressure.action"

.field public static final SHARE_TARGET_URL:Ljava/lang/String; = " http://www.daorigin.com"

.field public static final SINA_APP_KEY:Ljava/lang/String; = "3475229326"

.field public static final SINA_APP_SECRET:Ljava/lang/String; = "ae17e55e0dd8963661b5c2f23a47a452"

.field public static final UNBIND_MOBILE_ACTION:Ljava/lang/String; = "unwarpMobile.action"

.field public static final UPDATE_DATA_ACTION:Ljava/lang/String; = "updateDataAction.action"

.field public static final WeiXinAppID:Ljava/lang/String; = "wx413e6c049cdaaa14"

.field public static final WeiXinAppSecret:Ljava/lang/String; = "9a876ff21a5d216761c735cda24737c3"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 17
    const-string/jumbo v0, "192.168.0.88:8080"

    sput-object v0, Lcom/wakeup/smartband/AppConstant;->HOST:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/wakeup/smartband/AppConstant;->HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/BraceletSys/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wakeup/smartband/AppConstant;->REQUEST_URL:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, ""

    sput-object v0, Lcom/wakeup/smartband/AppConstant;->APP_ID:Ljava/lang/String;

    .line 22
    const-string/jumbo v0, "BB80F668FC9C4127D3C5C7A9B"

    sput-object v0, Lcom/wakeup/smartband/AppConstant;->DEVELOP_KEY:Ljava/lang/String;

    .line 78
    const/4 v0, 0x1

    sput-boolean v0, Lcom/wakeup/smartband/AppConstant;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

