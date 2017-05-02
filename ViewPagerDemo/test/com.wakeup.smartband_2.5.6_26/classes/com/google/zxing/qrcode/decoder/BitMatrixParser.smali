.class final Lcom/google/zxing/qrcode/decoder/BitMatrixParser;
.super Ljava/lang/Object;
.source "BitMatrixParser.java"


# instance fields
.field private final bitMatrix:Lcom/google/zxing/common/BitMatrix;

.field private mirror:Z

.field private parsedFormatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;

.field private parsedVersion:Lcom/google/zxing/qrcode/decoder/Version;


# direct methods
.method constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .registers 5
    .param p1, "bitMatrix"    # Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    .line 38
    .local v0, "dimension":I
    const/16 v1, 0x15

    if-lt v0, v1, :cond_10

    and-int/lit8 v1, v0, 0x3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_15

    .line 39
    :cond_10
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 41
    :cond_15
    iput-object p1, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    .line 42
    return-void
.end method

.method private copyBit(III)I
    .registers 6
    .param p1, "i"    # I
    .param p2, "j"    # I
    .param p3, "versionBits"    # I

    .prologue
    .line 141
    iget-boolean v1, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->mirror:Z

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v1, p2, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v0

    .line 142
    .local v0, "bit":Z
    :goto_a
    if-eqz v0, :cond_18

    shl-int/lit8 v1, p3, 0x1

    or-int/lit8 v1, v1, 0x1

    :goto_10
    return v1

    .line 141
    .end local v0    # "bit":Z
    :cond_11
    iget-object v1, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v1, p1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v0

    goto :goto_a

    .line 142
    .restart local v0    # "bit":Z
    :cond_18
    shl-int/lit8 v1, p3, 0x1

    goto :goto_10
.end method


# virtual methods
.method mirror()V
    .registers 5

    .prologue
    .line 235
    const/4 v0, 0x0

    .local v0, "x":I
    :goto_1
    iget-object v2, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v2

    if-ge v0, v2, :cond_31

    .line 236
    add-int/lit8 v1, v0, 0x1

    .local v1, "y":I
    :goto_b
    iget-object v2, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_2e

    .line 237
    iget-object v2, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2, v0, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    iget-object v3, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v3, v1, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-eq v2, v3, :cond_2b

    .line 238
    iget-object v2, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2, v1, v0}, Lcom/google/zxing/common/BitMatrix;->flip(II)V

    .line 239
    iget-object v2, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2, v0, v1}, Lcom/google/zxing/common/BitMatrix;->flip(II)V

    .line 236
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 235
    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 243
    .end local v1    # "y":I
    :cond_31
    return-void
.end method

.method readCodewords()[B
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 155
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readFormatInformation()Lcom/google/zxing/qrcode/decoder/FormatInformation;

    move-result-object v8

    .line 156
    .local v8, "formatInfo":Lcom/google/zxing/qrcode/decoder/FormatInformation;
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readVersion()Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v16

    .line 160
    .local v16, "version":Lcom/google/zxing/qrcode/decoder/Version;
    invoke-virtual {v8}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->getDataMask()B

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/google/zxing/qrcode/decoder/DataMask;->forReference(I)Lcom/google/zxing/qrcode/decoder/DataMask;

    move-result-object v6

    .line 161
    .local v6, "dataMask":Lcom/google/zxing/qrcode/decoder/DataMask;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v7

    .line 162
    .local v7, "dimension":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v6, v0, v7}, Lcom/google/zxing/qrcode/decoder/DataMask;->unmaskBitMatrix(Lcom/google/zxing/common/BitMatrix;I)V

    .line 164
    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/qrcode/decoder/Version;->buildFunctionPattern()Lcom/google/zxing/common/BitMatrix;

    move-result-object v9

    .line 166
    .local v9, "functionPattern":Lcom/google/zxing/common/BitMatrix;
    const/4 v12, 0x1

    .line 167
    .local v12, "readingUp":Z
    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v17

    move/from16 v0, v17

    new-array v13, v0, [B

    .line 168
    .local v13, "result":[B
    const/4 v14, 0x0

    .line 169
    .local v14, "resultOffset":I
    const/4 v5, 0x0

    .line 170
    .local v5, "currentByte":I
    const/4 v2, 0x0

    .line 172
    .local v2, "bitsRead":I
    add-int/lit8 v11, v7, -0x1

    .local v11, "j":I
    :goto_37
    if-lez v11, :cond_92

    .line 173
    const/16 v17, 0x6

    move/from16 v0, v17

    if-ne v11, v0, :cond_41

    .line 176
    add-int/lit8 v11, v11, -0x1

    .line 179
    :cond_41
    const/4 v4, 0x0

    .local v4, "count":I
    :goto_42
    if-ge v4, v7, :cond_8d

    .line 180
    if-eqz v12, :cond_87

    add-int/lit8 v17, v7, -0x1

    sub-int v10, v17, v4

    .line 181
    .local v10, "i":I
    :goto_4a
    const/4 v3, 0x0

    .local v3, "col":I
    move v15, v14

    .end local v14    # "resultOffset":I
    .local v15, "resultOffset":I
    :goto_4c
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ge v3, v0, :cond_89

    .line 183
    sub-int v17, v11, v3

    move/from16 v0, v17

    invoke-virtual {v9, v0, v10}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v17

    if-nez v17, :cond_a0

    .line 185
    add-int/lit8 v2, v2, 0x1

    .line 186
    shl-int/lit8 v5, v5, 0x1

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    move-object/from16 v17, v0

    sub-int v18, v11, v3

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v10}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v17

    if-eqz v17, :cond_74

    .line 188
    or-int/lit8 v5, v5, 0x1

    .line 191
    :cond_74
    const/16 v17, 0x8

    move/from16 v0, v17

    if-ne v2, v0, :cond_a0

    .line 192
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "resultOffset":I
    .restart local v14    # "resultOffset":I
    int-to-byte v0, v5

    move/from16 v17, v0

    aput-byte v17, v13, v15

    .line 193
    const/4 v2, 0x0

    .line 194
    const/4 v5, 0x0

    .line 181
    :goto_83
    add-int/lit8 v3, v3, 0x1

    move v15, v14

    .end local v14    # "resultOffset":I
    .restart local v15    # "resultOffset":I
    goto :goto_4c

    .end local v3    # "col":I
    .end local v10    # "i":I
    .end local v15    # "resultOffset":I
    .restart local v14    # "resultOffset":I
    :cond_87
    move v10, v4

    .line 180
    goto :goto_4a

    .line 179
    .end local v14    # "resultOffset":I
    .restart local v3    # "col":I
    .restart local v10    # "i":I
    .restart local v15    # "resultOffset":I
    :cond_89
    add-int/lit8 v4, v4, 0x1

    move v14, v15

    .end local v15    # "resultOffset":I
    .restart local v14    # "resultOffset":I
    goto :goto_42

    .line 199
    .end local v3    # "col":I
    .end local v10    # "i":I
    :cond_8d
    xor-int/lit8 v12, v12, 0x1

    .line 172
    add-int/lit8 v11, v11, -0x2

    goto :goto_37

    .line 201
    .end local v4    # "count":I
    :cond_92
    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v17

    move/from16 v0, v17

    if-eq v14, v0, :cond_9f

    .line 202
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v17

    throw v17

    .line 204
    :cond_9f
    return-object v13

    .end local v14    # "resultOffset":I
    .restart local v3    # "col":I
    .restart local v4    # "count":I
    .restart local v10    # "i":I
    .restart local v15    # "resultOffset":I
    :cond_a0
    move v14, v15

    .end local v15    # "resultOffset":I
    .restart local v14    # "resultOffset":I
    goto :goto_83
.end method

.method readFormatInformation()Lcom/google/zxing/qrcode/decoder/FormatInformation;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x7

    const/16 v7, 0x8

    .line 53
    iget-object v6, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedFormatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;

    if-eqz v6, :cond_a

    .line 54
    iget-object v6, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedFormatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;

    .line 84
    :goto_9
    return-object v6

    .line 58
    :cond_a
    const/4 v1, 0x0

    .line 59
    .local v1, "formatInfoBits1":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    const/4 v6, 0x6

    if-ge v3, v6, :cond_16

    .line 60
    invoke-direct {p0, v3, v7, v1}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v1

    .line 59
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 63
    :cond_16
    invoke-direct {p0, v8, v7, v1}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v1

    .line 64
    invoke-direct {p0, v7, v7, v1}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v1

    .line 65
    invoke-direct {p0, v7, v8, v1}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v1

    .line 67
    const/4 v4, 0x5

    .local v4, "j":I
    :goto_23
    if-ltz v4, :cond_2c

    .line 68
    invoke-direct {p0, v7, v4, v1}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v1

    .line 67
    add-int/lit8 v4, v4, -0x1

    goto :goto_23

    .line 72
    :cond_2c
    iget-object v6, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v6}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    .line 73
    .local v0, "dimension":I
    const/4 v2, 0x0

    .line 74
    .local v2, "formatInfoBits2":I
    add-int/lit8 v5, v0, -0x7

    .line 75
    .local v5, "jMin":I
    add-int/lit8 v4, v0, -0x1

    :goto_37
    if-lt v4, v5, :cond_40

    .line 76
    invoke-direct {p0, v7, v4, v2}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v2

    .line 75
    add-int/lit8 v4, v4, -0x1

    goto :goto_37

    .line 78
    :cond_40
    add-int/lit8 v3, v0, -0x8

    :goto_42
    if-ge v3, v0, :cond_4b

    .line 79
    invoke-direct {p0, v3, v7, v2}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v2

    .line 78
    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    .line 82
    :cond_4b
    invoke-static {v1, v2}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->decodeFormatInformation(II)Lcom/google/zxing/qrcode/decoder/FormatInformation;

    move-result-object v6

    iput-object v6, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedFormatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;

    .line 83
    iget-object v6, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedFormatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;

    if-eqz v6, :cond_58

    .line 84
    iget-object v6, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedFormatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;

    goto :goto_9

    .line 86
    :cond_58
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6
.end method

.method readVersion()Lcom/google/zxing/qrcode/decoder/Version;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 98
    iget-object v7, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedVersion:Lcom/google/zxing/qrcode/decoder/Version;

    if-eqz v7, :cond_7

    .line 99
    iget-object v5, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedVersion:Lcom/google/zxing/qrcode/decoder/Version;

    .line 135
    :goto_6
    return-object v5

    .line 102
    :cond_7
    iget-object v7, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v7}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    .line 104
    .local v0, "dimension":I
    add-int/lit8 v7, v0, -0x11

    div-int/lit8 v4, v7, 0x4

    .line 105
    .local v4, "provisionalVersion":I
    const/4 v7, 0x6

    if-gt v4, v7, :cond_19

    .line 106
    invoke-static {v4}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v5

    goto :goto_6

    .line 110
    :cond_19
    const/4 v6, 0x0

    .line 111
    .local v6, "versionBits":I
    add-int/lit8 v2, v0, -0xb

    .line 112
    .local v2, "ijMin":I
    const/4 v3, 0x5

    .local v3, "j":I
    :goto_1d
    if-ltz v3, :cond_2d

    .line 113
    add-int/lit8 v1, v0, -0x9

    .local v1, "i":I
    :goto_21
    if-lt v1, v2, :cond_2a

    .line 114
    invoke-direct {p0, v1, v3, v6}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v6

    .line 113
    add-int/lit8 v1, v1, -0x1

    goto :goto_21

    .line 112
    :cond_2a
    add-int/lit8 v3, v3, -0x1

    goto :goto_1d

    .line 118
    .end local v1    # "i":I
    :cond_2d
    invoke-static {v6}, Lcom/google/zxing/qrcode/decoder/Version;->decodeVersionInformation(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v5

    .line 119
    .local v5, "theParsedVersion":Lcom/google/zxing/qrcode/decoder/Version;
    if-eqz v5, :cond_3c

    invoke-virtual {v5}, Lcom/google/zxing/qrcode/decoder/Version;->getDimensionForVersion()I

    move-result v7

    if-ne v7, v0, :cond_3c

    .line 120
    iput-object v5, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedVersion:Lcom/google/zxing/qrcode/decoder/Version;

    goto :goto_6

    .line 125
    :cond_3c
    const/4 v6, 0x0

    .line 126
    const/4 v1, 0x5

    .restart local v1    # "i":I
    :goto_3e
    if-ltz v1, :cond_4e

    .line 127
    add-int/lit8 v3, v0, -0x9

    :goto_42
    if-lt v3, v2, :cond_4b

    .line 128
    invoke-direct {p0, v1, v3, v6}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v6

    .line 127
    add-int/lit8 v3, v3, -0x1

    goto :goto_42

    .line 126
    :cond_4b
    add-int/lit8 v1, v1, -0x1

    goto :goto_3e

    .line 132
    :cond_4e
    invoke-static {v6}, Lcom/google/zxing/qrcode/decoder/Version;->decodeVersionInformation(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v5

    .line 133
    if-eqz v5, :cond_5d

    invoke-virtual {v5}, Lcom/google/zxing/qrcode/decoder/Version;->getDimensionForVersion()I

    move-result v7

    if-ne v7, v0, :cond_5d

    .line 134
    iput-object v5, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedVersion:Lcom/google/zxing/qrcode/decoder/Version;

    goto :goto_6

    .line 137
    :cond_5d
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v7

    throw v7
.end method

.method remask()V
    .registers 4

    .prologue
    .line 211
    iget-object v2, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedFormatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;

    if-nez v2, :cond_5

    .line 217
    :goto_4
    return-void

    .line 214
    :cond_5
    iget-object v2, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedFormatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;

    invoke-virtual {v2}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->getDataMask()B

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/qrcode/decoder/DataMask;->forReference(I)Lcom/google/zxing/qrcode/decoder/DataMask;

    move-result-object v0

    .line 215
    .local v0, "dataMask":Lcom/google/zxing/qrcode/decoder/DataMask;
    iget-object v2, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v1

    .line 216
    .local v1, "dimension":I
    iget-object v2, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v0, v2, v1}, Lcom/google/zxing/qrcode/decoder/DataMask;->unmaskBitMatrix(Lcom/google/zxing/common/BitMatrix;I)V

    goto :goto_4
.end method

.method setMirror(Z)V
    .registers 3
    .param p1, "mirror"    # Z

    .prologue
    const/4 v0, 0x0

    .line 228
    iput-object v0, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedVersion:Lcom/google/zxing/qrcode/decoder/Version;

    .line 229
    iput-object v0, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedFormatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;

    .line 230
    iput-boolean p1, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->mirror:Z

    .line 231
    return-void
.end method
