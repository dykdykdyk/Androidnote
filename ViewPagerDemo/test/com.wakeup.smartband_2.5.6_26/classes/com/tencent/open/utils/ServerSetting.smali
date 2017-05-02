.class public Lcom/tencent/open/utils/ServerSetting;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static final APP_DETAIL_PAGE:Ljava/lang/String; = "http://fusion.qq.com/cgi-bin/qzapps/unified_jump?appid=%1$s&from=%2$s&isOpenAppID=1"

.field public static final CGI_FETCH_QQ_URL:Ljava/lang/String; = "http://fusion.qq.com/cgi-bin/qzapps/mapp_getappinfo.cgi"

.field public static final DEFAULT_CGI_AUTHORIZE:Ljava/lang/String; = "http://openmobile.qq.com/oauth2.0/m_authorize?"

.field public static final DEFAULT_LOCAL_STORAGE_URI:Ljava/lang/String; = "http://qzs.qq.com"

.field public static final DEFAULT_REDIRECT_URI:Ljava/lang/String; = "auth://tauth.qq.com/"

.field public static final DEFAULT_URL_ASK:Ljava/lang/String; = "http://qzs.qq.com/open/mobile/request/sdk_request.html?"

.field public static final DEFAULT_URL_BRAG:Ljava/lang/String; = "http://qzs.qq.com/open/mobile/brag/sdk_brag.html?"

.field public static final DEFAULT_URL_GIFT:Ljava/lang/String; = "http://qzs.qq.com/open/mobile/request/sdk_request.html?"

.field public static final DEFAULT_URL_GRAPH_BASE:Ljava/lang/String; = "https://openmobile.qq.com/"

.field public static final DEFAULT_URL_INVITE:Ljava/lang/String; = "http://qzs.qq.com/open/mobile/invite/sdk_invite.html?"

.field public static final DEFAULT_URL_REACTIVE:Ljava/lang/String; = "http://qzs.qq.com/open/mobile/reactive/sdk_reactive.html?"

.field public static final DEFAULT_URL_REPORT:Ljava/lang/String; = "http://wspeed.qq.com/w.cgi"

.field public static final DEFAULT_URL_SEND_STORY:Ljava/lang/String; = "http://qzs.qq.com/open/mobile/sendstory/sdk_sendstory_v1.3.html?"

.field public static final DEFAULT_URL_VOICE:Ljava/lang/String; = "http://qzs.qq.com/open/mobile/not_support.html?"

.field public static final DOWNLOAD_QQ_URL:Ljava/lang/String; = "http://qzs.qq.com/open/mobile/login/qzsjump.html?"

.field public static final DOWNLOAD_QQ_URL_COMMON:Ljava/lang/String; = "http://qzs.qq.com/open/mobile/sdk_common/down_qq.htm?"

.field public static final ENVIRONMENT_EXPERIENCE:I = 0x1

.field public static final ENVIRONMENT_NORMOL:I = 0x0

.field public static final KEY_HOST_ANALY:Ljava/lang/String; = "analy.qq.com"

.field public static final KEY_HOST_APPIC:Ljava/lang/String; = "appic.qq.com"

.field public static final KEY_HOST_APP_SUPPORT:Ljava/lang/String; = "appsupport.qq.com"

.field public static final KEY_HOST_FUSION:Ljava/lang/String; = "fusion.qq.com"

.field public static final KEY_HOST_I_GTIMG:Ljava/lang/String; = "i.gtimg.cn"

.field public static final KEY_HOST_MAPP_QZONE:Ljava/lang/String; = "mapp.qzone.qq.com"

.field public static final KEY_HOST_OPEN_MOBILE:Ljava/lang/String; = "openmobile.qq.com"

.field public static final KEY_HOST_QZAPP_QLOGO:Ljava/lang/String; = "qzapp.qlogo.cn"

.field public static final KEY_HOST_QZS_QQ:Ljava/lang/String; = "qzs.qq.com"

.field public static final KEY_OPEN_ENV:Ljava/lang/String; = "OpenEnvironment"

.field public static final KEY_OPEN_SETTING:Ljava/lang/String; = "OpenSettings"

.field public static final NEED_QQ_VERSION_TIPS_URL:Ljava/lang/String; = "http://openmobile.qq.com/oauth2.0/m_jump_by_version?"

.field public static final URL_FUSION_BASE:Ljava/lang/String; = "http://fusion.qq.com"

.field public static final URL_FUSION_CGI_BASE:Ljava/lang/String; = "http://fusion.qq.com/cgi-bin"

.field public static final URL_PRIZE_EXCHANGE:Ljava/lang/String; = "http://fusion.qq.com/cgi-bin/prize_sharing/exchange_prize.cgi"

.field public static final URL_PRIZE_GET_ACTIVITY_STATE:Ljava/lang/String; = "http://fusion.qq.com/cgi-bin/prize_sharing/get_activity_state.cgi"

.field public static final URL_PRIZE_MAKE_SHARE_URL:Ljava/lang/String; = "http://fusion.qq.com/cgi-bin/prize_sharing/make_share_url.cgi"

.field public static final URL_PRIZE_QUERY_UNEXCHANGE:Ljava/lang/String; = "http://fusion.qq.com/cgi-bin/prize_sharing/query_unexchange_prize.cgi"

.field private static a:Lcom/tencent/open/utils/ServerSetting;


# instance fields
.field private volatile b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 81
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/open/utils/ServerSetting;->a:Lcom/tencent/open/utils/ServerSetting;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

