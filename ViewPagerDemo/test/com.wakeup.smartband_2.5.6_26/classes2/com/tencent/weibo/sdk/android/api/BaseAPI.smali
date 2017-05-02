.class public abstract Lcom/tencent/weibo/sdk/android/api/BaseAPI;
.super Ljava/lang/Object;
.source "BaseAPI.java"


# static fields
.field public static final API_SERVER:Ljava/lang/String; = "https://open.t.qq.com/api"

.field public static final HTTPMETHOD_GET:Ljava/lang/String; = "GET"

.field public static final HTTPMETHOD_POST:Ljava/lang/String; = "POST"

.field public static final REQUEST_METHOD_GET:Ljava/lang/String; = "GET"

.field public static final REQUEST_METHOD_POST:Ljava/lang/String; = "POST"


# instance fields
.field private callback:Lcom/tencent/weibo/sdk/android/network/HttpCallback;

.field private mAccessToken:Ljava/lang/String;

.field private mAccount:Lcom/tencent/weibo/sdk/android/model/AccountModel;

.field private mContext:Landroid/content/Context;

.field private mParams:Lcom/tencent/weibo/sdk/android/network/ReqParam;

.field private mRequestMethod:Ljava/lang/String;

.field private mRequestUrl:Ljava/lang/String;

.field private mResultType:I

.field private mmCallBack:Lcom/tencent/weibo/sdk/android/network/HttpCallback;

.field private mmTargetClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/tencent/weibo/sdk/android/model/BaseVO;",
            ">;"
        }
    .end annotation
.end field

.field private weibo:Lcom/tencent/weibo/sdk/android/network/HttpReqWeiBo;


# direct methods
