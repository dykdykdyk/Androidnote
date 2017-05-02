.class public Lcom/umeng/socialize/handler/QZoneSsoHandler;
.super Lcom/umeng/socialize/handler/UMTencentSSOHandler;
.source "QZoneSsoHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "QZoneSsoHandler"


# instance fields
.field private context:Landroid/content/Context;

.field private mActivity:Landroid/app/Activity;

.field private mShareContent:Lcom/umeng/socialize/media/QZoneShareContent;

.field private mUiListener:Lcom/tencent/tauth/IUiListener;

.field private qqPreferences:Lcom/umeng/socialize/handler/QQPreferences;


# direct methods
.method public constructor <init>()V
    .registers 2

