.class public final Lcom/google/zxing/common/detector/WhiteRectangleDetector;
.super Ljava/lang/Object;
.source "WhiteRectangleDetector.java"


# static fields
.field private static final CORR:I = 0x1

.field private static final INIT_SIZE:I = 0xa


# instance fields
.field private final downInit:I

.field private final height:I

.field private final image:Lcom/google/zxing/common/BitMatrix;

.field private final leftInit:I

.field private final rightInit:I

.field private final upInit:I

.field private final width:I


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .registers 5
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 47
    const/16 v0, 0xa

    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;-><init>(Lcom/google/zxing/common/BitMatrix;III)V

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;III)V
    .registers 8
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p2, "initSize"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    .line 59
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    .line 60
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    .line 61
    div-int/lit8 v0, p2, 0x2

    .line 62
    .local v0, "halfsize":I
    sub-int v1, p3, v0

    iput v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->leftInit:I

    .line 63
    add-int v1, p3, v0

    iput v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->rightInit:I

    .line 64
    sub-int v1, p4, v0

    iput v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->upInit:I

    .line 65
    add-int v1, p4, v0

    iput v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->downInit:I

    .line 66
    iget v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->upInit:I

    if-ltz v1, :cond_37

    iget v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->leftInit:I

    if-ltz v1, :cond_37

    iget v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->downInit:I

    iget v2, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    if-ge v1, v2, :cond_37

    iget v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->rightInit:I

    iget v2, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    if-lt v1, v2, :cond_3c

    .line 67
    :cond_37
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 69
    :cond_3c
    return-void
.end method

.method private centerEdges(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)[Lcom/google/zxing/ResultPoint;
    .registers 18
    .param p1, "y"    # Lcom/google/zxing/ResultPoint;
    .param p2, "z"    # Lcom/google/zxing/ResultPoint;
    .param p3, "x"    # Lcom/google/zxing/ResultPoint;
    .param p4, "t"    # Lcom/google/zxing/ResultPoint;

    .prologue
    .line 290
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v4

    .line 291
    .local v4, "yi":F
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v5

    .line 292
    .local v5, "yj":F
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v6

    .line 293
    .local v6, "zi":F
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v7

    .line 294
    .local v7, "zj":F
    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    .line 295
    .local v2, "xi":F
    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    .line 296
    .local v3, "xj":F
    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    .line 297
    .local v0, "ti":F
    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    .line 299
    .local v1, "tj":F
    iget v8, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    int-to-float v8, v8

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    cmpg-float v8, v4, v8

    if-gez v8, :cond_6a

    .line 300
    const/4 v8, 0x4

    new-array v8, v8, [Lcom/google/zxing/ResultPoint;

    const/4 v9, 0x0

    new-instance v10, Lcom/google/zxing/ResultPoint;

    const/high16 v11, 0x3f800000

    sub-float v11, v0, v11

    const/high16 v12, 0x3f800000

    add-float/2addr v12, v1

    invoke-direct {v10, v11, v12}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v10, v8, v9

    const/4 v9, 0x1

    new-instance v10, Lcom/google/zxing/ResultPoint;

    const/high16 v11, 0x3f800000

    add-float/2addr v11, v6

    const/high16 v12, 0x3f800000

    add-float/2addr v12, v7

    invoke-direct {v10, v11, v12}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v10, v8, v9

    const/4 v9, 0x2

    new-instance v10, Lcom/google/zxing/ResultPoint;

    const/high16 v11, 0x3f800000

    sub-float v11, v2, v11

    const/high16 v12, 0x3f800000

    sub-float v12, v3, v12

    invoke-direct {v10, v11, v12}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v10, v8, v9

    const/4 v9, 0x3

    new-instance v10, Lcom/google/zxing/ResultPoint;

    const/high16 v11, 0x3f800000

    add-float/2addr v11, v4

    const/high16 v12, 0x3f800000

    sub-float v12, v5, v12

    invoke-direct {v10, v11, v12}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v10, v8, v9

    .line 306
    :goto_69
    return-object v8

    :cond_6a
    const/4 v8, 0x4

    new-array v8, v8, [Lcom/google/zxing/ResultPoint;

    const/4 v9, 0x0

    new-instance v10, Lcom/google/zxing/ResultPoint;

    const/high16 v11, 0x3f800000

    add-float/2addr v11, v0

    const/high16 v12, 0x3f800000

    add-float/2addr v12, v1

    invoke-direct {v10, v11, v12}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v10, v8, v9

    const/4 v9, 0x1

    new-instance v10, Lcom/google/zxing/ResultPoint;

    const/high16 v11, 0x3f800000

    add-float/2addr v11, v6

    const/high16 v12, 0x3f800000

    sub-float v12, v7, v12

    invoke-direct {v10, v11, v12}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v10, v8, v9

    const/4 v9, 0x2

    new-instance v10, Lcom/google/zxing/ResultPoint;

    const/high16 v11, 0x3f800000

    sub-float v11, v2, v11

    const/high16 v12, 0x3f800000

    add-float/2addr v12, v3

    invoke-direct {v10, v11, v12}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v10, v8, v9

    const/4 v9, 0x3

    new-instance v10, Lcom/google/zxing/ResultPoint;

    const/high16 v11, 0x3f800000

    sub-float v11, v4, v11

    const/high16 v12, 0x3f800000

    sub-float v12, v5, v12

    invoke-direct {v10, v11, v12}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v10, v8, v9

    goto :goto_69
.end method

.method private containsBlackPoint(IIIZ)Z
    .registers 9
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "fixed"    # I
    .param p4, "horizontal"    # Z

    .prologue
    const/4 v2, 0x1

    .line 325
    if-eqz p4, :cond_12

    .line 326
    move v0, p1

    .local v0, "x":I
    :goto_4
    if-gt v0, p2, :cond_20

    .line 327
    iget-object v3, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v3, v0, p3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 339
    .end local v0    # "x":I
    :cond_e
    :goto_e
    return v2

    .line 326
    .restart local v0    # "x":I
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 332
    .end local v0    # "x":I
    :cond_12
    move v1, p1

    .local v1, "y":I
    :goto_13
    if-gt v1, p2, :cond_20

    .line 333
    iget-object v3, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v3, p3, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-nez v3, :cond_e

    .line 332
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 339
    .end local v1    # "y":I
    :cond_20
    const/4 v2, 0x0

    goto :goto_e
.end method

.method private getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;
    .registers 14
    .param p1, "aX"    # F
    .param p2, "aY"    # F
    .param p3, "bX"    # F
    .param p4, "bY"    # F

    .prologue
    .line 253
    invoke-static {p1, p2, p3, p4}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v6

    invoke-static {v6}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v0

    .line 254
    .local v0, "dist":I
    sub-float v6, p3, p1

    int-to-float v7, v0

    div-float v3, v6, v7

    .line 255
    .local v3, "xStep":F
    sub-float v6, p4, p2

    int-to-float v7, v0

    div-float v5, v6, v7

    .line 257
    .local v5, "yStep":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    if-ge v1, v0, :cond_36

    .line 258
    int-to-float v6, v1

    mul-float/2addr v6, v3

    add-float/2addr v6, p1

    invoke-static {v6}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v2

    .line 259
    .local v2, "x":I
    int-to-float v6, v1

    mul-float/2addr v6, v5

    add-float/2addr v6, p2

    invoke-static {v6}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v4

    .line 260
    .local v4, "y":I
    iget-object v6, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v6, v2, v4}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    if-eqz v6, :cond_33

    .line 261
    new-instance v6, Lcom/google/zxing/ResultPoint;

    int-to-float v7, v2

    int-to-float v8, v4

    invoke-direct {v6, v7, v8}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 264
    .end local v2    # "x":I
    .end local v4    # "y":I
    :goto_32
    return-object v6

    .line 257
    .restart local v2    # "x":I
    .restart local v4    # "y":I
    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 264
    .end local v2    # "x":I
    .end local v4    # "y":I
    :cond_36
    const/4 v6, 0x0

    goto :goto_32
.end method


# virtual methods
.method public detect()[Lcom/google/zxing/ResultPoint;
    .registers 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 87
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->leftInit:I

    .line 88
    .local v14, "left":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->rightInit:I

    move/from16 v17, v0

    .line 89
    .local v17, "right":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->upInit:I

    move/from16 v22, v0

    .line 90
    .local v22, "up":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->downInit:I

    .line 91
    .local v12, "down":I
    const/16 v19, 0x0

    .line 92
    .local v19, "sizeExceeded":Z
    const/4 v5, 0x1

    .line 93
    .local v5, "aBlackPointFoundOnBorder":Z
    const/4 v6, 0x0

    .line 95
    .local v6, "atLeastOneBlackPointFoundOnBorder":Z
    const/4 v9, 0x0

    .line 96
    .local v9, "atLeastOneBlackPointFoundOnRight":Z
    const/4 v7, 0x0

    .line 97
    .local v7, "atLeastOneBlackPointFoundOnBottom":Z
    const/4 v8, 0x0

    .line 98
    .local v8, "atLeastOneBlackPointFoundOnLeft":Z
    const/4 v10, 0x0

    .line 100
    .local v10, "atLeastOneBlackPointFoundOnTop":Z
    :cond_1c
    :goto_1c
    if-eqz v5, :cond_59

    .line 102
    const/4 v5, 0x0

    .line 107
    const/16 v18, 0x1

    .line 108
    .local v18, "rightBorderNotWhite":Z
    :cond_21
    :goto_21
    if-nez v18, :cond_25

    if-nez v9, :cond_4b

    :cond_25
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    move/from16 v26, v0

    move/from16 v0, v17

    move/from16 v1, v26

    if-ge v0, v1, :cond_4b

    .line 109
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v17

    move/from16 v3, v26

    invoke-direct {v0, v1, v12, v2, v3}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->containsBlackPoint(IIIZ)Z

    move-result v18

    .line 110
    if-eqz v18, :cond_46

    .line 111
    add-int/lit8 v17, v17, 0x1

    .line 112
    const/4 v5, 0x1

    .line 113
    const/4 v9, 0x1

    goto :goto_21

    .line 114
    :cond_46
    if-nez v9, :cond_21

    .line 115
    add-int/lit8 v17, v17, 0x1

    goto :goto_21

    .line 119
    :cond_4b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    move/from16 v26, v0

    move/from16 v0, v17

    move/from16 v1, v26

    if-lt v0, v1, :cond_91

    .line 120
    const/16 v19, 0x1

    .line 190
    .end local v18    # "rightBorderNotWhite":Z
    :cond_59
    :goto_59
    if-nez v19, :cond_1d1

    if-eqz v6, :cond_1d1

    .line 192
    sub-int v16, v17, v14

    .line 194
    .local v16, "maxSize":I
    const/16 v25, 0x0

    .line 195
    .local v25, "z":Lcom/google/zxing/ResultPoint;
    const/4 v13, 0x1

    .local v13, "i":I
    :goto_62
    move/from16 v0, v16

    if-ge v13, v0, :cond_8a

    .line 196
    int-to-float v0, v14

    move/from16 v26, v0

    sub-int v27, v12, v13

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    add-int v28, v14, v13

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    int-to-float v0, v12

    move/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v25

    .line 197
    if-eqz v25, :cond_117

    .line 202
    :cond_8a
    if-nez v25, :cond_11b

    .line 203
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v26

    throw v26

    .line 127
    .end local v13    # "i":I
    .end local v16    # "maxSize":I
    .end local v25    # "z":Lcom/google/zxing/ResultPoint;
    .restart local v18    # "rightBorderNotWhite":Z
    :cond_91
    const/4 v11, 0x1

    .line 128
    .local v11, "bottomBorderNotWhite":Z
    :cond_92
    :goto_92
    if-nez v11, :cond_96

    if-nez v7, :cond_b8

    :cond_96
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v12, v0, :cond_b8

    .line 129
    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v26

    invoke-direct {v0, v14, v1, v12, v2}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->containsBlackPoint(IIIZ)Z

    move-result v11

    .line 130
    if-eqz v11, :cond_b3

    .line 131
    add-int/lit8 v12, v12, 0x1

    .line 132
    const/4 v5, 0x1

    .line 133
    const/4 v7, 0x1

    goto :goto_92

    .line 134
    :cond_b3
    if-nez v7, :cond_92

    .line 135
    add-int/lit8 v12, v12, 0x1

    goto :goto_92

    .line 139
    :cond_b8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-lt v12, v0, :cond_c5

    .line 140
    const/16 v19, 0x1

    .line 141
    goto :goto_59

    .line 147
    :cond_c5
    const/4 v15, 0x1

    .line 148
    .local v15, "leftBorderNotWhite":Z
    :cond_c6
    :goto_c6
    if-nez v15, :cond_ca

    if-nez v8, :cond_e4

    :cond_ca
    if-ltz v14, :cond_e4

    .line 149
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v26

    invoke-direct {v0, v1, v12, v14, v2}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->containsBlackPoint(IIIZ)Z

    move-result v15

    .line 150
    if-eqz v15, :cond_df

    .line 151
    add-int/lit8 v14, v14, -0x1

    .line 152
    const/4 v5, 0x1

    .line 153
    const/4 v8, 0x1

    goto :goto_c6

    .line 154
    :cond_df
    if-nez v8, :cond_c6

    .line 155
    add-int/lit8 v14, v14, -0x1

    goto :goto_c6

    .line 159
    :cond_e4
    if-gez v14, :cond_ea

    .line 160
    const/16 v19, 0x1

    .line 161
    goto/16 :goto_59

    .line 167
    :cond_ea
    const/16 v21, 0x1

    .line 168
    .local v21, "topBorderNotWhite":Z
    :cond_ec
    :goto_ec
    if-nez v21, :cond_f0

    if-nez v10, :cond_10c

    :cond_f0
    if-ltz v22, :cond_10c

    .line 169
    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v22

    move/from16 v3, v26

    invoke-direct {v0, v14, v1, v2, v3}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->containsBlackPoint(IIIZ)Z

    move-result v21

    .line 170
    if-eqz v21, :cond_107

    .line 171
    add-int/lit8 v22, v22, -0x1

    .line 172
    const/4 v5, 0x1

    .line 173
    const/4 v10, 0x1

    goto :goto_ec

    .line 174
    :cond_107
    if-nez v10, :cond_ec

    .line 175
    add-int/lit8 v22, v22, -0x1

    goto :goto_ec

    .line 179
    :cond_10c
    if-gez v22, :cond_112

    .line 180
    const/16 v19, 0x1

    .line 181
    goto/16 :goto_59

    .line 184
    :cond_112
    if-eqz v5, :cond_1c

    .line 185
    const/4 v6, 0x1

    goto/16 :goto_1c

    .line 195
    .end local v11    # "bottomBorderNotWhite":Z
    .end local v15    # "leftBorderNotWhite":Z
    .end local v18    # "rightBorderNotWhite":Z
    .end local v21    # "topBorderNotWhite":Z
    .restart local v13    # "i":I
    .restart local v16    # "maxSize":I
    .restart local v25    # "z":Lcom/google/zxing/ResultPoint;
    :cond_117
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_62

    .line 206
    :cond_11b
    const/16 v20, 0x0

    .line 208
    .local v20, "t":Lcom/google/zxing/ResultPoint;
    const/4 v13, 0x1

    :goto_11e
    move/from16 v0, v16

    if-ge v13, v0, :cond_148

    .line 209
    int-to-float v0, v14

    move/from16 v26, v0

    add-int v27, v22, v13

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    add-int v28, v14, v13

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v20

    .line 210
    if-eqz v20, :cond_14f

    .line 215
    :cond_148
    if-nez v20, :cond_152

    .line 216
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v26

    throw v26

    .line 208
    :cond_14f
    add-int/lit8 v13, v13, 0x1

    goto :goto_11e

    .line 219
    :cond_152
    const/16 v23, 0x0

    .line 221
    .local v23, "x":Lcom/google/zxing/ResultPoint;
    const/4 v13, 0x1

    :goto_155
    move/from16 v0, v16

    if-ge v13, v0, :cond_181

    .line 222
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v26, v0

    add-int v27, v22, v13

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    sub-int v28, v17, v13

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v23

    .line 223
    if-eqz v23, :cond_188

    .line 228
    :cond_181
    if-nez v23, :cond_18b

    .line 229
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v26

    throw v26

    .line 221
    :cond_188
    add-int/lit8 v13, v13, 0x1

    goto :goto_155

    .line 232
    :cond_18b
    const/16 v24, 0x0

    .line 234
    .local v24, "y":Lcom/google/zxing/ResultPoint;
    const/4 v13, 0x1

    :goto_18e
    move/from16 v0, v16

    if-ge v13, v0, :cond_1b8

    .line 235
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v26, v0

    sub-int v27, v12, v13

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    sub-int v28, v17, v13

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    int-to-float v0, v12

    move/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v24

    .line 236
    if-eqz v24, :cond_1bf

    .line 241
    :cond_1b8
    if-nez v24, :cond_1c2

    .line 242
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v26

    throw v26

    .line 234
    :cond_1bf
    add-int/lit8 v13, v13, 0x1

    goto :goto_18e

    .line 245
    :cond_1c2
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v23

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->centerEdges(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)[Lcom/google/zxing/ResultPoint;

    move-result-object v26

    return-object v26

    .line 248
    .end local v13    # "i":I
    .end local v16    # "maxSize":I
    .end local v20    # "t":Lcom/google/zxing/ResultPoint;
    .end local v23    # "x":Lcom/google/zxing/ResultPoint;
    .end local v24    # "y":Lcom/google/zxing/ResultPoint;
    .end local v25    # "z":Lcom/google/zxing/ResultPoint;
    :cond_1d1
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v26

    throw v26
.end method
