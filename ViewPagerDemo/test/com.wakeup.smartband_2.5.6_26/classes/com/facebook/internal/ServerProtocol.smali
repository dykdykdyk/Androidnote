.class public final Lcom/facebook/internal/ServerProtocol;
.super Ljava/lang/Object;
.source "ServerProtocol.java"


# static fields
.field private static final DIALOG_AUTHORITY_FORMAT:Ljava/lang/String; = "m.%s"

.field public static final DIALOG_CANCEL_URI:Ljava/lang/String; = "fbconnect://cancel"

.field public static final DIALOG_PARAM_ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field public static final DIALOG_PARAM_APP_ID:Ljava/lang/String; = "app_id"

.field public static final DIALOG_PARAM_AUTH_TYPE:Ljava/lang/String; = "auth_type"

.field public static final DIALOG_PARAM_CLIENT_ID:Ljava/lang/String; = "client_id"

.field public static final DIALOG_PARAM_DEFAULT_AUDIENCE:Ljava/lang/String; = "default_audience"

.field public static final DIALOG_PARAM_DISPLAY:Ljava/lang/String; = "display"

.field public static final DIALOG_PARAM_DISPLAY_TOUCH:Ljava/lang/String; = "touch"

.field public static final DIALOG_PARAM_E2E:Ljava/lang/String; = "e2e"

.field public static final DIALOG_PARAM_LEGACY_OVERRIDE:Ljava/lang/String; = "legacy_override"

.field public static final DIALOG_PARAM_REDIRECT_URI:Ljava/lang/String; = "redirect_uri"

.field public static final DIALOG_PARAM_RESPONSE_TYPE:Ljava/lang/String; = "response_type"

.field public static final DIALOG_PARAM_RETURN_SCOPES:Ljava/lang/String; = "return_scopes"

.field public static final DIALOG_PARAM_SCOPE:Ljava/lang/String; = "scope"

.field public static final DIALOG_PATH:Ljava/lang/String; = "dialog/"

.field public static final DIALOG_REDIRECT_URI:Ljava/lang/String; = "fbconnect://success"

.field public static final DIALOG_REREQUEST_AUTH_TYPE:Ljava/lang/String; = "rerequest"

.field public static final DIALOG_RESPONSE_TYPE_TOKEN_AND_SIGNED_REQUEST:Ljava/lang/String; = "token,signed_request"

.field public static final DIALOG_RETURN_SCOPES_TRUE:Ljava/lang/String; = "true"

.field public static final FALLBACK_DIALOG_DISPLAY_VALUE_TOUCH:Ljava/lang/String; = "touch"

.field public static final FALLBACK_DIALOG_PARAM_APP_ID:Ljava/lang/String; = "app_id"

.field public static final FALLBACK_DIALOG_PARAM_BRIDGE_ARGS:Ljava/lang/String; = "bridge_args"

.field public static final FALLBACK_DIALOG_PARAM_KEY_HASH:Ljava/lang/String; = "android_key_hash"

.field public static final FALLBACK_DIALOG_PARAM_METHOD_ARGS:Ljava/lang/String; = "method_args"

.field public static final FALLBACK_DIALOG_PARAM_METHOD_RESULTS:Ljava/lang/String; = "method_results"

.field public static final FALLBACK_DIALOG_PARAM_VERSION:Ljava/lang/String; = "version"

.field public static final GRAPH_API_VERSION:Ljava/lang/String; = "v2.3"

.field private static final GRAPH_URL_FORMAT:Ljava/lang/String; = "https://graph.%s"

.field private static final GRAPH_VIDEO_URL_FORMAT:Ljava/lang/String; = "https://graph-video.%s"

.field private static final TAG:Ljava/lang/String;

.field public static final errorsProxyAuthDisabled:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final errorsUserCanceled:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    const-class v0, Lcom/facebook/internal/ServerProtocol;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/ServerProtocol;->TAG:Ljava/lang/String;

    .line 78
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "service_disabled"

    aput-object v1, v0, v2

    const-string/jumbo v1, "AndroidAuthKillSwitchException"

    aput-object v1, v0, v3

    .line 79
    invoke-static {v0}, Lcom/facebook/internal/Utility;->unmodifiableCollection([Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/ServerProtocol;->errorsProxyAuthDisabled:Ljava/util/Collection;

    .line 80
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "access_denied"

    aput-object v1, v0, v2

    const-string/jumbo v1, "OAuthAccessDeniedException"

    aput-object v1, v0, v3

    .line 81
    invoke-static {v0}, Lcom/facebook/internal/Utility;->unmodifiableCollection([Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/ServerProtocol;->errorsUserCanceled:Ljava/util/Collection;

    .line 80
    return-void
.end method

.method public constructor <init>()V
    .registers 1

