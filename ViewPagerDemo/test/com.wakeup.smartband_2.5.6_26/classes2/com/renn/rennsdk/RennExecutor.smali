.class public Lcom/renn/rennsdk/RennExecutor;
.super Ljava/lang/Object;
.source "RennExecutor.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/renn/rennsdk/RennExecutor$CallBack;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$renn$rennsdk$RennRequest$Method:[I = null

.field public static final API_SERVER:Ljava/lang/String; = "api.renren.com"

.field public static final DEFAULT_HTTP_PORT:I = 0x50

.field public static final USER_AGENT:Ljava/lang/String; = "Renn API2.0 SDK Java v0.1"


# instance fields
.field private final exception:I

.field private mCallBack:Lcom/renn/rennsdk/RennExecutor$CallBack;

.field private mHandler:Landroid/os/Handler;

.field private final macSignatureMethodFactory:Lcom/renn/rennsdk/signature/MACSignatureMethodFactory;


# direct methods
.method static synthetic $SWITCH_TABLE$com$renn$rennsdk$RennRequest$Method()[I
    .registers 3

