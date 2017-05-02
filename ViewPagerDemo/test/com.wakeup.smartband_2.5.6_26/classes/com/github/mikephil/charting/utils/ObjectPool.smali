.class public Lcom/github/mikephil/charting/utils/ObjectPool;
.super Ljava/lang/Object;
.source "ObjectPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static ids:I


# instance fields
.field private desiredCapacity:I

.field private modelObject:Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private objects:[Ljava/lang/Object;

.field private objectsPointer:I

.field private poolId:I

.field private replenishPercentage:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput v0, Lcom/github/mikephil/charting/utils/ObjectPool;->ids:I

    return-void
.end method

