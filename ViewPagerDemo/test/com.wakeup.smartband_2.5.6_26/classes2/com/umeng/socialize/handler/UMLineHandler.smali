.class public Lcom/umeng/socialize/handler/UMLineHandler;
.super Lcom/umeng/socialize/handler/UMSSOHandler;
.source "UMLineHandler.java"


# static fields
.field private static final PACKAGE_NAME:Ljava/lang/String; = "jp.naver.line.android"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const-class v0, Lcom/umeng/socialize/handler/UMLineHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/handler/UMLineHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

