.class public Lcom/sina/weibo/sdk/ApiUtils;
.super Ljava/lang/Object;
.source "ApiUtils.java"


# static fields
.field public static final BUILD_INT:I = 0x286e

.field public static final BUILD_INT_440:I = 0x2873

.field public static final BUILD_INT_VER_2_2:I = 0x286f

.field public static final BUILD_INT_VER_2_3:I = 0x2870

.field public static final BUILD_INT_VER_2_5:I = 0x2871

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const-class v0, Lcom/sina/weibo/sdk/ApiUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/ApiUtils;->TAG:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .registers 1

