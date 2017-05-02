.class public final Lcom/google/zxing/PlanarYUVLuminanceSource;
.super Lcom/google/zxing/LuminanceSource;
.source "PlanarYUVLuminanceSource.java"


# static fields
.field private static final THUMBNAIL_SCALE_FACTOR:I = 0x2


# instance fields
.field private final dataHeight:I

.field private final dataWidth:I

.field private final left:I

.field private final top:I

.field private final yuvData:[B


# direct methods
.method public constructor <init>([BIIIIIIZ)V
    .registers 11
    .param p1, "yuvData"    # [B
    .param p2, "dataWidth"    # I
    .param p3, "dataHeight"    # I
    .param p4, "left"    # I
    .param p5, "top"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "reverseHorizontal"    # Z

    .prologue
    .line 47
    invoke-direct {p0, p6, p7}, Lcom/google/zxing/LuminanceSource;-><init>(II)V

    .line 49
    add-int v0, p4, p6

    if-gt v0, p2, :cond_b

    add-int v0, p5, p7

    if-le v0, p3, :cond_14

    .line 50
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Crop rectangle does not fit within image data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_14
    iput-object p1, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->yuvData:[B

    .line 54
    iput p2, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    .line 55
    iput p3, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataHeight:I

    .line 56
    iput p4, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->left:I

    .line 57
    iput p5, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->top:I

    .line 58
    if-eqz p8, :cond_23

    .line 59
    invoke-direct {p0, p6, p7}, Lcom/google/zxing/PlanarYUVLuminanceSource;->reverseHorizontal(II)V

    .line 61
    :cond_23
    return-void
.end method

.method private reverseHorizontal(II)V
    .registers 12
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 158
    iget-object v6, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->yuvData:[B

    .line 159
    .local v6, "yuvData":[B
    const/4 v5, 0x0

    .local v5, "y":I
    iget v7, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->top:I

    iget v8, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    mul-int/2addr v7, v8

    iget v8, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->left:I

    add-int v1, v7, v8

    .local v1, "rowStart":I
    :goto_c
    if-ge v5, p2, :cond_2c

    .line 160
    div-int/lit8 v7, p1, 0x2

    add-int v0, v1, v7

    .line 161
    .local v0, "middle":I
    move v3, v1

    .local v3, "x1":I
    add-int v7, v1, p1

    add-int/lit8 v4, v7, -0x1

    .local v4, "x2":I
    :goto_17
    if-ge v3, v0, :cond_26

    .line 162
    aget-byte v2, v6, v3

    .line 163
    .local v2, "temp":B
    aget-byte v7, v6, v4

    aput-byte v7, v6, v3

    .line 164
    aput-byte v2, v6, v4

    .line 161
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_17

    .line 159
    .end local v2    # "temp":B
    :cond_26
    add-int/lit8 v5, v5, 0x1

    iget v7, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    add-int/2addr v1, v7

    goto :goto_c

    .line 167
    .end local v0    # "middle":I
    .end local v3    # "x1":I
    .end local v4    # "x2":I
    :cond_2c
    return-void
.end method


# virtual methods
.method public crop(IIII)Lcom/google/zxing/LuminanceSource;
    .registers 14
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 115
    new-instance v0, Lcom/google/zxing/PlanarYUVLuminanceSource;

    iget-object v1, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->yuvData:[B

    iget v2, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    iget v3, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataHeight:I

    iget v4, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->left:I

    add-int/2addr v4, p1

    iget v5, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->top:I

    add-int/2addr v5, p2

    const/4 v8, 0x0

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V

    return-object v0
.end method

.method public getMatrix()[B
    .registers 11

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getWidth()I

    move-result v5

    .line 80
    .local v5, "width":I
    invoke-virtual {p0}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getHeight()I

    move-result v1

    .line 84
    .local v1, "height":I
    iget v8, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    if-ne v5, v8, :cond_13

    iget v8, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataHeight:I

    if-ne v1, v8, :cond_13

    .line 85
    iget-object v3, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->yuvData:[B

    .line 105
    :cond_12
    :goto_12
    return-object v3

    .line 88
    :cond_13
    mul-int v0, v5, v1

    .line 89
    .local v0, "area":I
    new-array v3, v0, [B

    .line 90
    .local v3, "matrix":[B
    iget v8, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->top:I

    iget v9, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    mul-int/2addr v8, v9

    iget v9, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->left:I

    add-int v2, v8, v9

    .line 93
    .local v2, "inputOffset":I
    iget v8, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    if-ne v5, v8, :cond_2b

    .line 94
    iget-object v8, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->yuvData:[B

    const/4 v9, 0x0

    invoke-static {v8, v2, v3, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_12

    .line 99
    :cond_2b
    iget-object v7, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->yuvData:[B

    .line 100
    .local v7, "yuv":[B
    const/4 v6, 0x0

    .local v6, "y":I
    :goto_2e
    if-ge v6, v1, :cond_12

    .line 101
    mul-int v4, v6, v5

    .line 102
    .local v4, "outputOffset":I
    invoke-static {v7, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    iget v8, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    add-int/2addr v2, v8

    .line 100
    add-int/lit8 v6, v6, 0x1

    goto :goto_2e
.end method

.method public getRow(I[B)[B
    .registers 8
    .param p1, "y"    # I
    .param p2, "row"    # [B

    .prologue
    .line 65
    if-ltz p1, :cond_8

    invoke-virtual {p0}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getHeight()I

    move-result v2

    if-lt p1, v2, :cond_22

    .line 66
    :cond_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Requested row is outside the image: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 68
    :cond_22
    invoke-virtual {p0}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getWidth()I

    move-result v1

    .line 69
    .local v1, "width":I
    if-eqz p2, :cond_2b

    array-length v2, p2

    if-ge v2, v1, :cond_2d

    .line 70
    :cond_2b
    new-array p2, v1, [B

    .line 72
    :cond_2d
    iget v2, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->top:I

    add-int/2addr v2, p1

    iget v3, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->left:I

    add-int v0, v2, v3

    .line 73
    .local v0, "offset":I
    iget-object v2, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->yuvData:[B

    const/4 v3, 0x0

    invoke-static {v2, v0, p2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    return-object p2
.end method

.method public getThumbnailHeight()I
    .registers 2

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getThumbnailWidth()I
    .registers 2

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public isCropSupported()Z
    .registers 2

    .prologue
    .line 110
    const/4 v0, 0x1

    return v0
.end method

.method public renderThumbnail()[I
    .registers 13

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getWidth()I

    move-result v9

    div-int/lit8 v5, v9, 0x2

    .line 127
    .local v5, "width":I
    invoke-virtual {p0}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getHeight()I

    move-result v9

    div-int/lit8 v1, v9, 0x2

    .line 128
    .local v1, "height":I
    mul-int v9, v5, v1

    new-array v4, v9, [I

    .line 129
    .local v4, "pixels":[I
    iget-object v8, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->yuvData:[B

    .line 130
    .local v8, "yuv":[B
    iget v9, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->top:I

    iget v10, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    mul-int/2addr v9, v10

    iget v10, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->left:I

    add-int v2, v9, v10

    .line 132
    .local v2, "inputOffset":I
    const/4 v7, 0x0

    .local v7, "y":I
    :goto_1c
    if-ge v7, v1, :cond_40

    .line 133
    mul-int v3, v7, v5

    .line 134
    .local v3, "outputOffset":I
    const/4 v6, 0x0

    .local v6, "x":I
    :goto_21
    if-ge v6, v5, :cond_38

    .line 135
    mul-int/lit8 v9, v6, 0x2

    add-int/2addr v9, v2

    aget-byte v9, v8, v9

    and-int/lit16 v0, v9, 0xff

    .line 136
    .local v0, "grey":I
    add-int v9, v3, v6

    const/high16 v10, -0x1000000

    const v11, 0x10101

    mul-int/2addr v11, v0

    or-int/2addr v10, v11

    aput v10, v4, v9

    .line 134
    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    .line 138
    .end local v0    # "grey":I
    :cond_38
    iget v9, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v2, v9

    .line 132
    add-int/lit8 v7, v7, 0x1

    goto :goto_1c

    .line 140
    .end local v3    # "outputOffset":I
    .end local v6    # "x":I
    :cond_40
    return-object v4
.end method
