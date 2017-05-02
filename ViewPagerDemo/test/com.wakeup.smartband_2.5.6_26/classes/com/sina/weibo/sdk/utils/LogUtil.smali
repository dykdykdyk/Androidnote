.class public Lcom/sina/weibo/sdk/utils/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# static fields
.field public static sIsLogEnable:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sina/weibo/sdk/utils/LogUtil;->sIsLogEnable:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

