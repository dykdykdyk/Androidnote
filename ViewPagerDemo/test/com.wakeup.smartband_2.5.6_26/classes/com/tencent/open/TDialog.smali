.class public Lcom/tencent/open/TDialog;
.super Lcom/tencent/open/b;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/open/TDialog$1;,
        Lcom/tencent/open/TDialog$FbWebViewClient;,
        Lcom/tencent/open/TDialog$JsListener;,
        Lcom/tencent/open/TDialog$OnTimeListener;,
        Lcom/tencent/open/TDialog$THandler;
    }
.end annotation


# static fields
.field static final a:Landroid/widget/FrameLayout$LayoutParams;

.field static b:Landroid/widget/Toast;

.field private static d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/ProgressDialog;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Lcom/tencent/open/TDialog$OnTimeListener;

.field private g:Lcom/tencent/tauth/IUiListener;

.field private h:Landroid/widget/FrameLayout;

.field private i:Lcom/tencent/open/c/b;

.field private j:Landroid/os/Handler;

.field private k:Z

.field private l:Lcom/tencent/connect/auth/QQToken;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, -0x1

    .line 46
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/tencent/open/TDialog;->a:Landroid/widget/FrameLayout$LayoutParams;

    .line 463
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/open/TDialog;->b:Landroid/widget/Toast;

    return-void
.end method

