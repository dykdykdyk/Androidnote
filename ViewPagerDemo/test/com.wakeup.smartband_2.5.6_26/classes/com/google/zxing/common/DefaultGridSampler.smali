.class public final Lcom/google/zxing/common/DefaultGridSampler;
.super Lcom/google/zxing/common/GridSampler;
.source "DefaultGridSampler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/zxing/common/GridSampler;-><init>()V

    return-void
.end method


# virtual methods
.method public sampleGrid(Lcom/google/zxing/common/BitMatrix;IIFFFFFFFFFFFFFFFF)Lcom/google/zxing/common/BitMatrix;
    .registers 22
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p2, "dimensionX"    # I
    .param p3, "dimensionY"    # I
    .param p4, "p1ToX"    # F
    .param p5, "p1ToY"    # F
    .param p6, "p2ToX"    # F
    .param p7, "p2ToY"    # F
    .param p8, "p3ToX"    # F
    .param p9, "p3ToY"    # F
    .param p10, "p4ToX"    # F
    .param p11, "p4ToY"    # F
    .param p12, "p1FromX"    # F
    .param p13, "p1FromY"    # F
    .param p14, "p2FromX"    # F
    .param p15, "p2FromY"    # F
    .param p16, "p3FromX"    # F
    .param p17, "p3FromY"    # F
    .param p18, "p4FromX"    # F
    .param p19, "p4FromY"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-static/range {p4 .. p19}, Lcom/google/zxing/common/PerspectiveTransform;->quadrilateralToQuadrilateral(FFFFFFFFFFFFFFFF)Lcom/google/zxing/common/PerspectiveTransform;

    move-result-object v0

    .line 43
    .local v0, "transform":Lcom/google/zxing/common/PerspectiveTransform;
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/zxing/common/DefaultGridSampler;->sampleGrid(Lcom/google/zxing/common/BitMatrix;IILcom/google/zxing/common/PerspectiveTransform;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    return-object v1
.end method

.method public sampleGrid(Lcom/google/zxing/common/BitMatrix;IILcom/google/zxing/common/PerspectiveTransform;)Lcom/google/zxing/common/BitMatrix;
    .registers 15
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p2, "dimensionX"    # I
    .param p3, "dimensionY"    # I
    .param p4, "transform"    # Lcom/google/zxing/common/PerspectiveTransform;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/high16 v9, 0x3f000000

    .line 51
    if-lez p2, :cond_6

    if-gtz p3, :cond_b

    .line 52
    :cond_6
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v7

    throw v7

    .line 54
    :cond_b
    new-instance v1, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v1, p2, p3}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .line 55
    .local v1, "bits":Lcom/google/zxing/common/BitMatrix;
    mul-int/lit8 v7, p2, 0x2

    new-array v4, v7, [F

    .line 56
    .local v4, "points":[F
    const/4 v6, 0x0

    .local v6, "y":I
    :goto_15
    if-ge v6, p3, :cond_53

    .line 57
    array-length v3, v4

    .line 58
    .local v3, "max":I
    int-to-float v7, v6

    add-float v2, v7, v9

    .line 59
    .local v2, "iValue":F
    const/4 v5, 0x0

    .local v5, "x":I
    :goto_1c
    if-ge v5, v3, :cond_2b

    .line 60
    div-int/lit8 v7, v5, 0x2

    int-to-float v7, v7

    add-float/2addr v7, v9

    aput v7, v4, v5

    .line 61
    add-int/lit8 v7, v5, 0x1

    aput v2, v4, v7

    .line 59
    add-int/lit8 v5, v5, 0x2

    goto :goto_1c

    .line 63
    :cond_2b
    invoke-virtual {p4, v4}, Lcom/google/zxing/common/PerspectiveTransform;->transformPoints([F)V

    .line 66
    invoke-static {p1, v4}, Lcom/google/zxing/common/DefaultGridSampler;->checkAndNudgePoints(Lcom/google/zxing/common/BitMatrix;[F)V

    .line 68
    const/4 v5, 0x0

    :goto_32
    if-ge v5, v3, :cond_50

    .line 69
    :try_start_34
    aget v7, v4, v5

    float-to-int v7, v7

    add-int/lit8 v8, v5, 0x1

    aget v8, v4, v8

    float-to-int v8, v8

    invoke-virtual {p1, v7, v8}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v7

    if-eqz v7, :cond_47

    .line 71
    div-int/lit8 v7, v5, 0x2

    invoke-virtual {v1, v7, v6}, Lcom/google/zxing/common/BitMatrix;->set(II)V
    :try_end_47
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_34 .. :try_end_47} :catch_4a

    .line 68
    :cond_47
    add-int/lit8 v5, v5, 0x2

    goto :goto_32

    .line 74
    :catch_4a
    move-exception v0

    .line 82
    .local v0, "aioobe":Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v7

    throw v7

    .line 56
    .end local v0    # "aioobe":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_50
    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    .line 85
    .end local v2    # "iValue":F
    .end local v3    # "max":I
    .end local v5    # "x":I
    :cond_53
    return-object v1
.end method
