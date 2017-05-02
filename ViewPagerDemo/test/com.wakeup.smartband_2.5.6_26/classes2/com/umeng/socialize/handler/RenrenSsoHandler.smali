.class public Lcom/umeng/socialize/handler/RenrenSsoHandler;
.super Lcom/umeng/socialize/handler/UMAPIShareHandler;
.source "RenrenSsoHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/handler/RenrenSsoHandler$AuthListenerWrapper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RenrenSsoHandler"

.field private static final waiturl:Ljava/lang/String; = "renr2/main?uid"


# instance fields
.field private config:Lcom/umeng/socialize/PlatformConfig$Renren;

.field private mContext:Landroid/content/Context;

.field protected mRenrenClient:Lcom/renn/rennsdk/RennClient;

.field private renrenPreferences:Lcom/umeng/socialize/handler/RenrenPreferences;


# direct methods
.method public constructor <init>()V
    .registers 2

