.class public Lcom/linkedin/platform/LISessionManager;
.super Ljava/lang/Object;
.source "LISessionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linkedin/platform/LISessionManager$LISessionImpl;
    }
.end annotation


# static fields
.field private static final AUTH_STATE:Ljava/lang/String; = "state"

.field private static final AUTH_TOKEN:Ljava/lang/String; = "token"

.field private static final LI_APP_ACTION_AUTHORIZE_APP:Ljava/lang/String; = "com.linkedin.android.auth.AUTHORIZE_APP"

.field private static final LI_APP_AUTH_CLASS_NAME:Ljava/lang/String; = "com.linkedin.android.liauthlib.thirdparty.LiThirdPartyAuthorizeActivity"

.field private static final LI_APP_CATEGORY:Ljava/lang/String; = "com.linkedin.android.auth.thirdparty.authorize"

.field private static final LI_APP_PACKAGE_NAME:Ljava/lang/String; = "com.linkedin.android"

.field private static final LI_ERROR_DESCRIPTION:Ljava/lang/String; = "com.linkedin.thirdparty.authorize.RESULT_ACTION_ERROR_DESCRIPTION"

.field private static final LI_ERROR_INFO:Ljava/lang/String; = "com.linkedin.thirdparty.authorize.RESULT_ACTION_ERROR_INFO"

.field public static final LI_SDK_AUTH_REQUEST_CODE:I = 0xe58

.field private static final SCOPE_DATA:Ljava/lang/String; = "com.linkedin.thirdpartysdk.SCOPE_DATA"

.field private static final TAG:Ljava/lang/String;

.field private static sessionManager:Lcom/linkedin/platform/LISessionManager;


# instance fields
.field private authListener:Lcom/linkedin/platform/listeners/AuthListener;

.field private ctx:Landroid/content/Context;

.field private session:Lcom/linkedin/platform/LISessionManager$LISessionImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 46
    const-class v0, Lcom/linkedin/platform/LISessionManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/linkedin/platform/LISessionManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

