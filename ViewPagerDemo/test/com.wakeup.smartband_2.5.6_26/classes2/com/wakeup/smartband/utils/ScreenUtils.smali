.class public Lcom/wakeup/smartband/utils/ScreenUtils;
.super Ljava/lang/Object;
.source "ScreenUtils.java"


# static fields
.field private static deviceWidthHeight:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 8
    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/wakeup/smartband/utils/ScreenUtils;->deviceWidthHeight:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

