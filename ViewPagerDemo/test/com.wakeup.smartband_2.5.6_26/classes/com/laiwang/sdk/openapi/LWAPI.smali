.class public Lcom/laiwang/sdk/openapi/LWAPI;
.super Ljava/lang/Object;
.source "LWAPI.java"

# interfaces
.implements Lcom/laiwang/sdk/openapi/ILWAPI;


# static fields
.field public static DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "LWAPI"

.field private static sApp:Landroid/app/Application;

.field private static sLWAPI:Lcom/laiwang/sdk/openapi/LWAPI;


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mAppVersion:I

.field private mIILWAPICallbackImpl:Lcom/laiwang/sdk/openapi/IILWAPICallbackImpl;

.field private mIILWAPIChannelPorxy:Lcom/laiwang/sdk/channel/IILWAPIChannelProxy;

.field private mIsLaiwangInited:Z

.field private mIsLaiwangServiceBinding:Z

.field private mIsLaiwangSupport:Z

.field private mIsLossVersion:Z

.field private mIsNewsVersion:Z

.field private mLWAPIAccount:Lcom/laiwang/sdk/openapi/LWAPIAccount;

.field private mLWVersion:I

.field private mMainHandler:Landroid/os/Handler;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-boolean v0, Lcom/laiwang/sdk/openapi/LWAPI;->DEBUG:Z

    .line 45
    return-void
.end method

