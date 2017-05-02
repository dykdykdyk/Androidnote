.class public Lcom/sina/weibo/sdk/component/WeiboCallbackManager;
.super Ljava/lang/Object;
.source "WeiboCallbackManager.java"


# static fields
.field private static sInstance:Lcom/sina/weibo/sdk/component/WeiboCallbackManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mWeiboAuthListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sina/weibo/sdk/auth/WeiboAuthListener;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgetRequestCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sina/weibo/sdk/component/WidgetRequestParam$WidgetRequestCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
