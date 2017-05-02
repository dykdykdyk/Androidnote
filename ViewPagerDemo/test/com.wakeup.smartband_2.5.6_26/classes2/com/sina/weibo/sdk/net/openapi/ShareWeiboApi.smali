.class public Lcom/sina/weibo/sdk/net/openapi/ShareWeiboApi;
.super Ljava/lang/Object;
.source "ShareWeiboApi.java"


# static fields
.field private static final REPOST_URL:Ljava/lang/String; = "https://api.weibo.com/2/statuses/repost.json"

.field private static final TAG:Ljava/lang/String;

.field private static final UPDATE_URL:Ljava/lang/String; = "https://api.weibo.com/2/statuses/update.json"

.field private static final UPLOAD_URL:Ljava/lang/String; = "https://api.weibo.com/2/statuses/upload.json"


# instance fields
.field private mAccessToken:Ljava/lang/String;

.field private mAppKey:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const-class v0, Lcom/sina/weibo/sdk/net/openapi/ShareWeiboApi;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/net/openapi/ShareWeiboApi;->TAG:Ljava/lang/String;

    .line 17
    return-void
.end method

