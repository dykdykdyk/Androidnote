.class public Lcom/tencent/open/yyb/AppbarActivity;
.super Landroid/app/Activity;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/open/yyb/AppbarActivity$b;,
        Lcom/tencent/open/yyb/AppbarActivity$a;,
        Lcom/tencent/open/yyb/AppbarActivity$d;,
        Lcom/tencent/open/yyb/AppbarActivity$c;
    }
.end annotation


# static fields
.field private static final FLOATING_DIALOG_HEIGHT:I = 0x64

.field public static final MYAPP_CACHE_PATH:Ljava/lang/String; = "/tencent/tassistant"

.field private static final TAG:Ljava/lang/String; = "openSDK_LOG.AppbarActivity"

.field private static final UA_PREFIX:Ljava/lang/String; = "qqdownloader/"

.field private static final WEBVIEW_PATH:Ljava/lang/String; = "/webview_cache"

.field private static specialModel:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private appid:Ljava/lang/String;

.field private jsBridge:Lcom/tencent/open/yyb/AppbarJsBridge;

.field private final mDownloadListener:Landroid/webkit/DownloadListener;

.field private mFloatingDialog:Lcom/tencent/open/yyb/MoreFloatingDialog;

.field protected mProgressDialog:Landroid/app/ProgressDialog;

.field private mRootView:Landroid/widget/LinearLayout;

.field private mTitleBar:Lcom/tencent/open/yyb/TitleBar;

.field private mToken:Lcom/tencent/connect/auth/QQToken;

.field private mWebView:Lcom/tencent/open/c/b;

.field private model:Lcom/tencent/open/yyb/ShareModel;

.field private tencent:Lcom/tencent/tauth/Tencent;

.field private titlebarTop:I

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/open/yyb/AppbarActivity;->specialModel:Ljava/util/ArrayList;

    .line 226
    sget-object v0, Lcom/tencent/open/yyb/AppbarActivity;->specialModel:Ljava/util/ArrayList;

    const-string/jumbo v1, "MT870"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    sget-object v0, Lcom/tencent/open/yyb/AppbarActivity;->specialModel:Ljava/util/ArrayList;

    const-string/jumbo v1, "XT910"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    sget-object v0, Lcom/tencent/open/yyb/AppbarActivity;->specialModel:Ljava/util/ArrayList;

    const-string/jumbo v1, "XT928"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    sget-object v0, Lcom/tencent/open/yyb/AppbarActivity;->specialModel:Ljava/util/ArrayList;

    const-string/jumbo v1, "MT917"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    sget-object v0, Lcom/tencent/open/yyb/AppbarActivity;->specialModel:Ljava/util/ArrayList;

    const-string/jumbo v1, "Lenovo A60"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    return-void
.end method

.method public constructor <init>()V
    .registers 2

