.class Lcom/sina/weibo/sdk/auth/sso/WebAuthHandler;
.super Ljava/lang/Object;
.source "WebAuthHandler.java"


# static fields
.field private static final NETWORK_NOT_AVAILABLE_EN:Ljava/lang/String; = "Network is not available"

.field private static final NETWORK_NOT_AVAILABLE_ZH_CN:Ljava/lang/String; = "\u65e0\u6cd5\u8fde\u63a5\u5230\u7f51\u7edc\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u914d\u7f6e"

.field private static final NETWORK_NOT_AVAILABLE_ZH_TW:Ljava/lang/String; = "\u7121\u6cd5\u9023\u63a5\u5230\u7db2\u7edc\uff0c\u8acb\u6aa2\u67e5\u7db2\u7edc\u914d\u7f6e"

.field private static final OAUTH2_BASE_URL:Ljava/lang/String; = "https://open.weibo.cn/oauth2/authorize?"

.field private static final OBTAIN_AUTH_CODE:I = 0x0

.field private static final OBTAIN_AUTH_TOKEN:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAuthInfo:Lcom/sina/weibo/sdk/auth/AuthInfo;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const-class v0, Lcom/sina/weibo/sdk/auth/sso/WebAuthHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/auth/sso/WebAuthHandler;->TAG:Ljava/lang/String;

    .line 41
    return-void
.end method

