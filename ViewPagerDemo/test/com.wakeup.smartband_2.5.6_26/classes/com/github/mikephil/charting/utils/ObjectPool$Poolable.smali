.class public abstract Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;
.super Ljava/lang/Object;
.source "ObjectPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/mikephil/charting/utils/ObjectPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Poolable"
.end annotation


# static fields
.field public static NO_OWNER:I


# instance fields
.field currentOwnerId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 212
    const/4 v0, -0x1

    sput v0, Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;->NO_OWNER:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

