.class public Lcom/github/mikephil/charting/jobs/AnimatedZoomJob;
.super Lcom/github/mikephil/charting/jobs/AnimatedViewPortJob;
.source "AnimatedZoomJob.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static pool:Lcom/github/mikephil/charting/utils/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/mikephil/charting/utils/ObjectPool",
            "<",
            "Lcom/github/mikephil/charting/jobs/AnimatedZoomJob;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mOnAnimationUpdateMatrixBuffer:Landroid/graphics/Matrix;

.field protected xAxisRange:F

.field protected yAxis:Lcom/github/mikephil/charting/components/YAxis;

.field protected zoomCenterX:F

.field protected zoomCenterY:F

.field protected zoomOriginX:F

.field protected zoomOriginY:F


# direct methods
.method static constructor <clinit>()V
    .registers 19

    .prologue
    .line 24
    const/16 v18, 0x8

    new-instance v2, Lcom/github/mikephil/charting/jobs/AnimatedZoomJob;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    invoke-direct/range {v2 .. v17}, Lcom/github/mikephil/charting/jobs/AnimatedZoomJob;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Landroid/view/View;Lcom/github/mikephil/charting/utils/Transformer;Lcom/github/mikephil/charting/components/YAxis;FFFFFFFFFJ)V

    move/from16 v0, v18

    invoke-static {v0, v2}, Lcom/github/mikephil/charting/utils/ObjectPool;->create(ILcom/github/mikephil/charting/utils/ObjectPool$Poolable;)Lcom/github/mikephil/charting/utils/ObjectPool;

    move-result-object v2

    sput-object v2, Lcom/github/mikephil/charting/jobs/AnimatedZoomJob;->pool:Lcom/github/mikephil/charting/utils/ObjectPool;

    .line 25
    return-void
.end method

