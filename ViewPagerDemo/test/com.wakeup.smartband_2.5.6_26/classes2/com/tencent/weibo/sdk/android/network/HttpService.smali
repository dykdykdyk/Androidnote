.class public Lcom/tencent/weibo/sdk/android/network/HttpService;
.super Ljava/lang/Object;
.source "HttpService.java"


# static fields
.field private static instance:Lcom/tencent/weibo/sdk/android/network/HttpService;


# instance fields
.field private final TAG_RUNNING:I

.field private final TAG_WAITTING:I

.field private mRunningReqList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/weibo/sdk/android/network/HttpReq;",
            ">;"
        }
    .end annotation
.end field

.field private mThreadNum:I

.field private mWaitReqList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/weibo/sdk/android/network/HttpReq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/weibo/sdk/android/network/HttpService;->instance:Lcom/tencent/weibo/sdk/android/network/HttpService;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

