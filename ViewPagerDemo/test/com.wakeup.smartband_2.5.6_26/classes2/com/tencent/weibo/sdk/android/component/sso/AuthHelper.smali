.class public final Lcom/tencent/weibo/sdk/android/component/sso/AuthHelper;
.super Ljava/lang/Object;
.source "AuthHelper.java"


# static fields
.field static final ENCRYPT_KEY:Ljava/lang/String; = "&-*)Wb5_U,[^!9\'+"

.field static final ERROR_WEIBO_INSTALL_NEEDED:I = -0x2

.field static final ERROR_WEIBO_UPGRADE_NEEDED:I = -0x1

.field static final SDK_VERSION:B = 0x1t

.field static final SUPPORT_WEIBO_MIN_VERSION:I = 0x2c

.field static final WEIBO_AUTH_URL:Ljava/lang/String; = "TencentAuth://weibo"

.field static final WEIBO_PACKAGE:Ljava/lang/String; = "com.tencent.WBlog"

.field static final WEIBO_VALIDATE_OK:I

.field protected static appSecret:Ljava/lang/String;

.field protected static appid:J

.field protected static listener:Lcom/tencent/weibo/sdk/android/component/sso/OnAuthListener;

.field private static mReceiver:Lcom/tencent/weibo/sdk/android/component/sso/AuthReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    new-instance v0, Lcom/tencent/weibo/sdk/android/component/sso/AuthReceiver;

    invoke-direct {v0}, Lcom/tencent/weibo/sdk/android/component/sso/AuthReceiver;-><init>()V

    sput-object v0, Lcom/tencent/weibo/sdk/android/component/sso/AuthHelper;->mReceiver:Lcom/tencent/weibo/sdk/android/component/sso/AuthReceiver;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

