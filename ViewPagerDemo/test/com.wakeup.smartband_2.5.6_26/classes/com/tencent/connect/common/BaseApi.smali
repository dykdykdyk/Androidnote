.class public abstract Lcom/tencent/connect/common/BaseApi;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/connect/common/BaseApi$TempRequestListener;
    }
.end annotation


# static fields
.field protected static final ACTION_CHECK_TOKEN:Ljava/lang/String; = "action_check_token"

.field protected static final ACTIVITY_AGENT:Ljava/lang/String; = "com.tencent.open.agent.AgentActivity"

.field protected static final ACTIVITY_ENCRY_TOKEN:Ljava/lang/String; = "com.tencent.open.agent.EncryTokenActivity"

.field protected static final DEFAULT_PF:Ljava/lang/String; = "openmobile_android"

.field private static final KEY_REQUEST_CODE:Ljava/lang/String; = "key_request_code"

.field private static final MSG_COMPLETE:I = 0x0

.field protected static final PARAM_ENCRY_EOKEN:Ljava/lang/String; = "encry_token"

.field protected static final PLATFORM:Ljava/lang/String; = "desktop_m_qq"

.field protected static final PREFERENCE_PF:Ljava/lang/String; = "pfStore"

.field private static final TAG:Ljava/lang/String; = "openSDK_LOG.BaseApi"

.field protected static final VERSION:Ljava/lang/String; = "android"

.field public static businessId:Ljava/lang/String;

.field public static installChannel:Ljava/lang/String;

.field public static isOEM:Z

.field public static registerChannel:Ljava/lang/String;


# instance fields
.field protected mProgressDialog:Landroid/app/ProgressDialog;

.field protected mQQAuth:Lcom/tencent/connect/auth/QQAuth;

.field protected mToken:Lcom/tencent/connect/auth/QQToken;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 55
    sput-object v0, Lcom/tencent/connect/common/BaseApi;->registerChannel:Ljava/lang/String;

    .line 56
    sput-object v0, Lcom/tencent/connect/common/BaseApi;->installChannel:Ljava/lang/String;

    .line 57
    sput-object v0, Lcom/tencent/connect/common/BaseApi;->businessId:Ljava/lang/String;

    .line 58
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/connect/common/BaseApi;->isOEM:Z

    return-void
.end method

