.class final Lcom/google/zxing/datamatrix/decoder/DataBlock;
.super Ljava/lang/Object;
.source "DataBlock.java"


# instance fields
.field private final codewords:[B

.field private final numDataCodewords:I


# direct methods
.method private constructor <init>(I[B)V
    .registers 3
    .param p1, "numDataCodewords"    # I
    .param p2, "codewords"    # [B

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->numDataCodewords:I

    .line 33
    iput-object p2, p0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    .line 34
    return-void
.end method

.method static getDataBlocks([BLcom/google/zxing/datamatrix/decoder/Version;)[Lcom/google/zxing/datamatrix/decoder/DataBlock;
    .registers 30
    .param p0, "rawCodewords"    # [B
    .param p1, "version"    # Lcom/google/zxing/datamatrix/decoder/Version;

    .prologue
    .line 49
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/datamatrix/decoder/Version;->getECBlocks()Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    move-result-object v5

    .line 52
    .local v5, "ecBlocks":Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
    const/16 v24, 0x0

    .line 53
    .local v24, "totalBlocks":I
    invoke-virtual {v5}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->getECBlocks()[Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    move-result-object v4

    .line 54
    .local v4, "ecBlockArray":[Lcom/google/zxing/datamatrix/decoder/Version$ECB;
    move-object v2, v4

    .local v2, "arr$":[Lcom/google/zxing/datamatrix/decoder/Version$ECB;
    array-length v10, v2

    .local v10, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_d
    if-ge v7, v10, :cond_1a

    aget-object v3, v2, v7

    .line 55
    .local v3, "ecBlock":Lcom/google/zxing/datamatrix/decoder/Version$ECB;
    invoke-virtual {v3}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->getCount()I

    move-result v25

    add-int v24, v24, v25

    .line 54
    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    .line 59
    .end local v3    # "ecBlock":Lcom/google/zxing/datamatrix/decoder/Version$ECB;
    :cond_1a
    move/from16 v0, v24

    new-array v0, v0, [Lcom/google/zxing/datamatrix/decoder/DataBlock;

    move-object/from16 v21, v0

    .line 60
    .local v21, "result":[Lcom/google/zxing/datamatrix/decoder/DataBlock;
    const/16 v17, 0x0

    .line 61
    .local v17, "numResultBlocks":I
    move-object v2, v4

    array-length v10, v2

    const/4 v7, 0x0

    :goto_25
    if-ge v7, v10, :cond_55

    aget-object v3, v2, v7

    .line 62
    .restart local v3    # "ecBlock":Lcom/google/zxing/datamatrix/decoder/Version$ECB;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2a
    invoke-virtual {v3}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->getCount()I

    move-result v25

    move/from16 v0, v25

    if-ge v6, v0, :cond_52

    .line 63
    invoke-virtual {v3}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->getDataCodewords()I

    move-result v15

    .line 64
    .local v15, "numDataCodewords":I
    invoke-virtual {v5}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->getECCodewords()I

    move-result v25

    add-int v14, v25, v15

    .line 65
    .local v14, "numBlockCodewords":I
    add-int/lit8 v18, v17, 0x1

    .end local v17    # "numResultBlocks":I
    .local v18, "numResultBlocks":I
    new-instance v25, Lcom/google/zxing/datamatrix/decoder/DataBlock;

    new-array v0, v14, [B

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v0, v15, v1}, Lcom/google/zxing/datamatrix/decoder/DataBlock;-><init>(I[B)V

    aput-object v25, v21, v17

    .line 62
    add-int/lit8 v6, v6, 0x1

    move/from16 v17, v18

    .end local v18    # "numResultBlocks":I
    .restart local v17    # "numResultBlocks":I
    goto :goto_2a

    .line 61
    .end local v14    # "numBlockCodewords":I
    .end local v15    # "numDataCodewords":I
    :cond_52
    add-int/lit8 v7, v7, 0x1

    goto :goto_25

    .line 72
    .end local v3    # "ecBlock":Lcom/google/zxing/datamatrix/decoder/Version$ECB;
    .end local v6    # "i":I
    :cond_55
    const/16 v25, 0x0

    aget-object v25, v21, v25

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v12, v0

    .line 75
    .local v12, "longerBlocksTotalCodewords":I
    invoke-virtual {v5}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->getECCodewords()I

    move-result v25

    sub-int v11, v12, v25

    .line 76
    .local v11, "longerBlocksNumDataCodewords":I
    add-int/lit8 v22, v11, -0x1

    .line 79
    .local v22, "shorterBlocksNumDataCodewords":I
    const/16 v19, 0x0

    .line 80
    .local v19, "rawCodewordsOffset":I
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_6d
    move/from16 v0, v22

    if-ge v6, v0, :cond_90

    .line 81
    const/4 v9, 0x0

    .local v9, "j":I
    move/from16 v20, v19

    .end local v19    # "rawCodewordsOffset":I
    .local v20, "rawCodewordsOffset":I
    :goto_74
    move/from16 v0, v17

    if-ge v9, v0, :cond_8b

    .line 82
    aget-object v25, v21, v9

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    move-object/from16 v25, v0

    add-int/lit8 v19, v20, 0x1

    .end local v20    # "rawCodewordsOffset":I
    .restart local v19    # "rawCodewordsOffset":I
    aget-byte v26, p0, v20

    aput-byte v26, v25, v6

    .line 81
    add-int/lit8 v9, v9, 0x1

    move/from16 v20, v19

    .end local v19    # "rawCodewordsOffset":I
    .restart local v20    # "rawCodewordsOffset":I
    goto :goto_74

    .line 80
    :cond_8b
    add-int/lit8 v6, v6, 0x1

    move/from16 v19, v20

    .end local v20    # "rawCodewordsOffset":I
    .restart local v19    # "rawCodewordsOffset":I
    goto :goto_6d

    .line 87
    .end local v9    # "j":I
    :cond_90
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/datamatrix/decoder/Version;->getVersionNumber()I

    move-result v25

    const/16 v26, 0x18

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_be

    const/16 v23, 0x1

    .line 88
    .local v23, "specialVersion":Z
    :goto_9e
    if-eqz v23, :cond_c1

    const/16 v16, 0x8

    .line 89
    .local v16, "numLongerBlocks":I
    :goto_a2
    const/4 v9, 0x0

    .restart local v9    # "j":I
    move/from16 v20, v19

    .end local v19    # "rawCodewordsOffset":I
    .restart local v20    # "rawCodewordsOffset":I
    :goto_a5
    move/from16 v0, v16

    if-ge v9, v0, :cond_c4

    .line 90
    aget-object v25, v21, v9

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    move-object/from16 v25, v0

    add-int/lit8 v26, v11, -0x1

    add-int/lit8 v19, v20, 0x1

    .end local v20    # "rawCodewordsOffset":I
    .restart local v19    # "rawCodewordsOffset":I
    aget-byte v27, p0, v20

    aput-byte v27, v25, v26

    .line 89
    add-int/lit8 v9, v9, 0x1

    move/from16 v20, v19

    .end local v19    # "rawCodewordsOffset":I
    .restart local v20    # "rawCodewordsOffset":I
    goto :goto_a5

    .line 87
    .end local v9    # "j":I
    .end local v16    # "numLongerBlocks":I
    .end local v20    # "rawCodewordsOffset":I
    .end local v23    # "specialVersion":Z
    .restart local v19    # "rawCodewordsOffset":I
    :cond_be
    const/16 v23, 0x0

    goto :goto_9e

    .restart local v23    # "specialVersion":Z
    :cond_c1
    move/from16 v16, v17

    .line 88
    goto :goto_a2

    .line 94
    .end local v19    # "rawCodewordsOffset":I
    .restart local v9    # "j":I
    .restart local v16    # "numLongerBlocks":I
    .restart local v20    # "rawCodewordsOffset":I
    :cond_c4
    const/16 v25, 0x0

    aget-object v25, v21, v25

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v13, v0

    .line 95
    .local v13, "max":I
    move v6, v11

    move/from16 v19, v20

    .end local v20    # "rawCodewordsOffset":I
    .restart local v19    # "rawCodewordsOffset":I
    :goto_d4
    if-ge v6, v13, :cond_101

    .line 96
    const/4 v9, 0x0

    move/from16 v20, v19

    .end local v19    # "rawCodewordsOffset":I
    .restart local v20    # "rawCodewordsOffset":I
    :goto_d9
    move/from16 v0, v17

    if-ge v9, v0, :cond_fc

    .line 97
    if-eqz v23, :cond_fa

    const/16 v25, 0x7

    move/from16 v0, v25

    if-le v9, v0, :cond_fa

    add-int/lit8 v8, v6, -0x1

    .line 98
    .local v8, "iOffset":I
    :goto_e7
    aget-object v25, v21, v9

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    move-object/from16 v25, v0

    add-int/lit8 v19, v20, 0x1

    .end local v20    # "rawCodewordsOffset":I
    .restart local v19    # "rawCodewordsOffset":I
    aget-byte v26, p0, v20

    aput-byte v26, v25, v8

    .line 96
    add-int/lit8 v9, v9, 0x1

    move/from16 v20, v19

    .end local v19    # "rawCodewordsOffset":I
    .restart local v20    # "rawCodewordsOffset":I
    goto :goto_d9

    .end local v8    # "iOffset":I
    :cond_fa
    move v8, v6

    .line 97
    goto :goto_e7

    .line 95
    :cond_fc
    add-int/lit8 v6, v6, 0x1

    move/from16 v19, v20

    .end local v20    # "rawCodewordsOffset":I
    .restart local v19    # "rawCodewordsOffset":I
    goto :goto_d4

    .line 102
    :cond_101
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v19

    move/from16 v1, v25

    if-eq v0, v1, :cond_112

    .line 103
    new-instance v25, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v25 .. v25}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v25

    .line 106
    :cond_112
    return-object v21
.end method


# virtual methods
.method getCodewords()[B
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    return-object v0
.end method

.method getNumDataCodewords()I
    .registers 2

    .prologue
    .line 110
    iget v0, p0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->numDataCodewords:I

    return v0
.end method
