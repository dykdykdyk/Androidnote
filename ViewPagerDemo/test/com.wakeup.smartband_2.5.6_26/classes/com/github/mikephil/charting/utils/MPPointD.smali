.class public Lcom/github/mikephil/charting/utils/MPPointD;
.super Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;
.source "MPPointD.java"


# static fields
.field private static pool:Lcom/github/mikephil/charting/utils/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/mikephil/charting/utils/ObjectPool",
            "<",
            "Lcom/github/mikephil/charting/utils/MPPointD;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public x:D

.field public y:D


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const-wide/16 v2, 0x0

    .line 16
    const/16 v0, 0x40

    new-instance v1, Lcom/github/mikephil/charting/utils/MPPointD;

    invoke-direct {v1, v2, v3, v2, v3}, Lcom/github/mikephil/charting/utils/MPPointD;-><init>(DD)V

    invoke-static {v0, v1}, Lcom/github/mikephil/charting/utils/ObjectPool;->create(ILcom/github/mikephil/charting/utils/ObjectPool$Poolable;)Lcom/github/mikephil/charting/utils/ObjectPool;

    move-result-object v0

    sput-object v0, Lcom/github/mikephil/charting/utils/MPPointD;->pool:Lcom/github/mikephil/charting/utils/ObjectPool;

    .line 17
    sget-object v0, Lcom/github/mikephil/charting/utils/MPPointD;->pool:Lcom/github/mikephil/charting/utils/ObjectPool;

    const/high16 v1, 0x3f000000

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/ObjectPool;->setReplenishPercentage(F)V

    .line 18
    return-void
.end method

