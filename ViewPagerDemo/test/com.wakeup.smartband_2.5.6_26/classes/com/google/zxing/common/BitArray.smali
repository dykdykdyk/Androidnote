.class public final Lcom/google/zxing/common/BitArray;
.super Ljava/lang/Object;
.source "BitArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private bits:[I

.field private size:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    .line 33
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    .line 34
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/google/zxing/common/BitArray;->size:I

    .line 38
    invoke-static {p1}, Lcom/google/zxing/common/BitArray;->makeArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    .line 39
    return-void
.end method

.method constructor <init>([II)V
    .registers 3
    .param p1, "bits"    # [I
    .param p2, "size"    # I

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    .line 44
    iput p2, p0, Lcom/google/zxing/common/BitArray;->size:I

    .line 45
    return-void
.end method

.method private ensureCapacity(I)V
    .registers 6
    .param p1, "size"    # I

    .prologue
    const/4 v3, 0x0

    .line 56
    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x20

    if-le p1, v1, :cond_16

    .line 57
    invoke-static {p1}, Lcom/google/zxing/common/BitArray;->makeArray(I)[I

    move-result-object v0

    .line 58
    .local v0, "newBits":[I
    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    iget-object v2, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    iput-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    .line 61
    .end local v0    # "newBits":[I
    :cond_16
    return-void
.end method

.method private static makeArray(I)[I
    .registers 2
    .param p0, "size"    # I

    .prologue
    .line 341
    add-int/lit8 v0, p0, 0x1f

    div-int/lit8 v0, v0, 0x20

    new-array v0, v0, [I

    return-object v0
.end method


# virtual methods
.method public appendBit(Z)V
    .registers 7
    .param p1, "bit"    # Z

    .prologue
    .line 231
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/zxing/common/BitArray;->ensureCapacity(I)V

    .line 232
    if-eqz p1, :cond_1a

    .line 233
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    iget v1, p0, Lcom/google/zxing/common/BitArray;->size:I

    div-int/lit8 v1, v1, 0x20

    aget v2, v0, v1

    const/4 v3, 0x1

    iget v4, p0, Lcom/google/zxing/common/BitArray;->size:I

    and-int/lit8 v4, v4, 0x1f

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    aput v2, v0, v1

    .line 235
    :cond_1a
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    .line 236
    return-void
.end method

.method public appendBitArray(Lcom/google/zxing/common/BitArray;)V
    .registers 5
    .param p1, "other"    # Lcom/google/zxing/common/BitArray;

    .prologue
    .line 257
    iget v1, p1, Lcom/google/zxing/common/BitArray;->size:I

    .line 258
    .local v1, "otherSize":I
    iget v2, p0, Lcom/google/zxing/common/BitArray;->size:I

    add-int/2addr v2, v1

    invoke-direct {p0, v2}, Lcom/google/zxing/common/BitArray;->ensureCapacity(I)V

    .line 259
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    if-ge v0, v1, :cond_15

    .line 260
    invoke-virtual {p1, v0}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 262
    :cond_15
    return-void
.end method

.method public appendBits(II)V
    .registers 6
    .param p1, "value"    # I
    .param p2, "numBits"    # I

    .prologue
    const/4 v2, 0x1

    .line 247
    if-ltz p2, :cond_7

    const/16 v1, 0x20

    if-le p2, v1, :cond_10

    .line 248
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Num bits must be between 0 and 32"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 250
    :cond_10
    iget v1, p0, Lcom/google/zxing/common/BitArray;->size:I

    add-int/2addr v1, p2

    invoke-direct {p0, v1}, Lcom/google/zxing/common/BitArray;->ensureCapacity(I)V

    .line 251
    move v0, p2

    .local v0, "numBitsLeft":I
    :goto_17
    if-lez v0, :cond_2a

    .line 252
    add-int/lit8 v1, v0, -0x1

    shr-int v1, p1, v1

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_28

    move v1, v2

    :goto_22
    invoke-virtual {p0, v1}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    .line 251
    add-int/lit8 v0, v0, -0x1

    goto :goto_17

    .line 252
    :cond_28
    const/4 v1, 0x0

    goto :goto_22

    .line 254
    :cond_2a
    return-void
.end method

.method public clear()V
    .registers 5

    .prologue
    .line 183
    iget-object v2, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v1, v2

    .line 184
    .local v1, "max":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    if-ge v0, v1, :cond_e

    .line 185
    iget-object v2, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    const/4 v3, 0x0

    aput v3, v2, v0

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 187
    :cond_e
    return-void
.end method

.method public clone()Lcom/google/zxing/common/BitArray;
    .registers 4

    .prologue
    .line 372
    new-instance v1, Lcom/google/zxing/common/BitArray;

    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iget v2, p0, Lcom/google/zxing/common/BitArray;->size:I

    invoke-direct {v1, v0, v2}, Lcom/google/zxing/common/BitArray;-><init>([II)V

    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->clone()Lcom/google/zxing/common/BitArray;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 346
    instance-of v2, p1, Lcom/google/zxing/common/BitArray;

    if-nez v2, :cond_6

    .line 350
    :cond_5
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 349
    check-cast v0, Lcom/google/zxing/common/BitArray;

    .line 350
    .local v0, "other":Lcom/google/zxing/common/BitArray;
    iget v2, p0, Lcom/google/zxing/common/BitArray;->size:I

    iget v3, v0, Lcom/google/zxing/common/BitArray;->size:I

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    iget-object v3, v0, Lcom/google/zxing/common/BitArray;->bits:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x1

    goto :goto_5
.end method

.method public flip(I)V
    .registers 7
    .param p1, "i"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    div-int/lit8 v1, p1, 0x20

    aget v2, v0, v1

    const/4 v3, 0x1

    and-int/lit8 v4, p1, 0x1f

    shl-int/2addr v3, v4

    xor-int/2addr v2, v3

    aput v2, v0, v1

    .line 87
    return-void
.end method

.method public get(I)Z
    .registers 5
    .param p1, "i"    # I

    .prologue
    const/4 v0, 0x1

    .line 68
    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    div-int/lit8 v2, p1, 0x20

    aget v1, v1, v2

    and-int/lit8 v2, p1, 0x1f

    shl-int v2, v0, v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_f

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getBitArray()[I
    .registers 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    return-object v0
.end method

.method public getNextSet(I)I
    .registers 7
    .param p1, "from"    # I

    .prologue
    .line 96
    iget v3, p0, Lcom/google/zxing/common/BitArray;->size:I

    if-lt p1, v3, :cond_7

    .line 97
    iget v2, p0, Lcom/google/zxing/common/BitArray;->size:I

    .line 110
    :cond_6
    :goto_6
    return v2

    .line 99
    :cond_7
    div-int/lit8 v0, p1, 0x20

    .line 100
    .local v0, "bitsOffset":I
    iget-object v3, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v1, v3, v0

    .line 102
    .local v1, "currentBits":I
    const/4 v3, 0x1

    and-int/lit8 v4, p1, 0x1f

    shl-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v1, v3

    .line 103
    :goto_16
    if-nez v1, :cond_27

    .line 104
    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v3, v3

    if-ne v0, v3, :cond_22

    .line 105
    iget v2, p0, Lcom/google/zxing/common/BitArray;->size:I

    goto :goto_6

    .line 107
    :cond_22
    iget-object v3, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v1, v3, v0

    goto :goto_16

    .line 109
    :cond_27
    mul-int/lit8 v3, v0, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v4

    add-int v2, v3, v4

    .line 110
    .local v2, "result":I
    iget v3, p0, Lcom/google/zxing/common/BitArray;->size:I

    if-le v2, v3, :cond_6

    iget v2, p0, Lcom/google/zxing/common/BitArray;->size:I

    goto :goto_6
.end method

.method public getNextUnset(I)I
    .registers 7
    .param p1, "from"    # I

    .prologue
    .line 119
    iget v3, p0, Lcom/google/zxing/common/BitArray;->size:I

    if-lt p1, v3, :cond_7

    .line 120
    iget v2, p0, Lcom/google/zxing/common/BitArray;->size:I

    .line 133
    :cond_6
    :goto_6
    return v2

    .line 122
    :cond_7
    div-int/lit8 v0, p1, 0x20

    .line 123
    .local v0, "bitsOffset":I
    iget-object v3, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v3, v3, v0

    xor-int/lit8 v1, v3, -0x1

    .line 125
    .local v1, "currentBits":I
    const/4 v3, 0x1

    and-int/lit8 v4, p1, 0x1f

    shl-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v1, v3

    .line 126
    :goto_18
    if-nez v1, :cond_2b

    .line 127
    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v3, v3

    if-ne v0, v3, :cond_24

    .line 128
    iget v2, p0, Lcom/google/zxing/common/BitArray;->size:I

    goto :goto_6

    .line 130
    :cond_24
    iget-object v3, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v3, v3, v0

    xor-int/lit8 v1, v3, -0x1

    goto :goto_18

    .line 132
    :cond_2b
    mul-int/lit8 v3, v0, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v4

    add-int v2, v3, v4

    .line 133
    .local v2, "result":I
    iget v3, p0, Lcom/google/zxing/common/BitArray;->size:I

    if-le v2, v3, :cond_6

    iget v2, p0, Lcom/google/zxing/common/BitArray;->size:I

    goto :goto_6
.end method

.method public getSize()I
    .registers 2

    .prologue
    .line 48
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    return v0
.end method

.method public getSizeInBytes()I
    .registers 2

    .prologue
    .line 52
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 355
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isRange(IIZ)Z
    .registers 15
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "value"    # Z

    .prologue
    const/16 v9, 0x1f

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 199
    if-ge p2, p1, :cond_c

    .line 200
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-direct {v7}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v7

    .line 202
    :cond_c
    if-ne p2, p1, :cond_f

    .line 227
    :cond_e
    :goto_e
    return v7

    .line 205
    :cond_f
    add-int/lit8 p2, p2, -0x1

    .line 206
    div-int/lit8 v1, p1, 0x20

    .line 207
    .local v1, "firstInt":I
    div-int/lit8 v5, p2, 0x20

    .line 208
    .local v5, "lastInt":I
    move v2, v1

    .local v2, "i":I
    :goto_16
    if-gt v2, v5, :cond_e

    .line 209
    if-le v2, v1, :cond_2e

    move v0, v8

    .line 210
    .local v0, "firstBit":I
    :goto_1b
    if-ge v2, v5, :cond_31

    move v4, v9

    .line 212
    .local v4, "lastBit":I
    :goto_1e
    if-nez v0, :cond_34

    if-ne v4, v9, :cond_34

    .line 213
    const/4 v6, -0x1

    .line 223
    .local v6, "mask":I
    :cond_23
    iget-object v10, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v10, v10, v2

    and-int/2addr v10, v6

    if-eqz p3, :cond_3e

    .end local v6    # "mask":I
    :goto_2a
    if-eq v10, v6, :cond_40

    move v7, v8

    .line 224
    goto :goto_e

    .line 209
    .end local v0    # "firstBit":I
    .end local v4    # "lastBit":I
    :cond_2e
    and-int/lit8 v0, p1, 0x1f

    goto :goto_1b

    .line 210
    .restart local v0    # "firstBit":I
    :cond_31
    and-int/lit8 v4, p2, 0x1f

    goto :goto_1e

    .line 215
    .restart local v4    # "lastBit":I
    :cond_34
    const/4 v6, 0x0

    .line 216
    .restart local v6    # "mask":I
    move v3, v0

    .local v3, "j":I
    :goto_36
    if-gt v3, v4, :cond_23

    .line 217
    shl-int v10, v7, v3

    or-int/2addr v6, v10

    .line 216
    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    .end local v3    # "j":I
    :cond_3e
    move v6, v8

    .line 223
    goto :goto_2a

    .line 208
    .end local v6    # "mask":I
    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_16
.end method

.method public reverse()V
    .registers 16

    .prologue
    .line 308
    iget-object v10, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v10, v10

    new-array v5, v10, [I

    .line 310
    .local v5, "newBits":[I
    iget v10, p0, Lcom/google/zxing/common/BitArray;->size:I

    add-int/lit8 v10, v10, -0x1

    div-int/lit8 v3, v10, 0x20

    .line 311
    .local v3, "len":I
    add-int/lit8 v7, v3, 0x1

    .line 312
    .local v7, "oldBitsLen":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, v7, :cond_6c

    .line 313
    iget-object v10, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v10, v10, v1

    int-to-long v8, v10

    .line 314
    .local v8, "x":J
    const/4 v10, 0x1

    shr-long v10, v8, v10

    const-wide/32 v12, 0x55555555

    and-long/2addr v10, v12

    const-wide/32 v12, 0x55555555

    and-long/2addr v12, v8

    const/4 v14, 0x1

    shl-long/2addr v12, v14

    or-long v8, v10, v12

    .line 315
    const/4 v10, 0x2

    shr-long v10, v8, v10

    const-wide/32 v12, 0x33333333

    and-long/2addr v10, v12

    const-wide/32 v12, 0x33333333

    and-long/2addr v12, v8

    const/4 v14, 0x2

    shl-long/2addr v12, v14

    or-long v8, v10, v12

    .line 316
    const/4 v10, 0x4

    shr-long v10, v8, v10

    const-wide/32 v12, 0xf0f0f0f

    and-long/2addr v10, v12

    const-wide/32 v12, 0xf0f0f0f

    and-long/2addr v12, v8

    const/4 v14, 0x4

    shl-long/2addr v12, v14

    or-long v8, v10, v12

    .line 317
    const/16 v10, 0x8

    shr-long v10, v8, v10

    const-wide/32 v12, 0xff00ff

    and-long/2addr v10, v12

    const-wide/32 v12, 0xff00ff

    and-long/2addr v12, v8

    const/16 v14, 0x8

    shl-long/2addr v12, v14

    or-long v8, v10, v12

    .line 318
    const/16 v10, 0x10

    shr-long v10, v8, v10

    const-wide/32 v12, 0xffff

    and-long/2addr v10, v12

    const-wide/32 v12, 0xffff

    and-long/2addr v12, v8

    const/16 v14, 0x10

    shl-long/2addr v12, v14

    or-long v8, v10, v12

    .line 319
    sub-int v10, v3, v1

    long-to-int v11, v8

    aput v11, v5, v10

    .line 312
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 322
    .end local v8    # "x":J
    :cond_6c
    iget v10, p0, Lcom/google/zxing/common/BitArray;->size:I

    mul-int/lit8 v11, v7, 0x20

    if-eq v10, v11, :cond_a4

    .line 323
    mul-int/lit8 v10, v7, 0x20

    iget v11, p0, Lcom/google/zxing/common/BitArray;->size:I

    sub-int v2, v10, v11

    .line 324
    .local v2, "leftOffset":I
    const/4 v4, 0x1

    .line 325
    .local v4, "mask":I
    const/4 v1, 0x0

    :goto_7a
    rsub-int/lit8 v10, v2, 0x1f

    if-ge v1, v10, :cond_85

    .line 326
    shl-int/lit8 v10, v4, 0x1

    or-int/lit8 v4, v10, 0x1

    .line 325
    add-int/lit8 v1, v1, 0x1

    goto :goto_7a

    .line 328
    :cond_85
    const/4 v10, 0x0

    aget v10, v5, v10

    shr-int/2addr v10, v2

    and-int v0, v10, v4

    .line 329
    .local v0, "currentInt":I
    const/4 v1, 0x1

    :goto_8c
    if-ge v1, v7, :cond_a0

    .line 330
    aget v6, v5, v1

    .line 331
    .local v6, "nextInt":I
    rsub-int/lit8 v10, v2, 0x20

    shl-int v10, v6, v10

    or-int/2addr v0, v10

    .line 332
    add-int/lit8 v10, v1, -0x1

    aput v0, v5, v10

    .line 333
    shr-int v10, v6, v2

    and-int v0, v10, v4

    .line 329
    add-int/lit8 v1, v1, 0x1

    goto :goto_8c

    .line 335
    .end local v6    # "nextInt":I
    :cond_a0
    add-int/lit8 v10, v7, -0x1

    aput v0, v5, v10

    .line 337
    .end local v0    # "currentInt":I
    .end local v2    # "leftOffset":I
    .end local v4    # "mask":I
    :cond_a4
    iput-object v5, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    .line 338
    return-void
.end method

.method public set(I)V
    .registers 7
    .param p1, "i"    # I

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    div-int/lit8 v1, p1, 0x20

    aget v2, v0, v1

    const/4 v3, 0x1

    and-int/lit8 v4, p1, 0x1f

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    aput v2, v0, v1

    .line 78
    return-void
.end method

.method public setBulk(II)V
    .registers 5
    .param p1, "i"    # I
    .param p2, "newBits"    # I

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    div-int/lit8 v1, p1, 0x20

    aput p2, v0, v1

    .line 145
    return-void
.end method

.method public setRange(II)V
    .registers 13
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/16 v7, 0x1f

    .line 154
    if-ge p2, p1, :cond_a

    .line 155
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-direct {v7}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v7

    .line 157
    :cond_a
    if-ne p2, p1, :cond_d

    .line 177
    :cond_c
    return-void

    .line 160
    :cond_d
    add-int/lit8 p2, p2, -0x1

    .line 161
    div-int/lit8 v1, p1, 0x20

    .line 162
    .local v1, "firstInt":I
    div-int/lit8 v5, p2, 0x20

    .line 163
    .local v5, "lastInt":I
    move v2, v1

    .local v2, "i":I
    :goto_14
    if-gt v2, v5, :cond_c

    .line 164
    if-le v2, v1, :cond_2b

    const/4 v0, 0x0

    .line 165
    .local v0, "firstBit":I
    :goto_19
    if-ge v2, v5, :cond_2e

    move v4, v7

    .line 167
    .local v4, "lastBit":I
    :goto_1c
    if-nez v0, :cond_31

    if-ne v4, v7, :cond_31

    .line 168
    const/4 v6, -0x1

    .line 175
    .local v6, "mask":I
    :cond_21
    iget-object v8, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v9, v8, v2

    or-int/2addr v9, v6

    aput v9, v8, v2

    .line 163
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 164
    .end local v0    # "firstBit":I
    .end local v4    # "lastBit":I
    .end local v6    # "mask":I
    :cond_2b
    and-int/lit8 v0, p1, 0x1f

    goto :goto_19

    .line 165
    .restart local v0    # "firstBit":I
    :cond_2e
    and-int/lit8 v4, p2, 0x1f

    goto :goto_1c

    .line 170
    .restart local v4    # "lastBit":I
    :cond_31
    const/4 v6, 0x0

    .line 171
    .restart local v6    # "mask":I
    move v3, v0

    .local v3, "j":I
    :goto_33
    if-gt v3, v4, :cond_21

    .line 172
    const/4 v8, 0x1

    shl-int/2addr v8, v3

    or-int/2addr v6, v8

    .line 171
    add-int/lit8 v3, v3, 0x1

    goto :goto_33
.end method

.method public toBytes(I[BII)V
    .registers 10
    .param p1, "bitOffset"    # I
    .param p2, "array"    # [B
    .param p3, "offset"    # I
    .param p4, "numBytes"    # I

    .prologue
    .line 284
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p4, :cond_21

    .line 285
    const/4 v2, 0x0

    .line 286
    .local v2, "theByte":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_5
    const/16 v3, 0x8

    if-ge v1, v3, :cond_19

    .line 287
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 288
    const/4 v3, 0x1

    rsub-int/lit8 v4, v1, 0x7

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    .line 290
    :cond_14
    add-int/lit8 p1, p1, 0x1

    .line 286
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 292
    :cond_19
    add-int v3, p3, v0

    int-to-byte v4, v2

    aput-byte v4, p2, v3

    .line 284
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 294
    .end local v1    # "j":I
    .end local v2    # "theByte":I
    :cond_21
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/zxing/common/BitArray;->size:I

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 361
    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    iget v2, p0, Lcom/google/zxing/common/BitArray;->size:I

    if-ge v0, v2, :cond_26

    .line 362
    and-int/lit8 v2, v0, 0x7

    if-nez v2, :cond_15

    .line 363
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 365
    :cond_15
    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_23

    const/16 v2, 0x58

    :goto_1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 361
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 365
    :cond_23
    const/16 v2, 0x2e

    goto :goto_1d

    .line 367
    :cond_26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public xor(Lcom/google/zxing/common/BitArray;)V
    .registers 6
    .param p1, "other"    # Lcom/google/zxing/common/BitArray;

    .prologue
    .line 265
    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v1, v1

    iget-object v2, p1, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v2, v2

    if-eq v1, v2, :cond_11

    .line 266
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Sizes don\'t match"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 268
    :cond_11
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v1, v1

    if-ge v0, v1, :cond_25

    .line 271
    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v2, v1, v0

    iget-object v3, p1, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v3, v3, v0

    xor-int/2addr v2, v3

    aput v2, v1, v0

    .line 268
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 273
    :cond_25
    return-void
.end method
