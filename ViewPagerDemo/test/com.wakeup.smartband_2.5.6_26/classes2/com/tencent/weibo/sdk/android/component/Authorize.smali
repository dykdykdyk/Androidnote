.class public Lcom/tencent/weibo/sdk/android/component/Authorize;
.super Landroid/app/Activity;
.source "Authorize.java"


# static fields
.field public static final ALERT_DOWNLOAD:I = 0x0

.field public static final ALERT_FAV:I = 0x1

.field public static final ALERT_NETWORK:I = 0x4

.field public static final PROGRESS_H:I = 0x3

.field public static WEBVIEWSTATE_1:I


# instance fields
.field _dialog:Landroid/app/Dialog;

.field _fileName:Ljava/lang/String;

.field _url:Ljava/lang/String;

.field private clientId:Ljava/lang/String;

.field private dialog:Landroid/app/ProgressDialog;

.field handle:Landroid/os/Handler;

.field private isShow:Z

.field private layout:Landroid/widget/LinearLayout;

.field path:Ljava/lang/String;

.field private redirectUri:Ljava/lang/String;

.field webView:Landroid/webkit/WebView;

.field webview_state:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput v0, Lcom/tencent/weibo/sdk/android/component/Authorize;->WEBVIEWSTATE_1:I

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .registers 3

