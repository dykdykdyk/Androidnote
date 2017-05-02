.class public final Lorg/litepal/util/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# static fields
.field public static final DEBUG:I = 0x2

.field public static final ERROR:I = 0x5

.field public static level:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const/4 v0, 0x5

    sput v0, Lorg/litepal/util/LogUtil;->level:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

