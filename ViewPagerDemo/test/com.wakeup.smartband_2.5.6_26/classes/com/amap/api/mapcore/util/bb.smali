.class public Lcom/amap/api/mapcore/util/bb;
.super Ljava/lang/Object;
.source "OffsetUtil.java"


# static fields
.field static a:D

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lcom/amap/api/mapcore/util/bb;->b:Z

    .line 120
    const-wide v0, 0x400921fb54442d18L

    sput-wide v0, Lcom/amap/api/mapcore/util/bb;->a:D

    return-void
.end method

.method public constructor <init>()V
    .registers 1

