.class public abstract Lcom/tencent/weibo/sdk/android/network/HttpReq;
.super Landroid/os/AsyncTask;
.source "HttpReq.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/weibo/sdk/android/network/HttpReq$UTF8PostMethod;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final GET:Ljava/lang/String;

.field private final POST:Ljava/lang/String;

.field protected mCallBack:Lcom/tencent/weibo/sdk/android/network/HttpCallback;

.field protected mHost:Ljava/lang/String;

.field protected mMethod:Ljava/lang/String;

.field protected mParam:Lcom/tencent/weibo/sdk/android/network/ReqParam;

.field protected mPort:I

.field private mServiceTag:I

.field protected mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

