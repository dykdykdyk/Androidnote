.class public Lcom/umeng/socialize/handler/TencentWBSsoHandler;
.super Lcom/umeng/socialize/handler/UMAPIShareHandler;
.source "TencentWBSsoHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/handler/TencentWBSsoHandler$AuthListenerWrapper;
    }
.end annotation


# static fields
.field private static final waiturl:Ljava/lang/String; = "tenc2/main?uid"


# instance fields
.field private config:Lcom/umeng/socialize/PlatformConfig$TencentWeibo;

.field private context:Landroid/content/Context;

.field private tencentWBSharepreference:Lcom/umeng/socialize/media/TencentWBSharepreference;


# direct methods
.method public constructor <init>()V
    .registers 1

