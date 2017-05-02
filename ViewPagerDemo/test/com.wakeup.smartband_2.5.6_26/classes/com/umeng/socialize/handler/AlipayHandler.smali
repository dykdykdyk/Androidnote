.class public Lcom/umeng/socialize/handler/AlipayHandler;
.super Lcom/umeng/socialize/handler/UMSSOHandler;
.source "AlipayHandler.java"


# static fields
.field private static final SDCARD_ROOT:Ljava/lang/String;


# instance fields
.field private activity:Landroid/app/Activity;

.field private api:Lcom/alipay/share/sdk/openapi/IAPApi;

.field private config:Lcom/umeng/socialize/PlatformConfig$Alipay;

.field private mSharecontent:Lcom/umeng/socialize/media/AlipayShareContent;

.field private umShareListener:Lcom/umeng/socialize/UMShareListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/handler/AlipayHandler;->SDCARD_ROOT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

