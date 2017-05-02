.class public Lcom/github/mikephil/charting/jobs/ZoomJob;
.super Lcom/github/mikephil/charting/jobs/ViewPortJob;
.source "ZoomJob.java"


# static fields
.field private static pool:Lcom/github/mikephil/charting/utils/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/mikephil/charting/utils/ObjectPool",
            "<",
            "Lcom/github/mikephil/charting/jobs/ZoomJob;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected axisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

.field protected mRunMatrixBuffer:Landroid/graphics/Matrix;

.field protected scaleX:F

.field protected scaleY:F


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 21
    const/4 v9, 0x1

    new-instance v0, Lcom/github/mikephil/charting/jobs/ZoomJob;

    move v3, v2

    move v4, v2

    move v5, v2

    move-object v6, v1

    move-object v7, v1

    move-object v8, v1

    invoke-direct/range {v0 .. v8}, Lcom/github/mikephil/charting/jobs/ZoomJob;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;FFFFLcom/github/mikephil/charting/utils/Transformer;Lcom/github/mikephil/charting/components/YAxis$AxisDependency;Landroid/view/View;)V

    invoke-static {v9, v0}, Lcom/github/mikephil/charting/utils/ObjectPool;->create(ILcom/github/mikephil/charting/utils/ObjectPool$Poolable;)Lcom/github/mikephil/charting/utils/ObjectPool;

    move-result-object v0

    sput-object v0, Lcom/github/mikephil/charting/jobs/ZoomJob;->pool:Lcom/github/mikephil/charting/utils/ObjectPool;

    .line 22
    sget-object v0, Lcom/github/mikephil/charting/jobs/ZoomJob;->pool:Lcom/github/mikephil/charting/utils/ObjectPool;

    const/high16 v1, 0x3f000000

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/ObjectPool;->setReplenishPercentage(F)V

    .line 23
    return-void
.end method

