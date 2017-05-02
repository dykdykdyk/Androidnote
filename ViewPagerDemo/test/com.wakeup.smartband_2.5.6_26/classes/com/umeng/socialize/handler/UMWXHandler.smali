.class public Lcom/umeng/socialize/handler/UMWXHandler;
.super Lcom/umeng/socialize/handler/UMSSOHandler;
.source "UMWXHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/handler/UMWXHandler$ShareListenerWrapper;,
        Lcom/umeng/socialize/handler/UMWXHandler$AuthListenerWrapper;
    }
.end annotation


# static fields
.field private static final REFRESH_TOKEN_EXPIRES:I = 0x93a80

.field private static final REQUEST_CODE:I = 0x2766

.field private static final RESP_TYPE_AUTH:I = 0x1

.field private static final RESP_TYPE_SHARE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "UMWXHandler"

.field private static sScope:Ljava/lang/String;


# instance fields
.field private config:Lcom/umeng/socialize/PlatformConfig$Weixin;

.field private isToCircle:Z

.field private isWXSceneFavorite:Z

.field private mAuthListener:Lcom/umeng/socialize/UMAuthListener;

.field private mEventHandler:Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;

.field private mShareContent:Lcom/umeng/socialize/media/WeiXinShareContent;

.field private mTarget:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field private mWXApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

.field private mcontext:Landroid/content/Context;

.field private umShareListener:Lcom/umeng/socialize/UMShareListener;

.field private weixinPreferences:Lcom/umeng/socialize/handler/WeixinPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 62
    const-string/jumbo v0, "snsapi_userinfo,snsapi_friend,snsapi_message"

    sput-object v0, Lcom/umeng/socialize/handler/UMWXHandler;->sScope:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

