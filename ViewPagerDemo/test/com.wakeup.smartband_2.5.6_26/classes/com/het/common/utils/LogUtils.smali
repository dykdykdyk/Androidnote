.class public Lcom/het/common/utils/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "c-life"

.field public static isDebug:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const/4 v0, 0x1

    sput-boolean v0, Lcom/het/common/utils/LogUtils;->isDebug:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 3

