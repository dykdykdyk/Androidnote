.class final Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
.super Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
.source "DetectionResultRowIndicatorColumn.java"


# instance fields
.field private final isLeft:Z


# direct methods
.method constructor <init>(Lcom/google/zxing/pdf417/decoder/BoundingBox;Z)V
    .registers 3
    .param p1, "boundingBox"    # Lcom/google/zxing/pdf417/decoder/BoundingBox;
    .param p2, "isLeft"    # Z

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;-><init>(Lcom/google/zxing/pdf417/decoder/BoundingBox;)V

    .line 32
    iput-boolean p2, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    .line 33
    return-void
.end method

.method private removeIncorrectCodewords([Lcom/google/zxing/pdf417/decoder/Codeword;Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;)V
    .registers 10
    .param p1, "codewords"    # [Lcom/google/zxing/pdf417/decoder/Codeword;
    .param p2, "barcodeMetadata"    # Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    .prologue
    const/4 v6, 0x0

    .line 223
    const/4 v1, 0x0

    .local v1, "codewordRow":I
    :goto_2
    array-length v4, p1

    if-ge v1, v4, :cond_58

    .line 224
    aget-object v0, p1, v1

    .line 225
    .local v0, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    aget-object v4, p1, v1

    if-nez v4, :cond_e

    .line 223
    :cond_b
    :goto_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 228
    :cond_e
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/Codeword;->getValue()I

    move-result v4

    rem-int/lit8 v3, v4, 0x1e

    .line 229
    .local v3, "rowIndicatorValue":I
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v2

    .line 230
    .local v2, "codewordRowNumber":I
    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v4

    if-le v2, v4, :cond_21

    .line 231
    aput-object v6, p1, v1

    goto :goto_b

    .line 234
    :cond_21
    iget-boolean v4, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    if-nez v4, :cond_27

    .line 235
    add-int/lit8 v2, v2, 0x2

    .line 237
    :cond_27
    rem-int/lit8 v4, v2, 0x3

    packed-switch v4, :pswitch_data_5a

    goto :goto_b

    .line 239
    :pswitch_2d
    mul-int/lit8 v4, v3, 0x3

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCountUpperPart()I

    move-result v5

    if-eq v4, v5, :cond_b

    .line 240
    aput-object v6, p1, v1

    goto :goto_b

    .line 244
    :pswitch_3a
    div-int/lit8 v4, v3, 0x3

    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getErrorCorrectionLevel()I

    move-result v5

    if-ne v4, v5, :cond_4a

    rem-int/lit8 v4, v3, 0x3

    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCountLowerPart()I

    move-result v5

    if-eq v4, v5, :cond_b

    .line 246
    :cond_4a
    aput-object v6, p1, v1

    goto :goto_b

    .line 250
    :pswitch_4d
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getColumnCount()I

    move-result v5

    if-eq v4, v5, :cond_b

    .line 251
    aput-object v6, p1, v1

    goto :goto_b

    .line 256
    .end local v0    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v2    # "codewordRowNumber":I
    .end local v3    # "rowIndicatorValue":I
    :cond_58
    return-void

    .line 237
    nop

    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_3a
        :pswitch_4d
    .end packed-switch
.end method


# virtual methods
.method adjustCompleteIndicatorColumnRowNumbers(Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;)I
    .registers 24
    .param p1, "barcodeMetadata"    # Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    .prologue
    .line 48
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v9

    .line 49
    .local v9, "codewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->setRowNumbers()V

    .line 50
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v9, v1}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->removeIncorrectCodewords([Lcom/google/zxing/pdf417/decoder/Codeword;Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;)V

    .line 51
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v5

    .line 52
    .local v5, "boundingBox":Lcom/google/zxing/pdf417/decoder/BoundingBox;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6b

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getTopLeft()Lcom/google/zxing/ResultPoint;

    move-result-object v17

    .line 53
    .local v17, "top":Lcom/google/zxing/ResultPoint;
    :goto_1e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    move/from16 v18, v0

    if-eqz v18, :cond_70

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getBottomLeft()Lcom/google/zxing/ResultPoint;

    move-result-object v4

    .line 54
    .local v4, "bottom":Lcom/google/zxing/ResultPoint;
    :goto_2a
    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->imageRowToCodewordIndex(I)I

    move-result v12

    .line 55
    .local v12, "firstRow":I
    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->imageRowToCodewordIndex(I)I

    move-result v14

    .line 58
    .local v14, "lastRow":I
    sub-int v18, v14, v12

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v2, v18, v19

    .line 59
    .local v2, "averageRowHeight":F
    const/4 v3, -0x1

    .line 60
    .local v3, "barcodeRow":I
    const/4 v15, 0x1

    .line 61
    .local v15, "maxRowHeight":I
    const/4 v11, 0x0

    .line 62
    .local v11, "currentRowHeight":I
    move v10, v12

    .local v10, "codewordsRow":I
    :goto_62
    if-ge v10, v14, :cond_dd

    .line 63
    aget-object v18, v9, v10

    if-nez v18, :cond_75

    .line 62
    :goto_68
    add-int/lit8 v10, v10, 0x1

    goto :goto_62

    .line 52
    .end local v2    # "averageRowHeight":F
    .end local v3    # "barcodeRow":I
    .end local v4    # "bottom":Lcom/google/zxing/ResultPoint;
    .end local v10    # "codewordsRow":I
    .end local v11    # "currentRowHeight":I
    .end local v12    # "firstRow":I
    .end local v14    # "lastRow":I
    .end local v15    # "maxRowHeight":I
    .end local v17    # "top":Lcom/google/zxing/ResultPoint;
    :cond_6b
    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getTopRight()Lcom/google/zxing/ResultPoint;

    move-result-object v17

    goto :goto_1e

    .line 53
    .restart local v17    # "top":Lcom/google/zxing/ResultPoint;
    :cond_70
    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getBottomRight()Lcom/google/zxing/ResultPoint;

    move-result-object v4

    goto :goto_2a

    .line 66
    .restart local v2    # "averageRowHeight":F
    .restart local v3    # "barcodeRow":I
    .restart local v4    # "bottom":Lcom/google/zxing/ResultPoint;
    .restart local v10    # "codewordsRow":I
    .restart local v11    # "currentRowHeight":I
    .restart local v12    # "firstRow":I
    .restart local v14    # "lastRow":I
    .restart local v15    # "maxRowHeight":I
    :cond_75
    aget-object v8, v9, v10

    .line 76
    .local v8, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v18

    sub-int v16, v18, v3

    .line 80
    .local v16, "rowDifference":I
    if-nez v16, :cond_82

    .line 81
    add-int/lit8 v11, v11, 0x1

    goto :goto_68

    .line 82
    :cond_82
    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_94

    .line 83
    invoke-static {v15, v11}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 84
    const/4 v11, 0x1

    .line 85
    invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v3

    goto :goto_68

    .line 86
    :cond_94
    if-ltz v16, :cond_a8

    invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_a8

    move/from16 v0, v16

    if-le v0, v10, :cond_ad

    .line 89
    :cond_a8
    const/16 v18, 0x0

    aput-object v18, v9, v10

    goto :goto_68

    .line 92
    :cond_ad
    const/16 v18, 0x2

    move/from16 v0, v18

    if-le v15, v0, :cond_c9

    .line 93
    add-int/lit8 v18, v15, -0x2

    mul-int v6, v18, v16

    .line 97
    .local v6, "checkedRows":I
    :goto_b7
    if-lt v6, v10, :cond_cc

    const/4 v7, 0x1

    .line 98
    .local v7, "closePreviousCodewordFound":Z
    :goto_ba
    const/4 v13, 0x1

    .local v13, "i":I
    :goto_bb
    if-gt v13, v6, :cond_d0

    if-nez v7, :cond_d0

    .line 101
    sub-int v18, v10, v13

    aget-object v18, v9, v18

    if-eqz v18, :cond_ce

    const/4 v7, 0x1

    .line 98
    :goto_c6
    add-int/lit8 v13, v13, 0x1

    goto :goto_bb

    .line 95
    .end local v6    # "checkedRows":I
    .end local v7    # "closePreviousCodewordFound":Z
    .end local v13    # "i":I
    :cond_c9
    move/from16 v6, v16

    .restart local v6    # "checkedRows":I
    goto :goto_b7

    .line 97
    :cond_cc
    const/4 v7, 0x0

    goto :goto_ba

    .line 101
    .restart local v7    # "closePreviousCodewordFound":Z
    .restart local v13    # "i":I
    :cond_ce
    const/4 v7, 0x0

    goto :goto_c6

    .line 103
    :cond_d0
    if-eqz v7, :cond_d7

    .line 104
    const/16 v18, 0x0

    aput-object v18, v9, v10

    goto :goto_68

    .line 106
    :cond_d7
    invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v3

    .line 107
    const/4 v11, 0x1

    goto :goto_68

    .line 111
    .end local v6    # "checkedRows":I
    .end local v7    # "closePreviousCodewordFound":Z
    .end local v8    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v13    # "i":I
    .end local v16    # "rowDifference":I
    :cond_dd
    float-to-double v0, v2

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x3fe0000000000000L

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    return v18
.end method

.method adjustIncompleteIndicatorColumnRowNumbers(Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;)I
    .registers 22
    .param p1, "barcodeMetadata"    # Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    .prologue
    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v5

    .line 138
    .local v5, "boundingBox":Lcom/google/zxing/pdf417/decoder/BoundingBox;
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    if-eqz v15, :cond_4d

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getTopLeft()Lcom/google/zxing/ResultPoint;

    move-result-object v14

    .line 139
    .local v14, "top":Lcom/google/zxing/ResultPoint;
    :goto_e
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    if-eqz v15, :cond_52

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getBottomLeft()Lcom/google/zxing/ResultPoint;

    move-result-object v4

    .line 140
    .local v4, "bottom":Lcom/google/zxing/ResultPoint;
    :goto_18
    invoke-virtual {v14}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v15

    float-to-int v15, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->imageRowToCodewordIndex(I)I

    move-result v10

    .line 141
    .local v10, "firstRow":I
    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v15

    float-to-int v15, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->imageRowToCodewordIndex(I)I

    move-result v11

    .line 142
    .local v11, "lastRow":I
    sub-int v15, v11, v10

    int-to-float v15, v15

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v2, v15, v16

    .line 143
    .local v2, "averageRowHeight":F
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v7

    .line 144
    .local v7, "codewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    const/4 v3, -0x1

    .line 145
    .local v3, "barcodeRow":I
    const/4 v12, 0x1

    .line 146
    .local v12, "maxRowHeight":I
    const/4 v9, 0x0

    .line 147
    .local v9, "currentRowHeight":I
    move v8, v10

    .local v8, "codewordsRow":I
    :goto_44
    if-ge v8, v11, :cond_8a

    .line 148
    aget-object v15, v7, v8

    if-nez v15, :cond_57

    .line 147
    :goto_4a
    add-int/lit8 v8, v8, 0x1

    goto :goto_44

    .line 138
    .end local v2    # "averageRowHeight":F
    .end local v3    # "barcodeRow":I
    .end local v4    # "bottom":Lcom/google/zxing/ResultPoint;
    .end local v7    # "codewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v8    # "codewordsRow":I
    .end local v9    # "currentRowHeight":I
    .end local v10    # "firstRow":I
    .end local v11    # "lastRow":I
    .end local v12    # "maxRowHeight":I
    .end local v14    # "top":Lcom/google/zxing/ResultPoint;
    :cond_4d
    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getTopRight()Lcom/google/zxing/ResultPoint;

    move-result-object v14

    goto :goto_e

    .line 139
    .restart local v14    # "top":Lcom/google/zxing/ResultPoint;
    :cond_52
    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getBottomRight()Lcom/google/zxing/ResultPoint;

    move-result-object v4

    goto :goto_18

    .line 151
    .restart local v2    # "averageRowHeight":F
    .restart local v3    # "barcodeRow":I
    .restart local v4    # "bottom":Lcom/google/zxing/ResultPoint;
    .restart local v7    # "codewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    .restart local v8    # "codewordsRow":I
    .restart local v9    # "currentRowHeight":I
    .restart local v10    # "firstRow":I
    .restart local v11    # "lastRow":I
    .restart local v12    # "maxRowHeight":I
    :cond_57
    aget-object v6, v7, v8

    .line 153
    .local v6, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/Codeword;->setRowNumberAsRowIndicatorColumn()V

    .line 155
    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v15

    sub-int v13, v15, v3

    .line 159
    .local v13, "rowDifference":I
    if-nez v13, :cond_67

    .line 160
    add-int/lit8 v9, v9, 0x1

    goto :goto_4a

    .line 161
    :cond_67
    const/4 v15, 0x1

    if-ne v13, v15, :cond_74

    .line 162
    invoke-static {v12, v9}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 163
    const/4 v9, 0x1

    .line 164
    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v3

    goto :goto_4a

    .line 165
    :cond_74
    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v16

    move/from16 v0, v16

    if-lt v15, v0, :cond_84

    .line 166
    const/4 v15, 0x0

    aput-object v15, v7, v8

    goto :goto_4a

    .line 168
    :cond_84
    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v3

    .line 169
    const/4 v9, 0x1

    goto :goto_4a

    .line 172
    .end local v6    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v13    # "rowDifference":I
    :cond_8a
    float-to-double v0, v2

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x3fe0000000000000L

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v15, v0

    return v15
.end method

.method getBarcodeMetadata()Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    .registers 19

    .prologue
    .line 176
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v9

    .line 177
    .local v9, "codewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    new-instance v2, Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    invoke-direct {v2}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;-><init>()V

    .line 178
    .local v2, "barcodeColumnCount":Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    new-instance v6, Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    invoke-direct {v6}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;-><init>()V

    .line 179
    .local v6, "barcodeRowCountUpperPart":Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    new-instance v5, Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    invoke-direct {v5}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;-><init>()V

    .line 180
    .local v5, "barcodeRowCountLowerPart":Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    new-instance v3, Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    invoke-direct {v3}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;-><init>()V

    .line 181
    .local v3, "barcodeECLevel":Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    move-object v1, v9

    .local v1, "arr$":[Lcom/google/zxing/pdf417/decoder/Codeword;
    array-length v11, v1

    .local v11, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_1b
    if-ge v10, v11, :cond_58

    aget-object v7, v1, v10

    .line 182
    .local v7, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    if-nez v7, :cond_24

    .line 181
    :goto_21
    add-int/lit8 v10, v10, 0x1

    goto :goto_1b

    .line 185
    :cond_24
    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/Codeword;->setRowNumberAsRowIndicatorColumn()V

    .line 186
    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/Codeword;->getValue()I

    move-result v13

    rem-int/lit8 v12, v13, 0x1e

    .line 187
    .local v12, "rowIndicatorValue":I
    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v8

    .line 188
    .local v8, "codewordRowNumber":I
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    if-nez v13, :cond_39

    .line 189
    add-int/lit8 v8, v8, 0x2

    .line 191
    :cond_39
    rem-int/lit8 v13, v8, 0x3

    packed-switch v13, :pswitch_data_d0

    goto :goto_21

    .line 193
    :pswitch_3f
    mul-int/lit8 v13, v12, 0x3

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v6, v13}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    goto :goto_21

    .line 196
    :pswitch_47
    div-int/lit8 v13, v12, 0x3

    invoke-virtual {v3, v13}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    .line 197
    rem-int/lit8 v13, v12, 0x3

    invoke-virtual {v5, v13}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    goto :goto_21

    .line 200
    :pswitch_52
    add-int/lit8 v13, v12, 0x1

    invoke-virtual {v2, v13}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    goto :goto_21

    .line 205
    .end local v7    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v8    # "codewordRowNumber":I
    .end local v12    # "rowIndicatorValue":I
    :cond_58
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v13

    array-length v13, v13

    if-eqz v13, :cond_a3

    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v13

    array-length v13, v13

    if-eqz v13, :cond_a3

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v13

    array-length v13, v13

    if-eqz v13, :cond_a3

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v13

    array-length v13, v13

    if-eqz v13, :cond_a3

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v13

    const/4 v14, 0x0

    aget v13, v13, v14

    const/4 v14, 0x1

    if-lt v13, v14, :cond_a3

    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v13

    const/4 v14, 0x0

    aget v13, v13, v14

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v14

    const/4 v15, 0x0

    aget v14, v14, v15

    add-int/2addr v13, v14

    const/4 v14, 0x3

    if-lt v13, v14, :cond_a3

    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v13

    const/4 v14, 0x0

    aget v13, v13, v14

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v14

    const/4 v15, 0x0

    aget v14, v14, v15

    add-int/2addr v13, v14

    const/16 v14, 0x5a

    if-le v13, v14, :cond_a5

    .line 212
    :cond_a3
    const/4 v4, 0x0

    .line 217
    :goto_a4
    return-object v4

    .line 214
    :cond_a5
    new-instance v4, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v13

    const/4 v14, 0x0

    aget v13, v13, v14

    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v14

    const/4 v15, 0x0

    aget v14, v14, v15

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v15

    const/16 v16, 0x0

    aget v15, v15, v16

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v16

    const/16 v17, 0x0

    aget v16, v16, v17

    move/from16 v0, v16

    invoke-direct {v4, v13, v14, v15, v0}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;-><init>(IIII)V

    .line 216
    .local v4, "barcodeMetadata":Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v4}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->removeIncorrectCodewords([Lcom/google/zxing/pdf417/decoder/Codeword;Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;)V

    goto :goto_a4

    .line 191
    :pswitch_data_d0
    .packed-switch 0x0
        :pswitch_3f
        :pswitch_47
        :pswitch_52
    .end packed-switch
.end method

.method getRowHeights()[I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBarcodeMetadata()Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    move-result-object v1

    .line 116
    .local v1, "barcodeMetadata":Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    if-nez v1, :cond_8

    .line 117
    const/4 v5, 0x0

    .line 130
    :cond_7
    return-object v5

    .line 119
    :cond_8
    invoke-virtual {p0, v1}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->adjustIncompleteIndicatorColumnRowNumbers(Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;)I

    .line 120
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v7

    new-array v5, v7, [I

    .line 121
    .local v5, "result":[I
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v0

    .local v0, "arr$":[Lcom/google/zxing/pdf417/decoder/Codeword;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_17
    if-ge v3, v4, :cond_7

    aget-object v2, v0, v3

    .line 122
    .local v2, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    if-eqz v2, :cond_2f

    .line 123
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v6

    .line 124
    .local v6, "rowNumber":I
    array-length v7, v5

    if-lt v6, v7, :cond_29

    .line 125
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v7

    throw v7

    .line 127
    :cond_29
    aget v7, v5, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v5, v6

    .line 121
    .end local v6    # "rowNumber":I
    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_17
.end method

.method isLeft()Z
    .registers 2

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    return v0
.end method

.method setRowNumbers()V
    .registers 5

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v0

    .local v0, "arr$":[Lcom/google/zxing/pdf417/decoder/Codeword;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_6
    if-ge v2, v3, :cond_12

    aget-object v1, v0, v2

    .line 37
    .local v1, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    if-eqz v1, :cond_f

    .line 38
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->setRowNumberAsRowIndicatorColumn()V

    .line 36
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 41
    .end local v1    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    :cond_12
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "IsLeft: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
