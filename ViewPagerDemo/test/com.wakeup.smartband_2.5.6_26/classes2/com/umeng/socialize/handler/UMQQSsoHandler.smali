.class public Lcom/umeng/socialize/handler/UMQQSsoHandler;
.super Lcom/umeng/socialize/handler/UMTencentSSOHandler;
.source "UMQQSsoHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UMQQSsoHandler"


# instance fields
.field private GOTO_SHARE_ACTIVITY:Z

.field private mActivity:Landroid/app/Activity;

.field private mParams:Landroid/os/Bundle;

.field private mShareListener:Lcom/tencent/tauth/IUiListener;

.field private msharecontent:Lcom/umeng/socialize/media/QQShareContent;

.field private qqPreferences:Lcom/umeng/socialize/handler/QQPreferences;


# direct methods
.method public constructor <init>()V
    .registers 2

