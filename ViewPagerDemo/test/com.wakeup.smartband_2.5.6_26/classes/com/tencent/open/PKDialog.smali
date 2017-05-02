.class public Lcom/tencent/open/PKDialog;
.super Lcom/tencent/open/b;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/open/c/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/open/PKDialog$1;,
        Lcom/tencent/open/PKDialog$OnTimeListener;,
        Lcom/tencent/open/PKDialog$THandler;,
        Lcom/tencent/open/PKDialog$FbWebViewClient;,
        Lcom/tencent/open/PKDialog$JsListener;
    }
.end annotation


# static fields
.field private static final MSG_CANCEL:I = 0x2

.field private static final MSG_COMPLETE:I = 0x1

.field private static final MSG_ON_LOAD:I = 0x4

.field private static final MSG_SHOW_PROCESS:I = 0x5

.field private static final MSG_SHOW_TIPS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "openSDK_LOG.PKDialog"

.field private static final WEBVIEW_HEIGHT:I = 0xb9

.field static sToast:Landroid/widget/Toast;


# instance fields
.field private listener:Lcom/tencent/tauth/IUiListener;

.field private mFlMain:Lcom/tencent/open/c/a;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/tencent/open/PKDialog$OnTimeListener;

.field private mUrl:Ljava/lang/String;

.field private mWeakContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mWebView:Lcom/tencent/open/c/b;

.field private mWebviewHeight:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 297
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/open/PKDialog;->sToast:Landroid/widget/Toast;

    return-void
.end method

