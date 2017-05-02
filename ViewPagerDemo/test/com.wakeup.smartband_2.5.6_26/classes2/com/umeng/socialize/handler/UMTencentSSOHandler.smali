.class public abstract Lcom/umeng/socialize/handler/UMTencentSSOHandler;
.super Lcom/umeng/socialize/handler/UMSSOHandler;
.source "UMTencentSSOHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/handler/UMTencentSSOHandler$ObtainImageUrlListener;,
        Lcom/umeng/socialize/handler/UMTencentSSOHandler$ObtainAppIdListener;
    }
.end annotation


# static fields
.field private static final PUBLIC_ACCOUNT:Ljava/lang/String; = "100424468"

.field private static final TAG:Ljava/lang/String; = "UMTencentSSOHandler"

.field protected static mImageCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public config:Lcom/umeng/socialize/PlatformConfig$QQZone;

.field private context:Landroid/content/Context;

.field protected mAuthListener:Lcom/umeng/socialize/UMAuthListener;

.field protected mImageUrl:Ljava/lang/String;

.field protected mProgressDialog:Landroid/app/ProgressDialog;

.field protected mShareListener:Lcom/umeng/socialize/UMShareListener;

.field protected mTencent:Lcom/tencent/tauth/Tencent;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/socialize/handler/UMTencentSSOHandler;->mImageCache:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

