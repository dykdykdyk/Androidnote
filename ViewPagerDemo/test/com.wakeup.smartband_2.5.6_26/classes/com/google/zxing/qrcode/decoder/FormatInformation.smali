.class final Lcom/google/zxing/qrcode/decoder/FormatInformation;
.super Ljava/lang/Object;
.source "FormatInformation.java"


# static fields
.field private static final BITS_SET_IN_HALF_BYTE:[I

.field private static final FORMAT_INFO_DECODE_LOOKUP:[[I

.field private static final FORMAT_INFO_MASK_QR:I = 0x5412


# instance fields
.field private final dataMask:B

.field private final errorCorrectionLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/16 v4, 0x10

    const/4 v3, 0x2

    .line 34
    const/16 v0, 0x20

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_126

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_12e

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_136

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_13e

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_146

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_14e

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_156

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_15e

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_166

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_16e

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_176

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_17e

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    fill-array-data v2, :array_186

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [I

    fill-array-data v2, :array_18e

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [I

    fill-array-data v2, :array_196

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [I

    fill-array-data v2, :array_19e

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_1a6

    aput-object v1, v0, v4

    const/16 v1, 0x11

    new-array v2, v3, [I

    fill-array-data v2, :array_1ae

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [I

    fill-array-data v2, :array_1b6

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [I

    fill-array-data v2, :array_1be

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [I

    fill-array-data v2, :array_1c6

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [I

    fill-array-data v2, :array_1ce

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v3, [I

    fill-array-data v2, :array_1d6

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v3, [I

    fill-array-data v2, :array_1de

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v3, [I

    fill-array-data v2, :array_1e6

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v3, [I

    fill-array-data v2, :array_1ee

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v3, [I

    fill-array-data v2, :array_1f6

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v3, [I

    fill-array-data v2, :array_1fe

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v3, [I

    fill-array-data v2, :array_206

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v3, [I

    fill-array-data v2, :array_20e

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v3, [I

    fill-array-data v2, :array_216

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v3, [I

    fill-array-data v2, :array_21e

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->FORMAT_INFO_DECODE_LOOKUP:[[I

    .line 72
    new-array v0, v4, [I

    fill-array-data v0, :array_226

    sput-object v0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->BITS_SET_IN_HALF_BYTE:[I

    return-void

    .line 34
    :array_126
    .array-data 4
        0x5412
        0x0
    .end array-data

    :array_12e
    .array-data 4
        0x5125
        0x1
    .end array-data

    :array_136
    .array-data 4
        0x5e7c
        0x2
    .end array-data

    :array_13e
    .array-data 4
        0x5b4b
        0x3
    .end array-data

    :array_146
    .array-data 4
        0x45f9
        0x4
    .end array-data

    :array_14e
    .array-data 4
        0x40ce
        0x5
    .end array-data

    :array_156
    .array-data 4
        0x4f97
        0x6
    .end array-data

    :array_15e
    .array-data 4
        0x4aa0
        0x7
    .end array-data

    :array_166
    .array-data 4
        0x77c4
        0x8
    .end array-data

    :array_16e
    .array-data 4
        0x72f3
        0x9
    .end array-data

    :array_176
    .array-data 4
        0x7daa
        0xa
    .end array-data

    :array_17e
    .array-data 4
        0x789d
        0xb
    .end array-data

    :array_186
    .array-data 4
        0x662f
        0xc
    .end array-data

    :array_18e
    .array-data 4
        0x6318
        0xd
    .end array-data

    :array_196
    .array-data 4
        0x6c41
        0xe
    .end array-data

    :array_19e
    .array-data 4
        0x6976
        0xf
    .end array-data

    :array_1a6
    .array-data 4
        0x1689
        0x10
    .end array-data

    :array_1ae
    .array-data 4
        0x13be
        0x11
    .end array-data

    :array_1b6
    .array-data 4
        0x1ce7
        0x12
    .end array-data

    :array_1be
    .array-data 4
        0x19d0
        0x13
    .end array-data

    :array_1c6
    .array-data 4
        0x762
        0x14
    .end array-data

    :array_1ce
    .array-data 4
        0x255
        0x15
    .end array-data

    :array_1d6
    .array-data 4
        0xd0c
        0x16
    .end array-data

    :array_1de
    .array-data 4
        0x83b
        0x17
    .end array-data

    :array_1e6
    .array-data 4
        0x355f
        0x18
    .end array-data

    :array_1ee
    .array-data 4
        0x3068
        0x19
    .end array-data

    :array_1f6
    .array-data 4
        0x3f31
        0x1a
    .end array-data

    :array_1fe
    .array-data 4
        0x3a06
        0x1b
    .end array-data

    :array_206
    .array-data 4
        0x24b4
        0x1c
    .end array-data

    :array_20e
    .array-data 4
        0x2183
        0x1d
    .end array-data

    :array_216
    .array-data 4
        0x2eda
        0x1e
    .end array-data

    :array_21e
    .array-data 4
        0x2bed
        0x1f
    .end array-data

    .line 72
    :array_226
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x1
        0x2
        0x2
        0x3
        0x1
        0x2
        0x2
        0x3
        0x2
        0x3
        0x3
        0x4
    .end array-data
.end method

.method private constructor <init>(I)V
    .registers 3
    .param p1, "formatInfo"    # I

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    shr-int/lit8 v0, p1, 0x3

    and-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->forBits(I)Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->errorCorrectionLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 82
    and-int/lit8 v0, p1, 0x7

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->dataMask:B

    .line 83
    return-void
.end method

.method static decodeFormatInformation(II)Lcom/google/zxing/qrcode/decoder/FormatInformation;
    .registers 5
    .param p0, "maskedFormatInfo1"    # I
    .param p1, "maskedFormatInfo2"    # I

    .prologue
    .line 106
    invoke-static {p0, p1}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->doDecodeFormatInformation(II)Lcom/google/zxing/qrcode/decoder/FormatInformation;

    move-result-object v0

    .line 107
    .local v0, "formatInfo":Lcom/google/zxing/qrcode/decoder/FormatInformation;
    if-eqz v0, :cond_7

    .line 113
    .end local v0    # "formatInfo":Lcom/google/zxing/qrcode/decoder/FormatInformation;
    :goto_6
    return-object v0

    .restart local v0    # "formatInfo":Lcom/google/zxing/qrcode/decoder/FormatInformation;
    :cond_7
    xor-int/lit16 v1, p0, 0x5412

    xor-int/lit16 v2, p1, 0x5412

    invoke-static {v1, v2}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->doDecodeFormatInformation(II)Lcom/google/zxing/qrcode/decoder/FormatInformation;

    move-result-object v0

    goto :goto_6
.end method

.method private static doDecodeFormatInformation(II)Lcom/google/zxing/qrcode/decoder/FormatInformation;
    .registers 12
    .param p0, "maskedFormatInfo1"    # I
    .param p1, "maskedFormatInfo2"    # I

    .prologue
    const/4 v9, 0x1

    .line 119
    const v1, 0x7fffffff

    .line 120
    .local v1, "bestDifference":I
    const/4 v2, 0x0

    .line 121
    .local v2, "bestFormatInfo":I
    sget-object v0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->FORMAT_INFO_DECODE_LOOKUP:[[I

    .local v0, "arr$":[[I
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_9
    if-ge v5, v6, :cond_33

    aget-object v4, v0, v5

    .line 122
    .local v4, "decodeInfo":[I
    const/4 v8, 0x0

    aget v7, v4, v8

    .line 123
    .local v7, "targetInfo":I
    if-eq v7, p0, :cond_14

    if-ne v7, p1, :cond_1c

    .line 125
    :cond_14
    new-instance v8, Lcom/google/zxing/qrcode/decoder/FormatInformation;

    aget v9, v4, v9

    invoke-direct {v8, v9}, Lcom/google/zxing/qrcode/decoder/FormatInformation;-><init>(I)V

    .line 146
    .end local v4    # "decodeInfo":[I
    .end local v7    # "targetInfo":I
    :goto_1b
    return-object v8

    .line 127
    .restart local v4    # "decodeInfo":[I
    .restart local v7    # "targetInfo":I
    :cond_1c
    invoke-static {p0, v7}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->numBitsDiffering(II)I

    move-result v3

    .line 128
    .local v3, "bitsDifference":I
    if-ge v3, v1, :cond_25

    .line 129
    aget v2, v4, v9

    .line 130
    move v1, v3

    .line 132
    :cond_25
    if-eq p0, p1, :cond_30

    .line 134
    invoke-static {p1, v7}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->numBitsDiffering(II)I

    move-result v3

    .line 135
    if-ge v3, v1, :cond_30

    .line 136
    aget v2, v4, v9

    .line 137
    move v1, v3

    .line 121
    :cond_30
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 143
    .end local v3    # "bitsDifference":I
    .end local v4    # "decodeInfo":[I
    .end local v7    # "targetInfo":I
    :cond_33
    const/4 v8, 0x3

    if-gt v1, v8, :cond_3c

    .line 144
    new-instance v8, Lcom/google/zxing/qrcode/decoder/FormatInformation;

    invoke-direct {v8, v2}, Lcom/google/zxing/qrcode/decoder/FormatInformation;-><init>(I)V

    goto :goto_1b

    .line 146
    :cond_3c
    const/4 v8, 0x0

    goto :goto_1b
.end method

.method static numBitsDiffering(II)I
    .registers 5
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 86
    xor-int/2addr p0, p1

    .line 88
    sget-object v0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->BITS_SET_IN_HALF_BYTE:[I

    and-int/lit8 v1, p0, 0xf

    aget v0, v0, v1

    sget-object v1, Lcom/google/zxing/qrcode/decoder/FormatInformation;->BITS_SET_IN_HALF_BYTE:[I

    ushr-int/lit8 v2, p0, 0x4

    and-int/lit8 v2, v2, 0xf

    aget v1, v1, v2

    add-int/2addr v0, v1

    sget-object v1, Lcom/google/zxing/qrcode/decoder/FormatInformation;->BITS_SET_IN_HALF_BYTE:[I

    ushr-int/lit8 v2, p0, 0x8

    and-int/lit8 v2, v2, 0xf

    aget v1, v1, v2

    add-int/2addr v0, v1

    sget-object v1, Lcom/google/zxing/qrcode/decoder/FormatInformation;->BITS_SET_IN_HALF_BYTE:[I

    ushr-int/lit8 v2, p0, 0xc

    and-int/lit8 v2, v2, 0xf

    aget v1, v1, v2

    add-int/2addr v0, v1

    sget-object v1, Lcom/google/zxing/qrcode/decoder/FormatInformation;->BITS_SET_IN_HALF_BYTE:[I

    ushr-int/lit8 v2, p0, 0x10

    and-int/lit8 v2, v2, 0xf

    aget v1, v1, v2

    add-int/2addr v0, v1

    sget-object v1, Lcom/google/zxing/qrcode/decoder/FormatInformation;->BITS_SET_IN_HALF_BYTE:[I

    ushr-int/lit8 v2, p0, 0x14

    and-int/lit8 v2, v2, 0xf

    aget v1, v1, v2

    add-int/2addr v0, v1

    sget-object v1, Lcom/google/zxing/qrcode/decoder/FormatInformation;->BITS_SET_IN_HALF_BYTE:[I

    ushr-int/lit8 v2, p0, 0x18

    and-int/lit8 v2, v2, 0xf

    aget v1, v1, v2

    add-int/2addr v0, v1

    sget-object v1, Lcom/google/zxing/qrcode/decoder/FormatInformation;->BITS_SET_IN_HALF_BYTE:[I

    ushr-int/lit8 v2, p0, 0x1c

    and-int/lit8 v2, v2, 0xf

    aget v1, v1, v2

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 164
    instance-of v2, p1, Lcom/google/zxing/qrcode/decoder/FormatInformation;

    if-nez v2, :cond_6

    .line 168
    :cond_5
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 167
    check-cast v0, Lcom/google/zxing/qrcode/decoder/FormatInformation;

    .line 168
    .local v0, "other":Lcom/google/zxing/qrcode/decoder/FormatInformation;
    iget-object v2, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->errorCorrectionLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    iget-object v3, v0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->errorCorrectionLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    if-ne v2, v3, :cond_5

    iget-byte v2, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->dataMask:B

    iget-byte v3, v0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->dataMask:B

    if-ne v2, v3, :cond_5

    const/4 v1, 0x1

    goto :goto_5
.end method

.method getDataMask()B
    .registers 2

    .prologue
    .line 154
    iget-byte v0, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->dataMask:B

    return v0
.end method

.method getErrorCorrectionLevel()Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->errorCorrectionLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->errorCorrectionLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->ordinal()I

    move-result v0

    shl-int/lit8 v0, v0, 0x3

    iget-byte v1, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->dataMask:B

    or-int/2addr v0, v1

    return v0
.end method
