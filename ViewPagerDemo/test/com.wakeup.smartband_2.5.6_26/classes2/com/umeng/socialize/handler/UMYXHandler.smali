.class public Lcom/umeng/socialize/handler/UMYXHandler;
.super Lcom/umeng/socialize/handler/UMSSOHandler;
.source "UMYXHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/handler/UMYXHandler$ShareListenerWrapper;
    }
.end annotation


# static fields
.field private static mYXApi:Lim/yixin/sdk/api/IYXAPI;


# instance fields
.field protected TAG:Ljava/lang/String;

.field private config:Lcom/umeng/socialize/PlatformConfig$Yixin;

.field private isToCircle:Z

.field private mCallbackHandler:Lim/yixin/sdk/api/IYXAPICallbackEventHandler;

.field private mContext:Landroid/content/Context;

.field private mShareListener:Lcom/umeng/socialize/handler/UMYXHandler$ShareListenerWrapper;

.field private mTarget:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field private msharecontent:Lcom/umeng/socialize/media/YiXinShareContent;

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .registers 2

