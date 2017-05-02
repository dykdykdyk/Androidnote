.class public Lcom/umeng/socialize/handler/UMFacebookHandler;
.super Lcom/umeng/socialize/handler/UMSSOHandler;
.source "UMFacebookHandler.java"


# instance fields
.field private PackageName:Ljava/lang/String;

.field private config:Lcom/umeng/socialize/PlatformConfig$Platform;

.field private defaultAudience:Lcom/facebook/login/DefaultAudience;

.field private loginBehavior:Lcom/facebook/login/LoginBehavior;

.field private loginManager:Lcom/facebook/login/LoginManager;

.field private mCallbackManager:Lcom/facebook/CallbackManager;

.field private mContext:Landroid/content/Context;

.field private permissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private shareContent:Lcom/facebook/media/FacebookShareContent;

.field private shareDialog:Lcom/facebook/share/widget/ShareDialog;

.field private shareTarget:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

