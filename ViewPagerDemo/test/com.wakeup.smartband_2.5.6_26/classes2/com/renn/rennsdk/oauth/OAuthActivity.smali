.class public Lcom/renn/rennsdk/oauth/OAuthActivity;
.super Landroid/app/Activity;
.source "OAuthActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/renn/rennsdk/oauth/OAuthActivity$AuthWebViewClient;
    }
.end annotation


# static fields
.field private static final synchronizer:Ljava/lang/Object;


# instance fields
.field private clientId:Ljava/lang/String;

.field private haveNet:Z

.field private isLoginSuccess:Z

.field private mIsRegisteProcess:Z

.field private mLoadDialog:Landroid/app/ProgressDialog;

.field private mRetryUrl:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;

.field private registerLayout:Lcom/renn/rennsdk/oauth/RegisterLayout;

.field private scope:Ljava/lang/String;

.field private tokenType:Ljava/lang/String;

.field private webViewClient:Lcom/renn/rennsdk/oauth/OAuthActivity$AuthWebViewClient;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 359
    const-string/jumbo v0, "a"

    sput-object v0, Lcom/renn/rennsdk/oauth/OAuthActivity;->synchronizer:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

