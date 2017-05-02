.class final Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;
.super Ljava/lang/Object;
.source "GeneralAppIdDecoder.java"


# instance fields
.field private final buffer:Ljava/lang/StringBuilder;

.field private final current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

.field private final information:Lcom/google/zxing/common/BitArray;


# direct methods
.method constructor <init>(Lcom/google/zxing/common/BitArray;)V
    .registers 3
    .param p1, "information"    # Lcom/google/zxing/common/BitArray;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-direct {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;

    .line 44
    iput-object p1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    .line 45
    return-void
.end method

.method private decodeAlphanumeric(I)Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;
    .registers 8
    .param p1, "pos"    # I

    .prologue
    const/16 v4, 0xf

    const/4 v3, 0x5

    .line 385
    invoke-virtual {p0, p1, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v1

    .line 386
    .local v1, "fiveBitValue":I
    if-ne v1, v4, :cond_13

    .line 387
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    add-int/lit8 v4, p1, 0x5

    const/16 v5, 0x24

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    .line 420
    :goto_12
    return-object v3

    .line 390
    :cond_13
    if-lt v1, v3, :cond_24

    if-ge v1, v4, :cond_24

    .line 391
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    add-int/lit8 v4, p1, 0x5

    add-int/lit8 v5, v1, 0x30

    add-int/lit8 v5, v5, -0x5

    int-to-char v5, v5

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    goto :goto_12

    .line 394
    :cond_24
    const/4 v3, 0x6

    invoke-virtual {p0, p1, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v2

    .line 396
    .local v2, "sixBitValue":I
    const/16 v3, 0x20

    if-lt v2, v3, :cond_3c

    const/16 v3, 0x3a

    if-ge v2, v3, :cond_3c

    .line 397
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    add-int/lit8 v4, p1, 0x6

    add-int/lit8 v5, v2, 0x21

    int-to-char v5, v5

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    goto :goto_12

    .line 401
    :cond_3c
    packed-switch v2, :pswitch_data_70

    .line 418
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Decoding invalid alphanumeric value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 403
    :pswitch_59
    const/16 v0, 0x2a

    .line 420
    .local v0, "c":C
    :goto_5b
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    add-int/lit8 v4, p1, 0x6

    invoke-direct {v3, v4, v0}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    goto :goto_12

    .line 406
    .end local v0    # "c":C
    :pswitch_63
    const/16 v0, 0x2c

    .line 407
    .restart local v0    # "c":C
    goto :goto_5b

    .line 409
    .end local v0    # "c":C
    :pswitch_66
    const/16 v0, 0x2d

    .line 410
    .restart local v0    # "c":C
    goto :goto_5b

    .line 412
    .end local v0    # "c":C
    :pswitch_69
    const/16 v0, 0x2e

    .line 413
    .restart local v0    # "c":C
    goto :goto_5b

    .line 415
    .end local v0    # "c":C
    :pswitch_6c
    const/16 v0, 0x2f

    .line 416
    .restart local v0    # "c":C
    goto :goto_5b

    .line 401
    nop

    :pswitch_data_70
    .packed-switch 0x3a
        :pswitch_59
        :pswitch_63
        :pswitch_66
        :pswitch_69
        :pswitch_6c
    .end packed-switch
.end method

.method private decodeIsoIec646(I)Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;
    .registers 9
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x5a

    const/16 v5, 0xf

    const/4 v4, 0x5

    .line 274
    invoke-virtual {p0, p1, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v2

    .line 275
    .local v2, "fiveBitValue":I
    if-ne v2, v5, :cond_15

    .line 276
    new-instance v4, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    add-int/lit8 v5, p1, 0x5

    const/16 v6, 0x24

    invoke-direct {v4, v5, v6}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    .line 362
    :goto_14
    return-object v4

    .line 279
    :cond_15
    if-lt v2, v4, :cond_26

    if-ge v2, v5, :cond_26

    .line 280
    new-instance v4, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    add-int/lit8 v5, p1, 0x5

    add-int/lit8 v6, v2, 0x30

    add-int/lit8 v6, v6, -0x5

    int-to-char v6, v6

    invoke-direct {v4, v5, v6}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    goto :goto_14

    .line 283
    :cond_26
    const/4 v4, 0x7

    invoke-virtual {p0, p1, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v3

    .line 285
    .local v3, "sevenBitValue":I
    const/16 v4, 0x40

    if-lt v3, v4, :cond_3c

    if-ge v3, v6, :cond_3c

    .line 286
    new-instance v4, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    add-int/lit8 v5, p1, 0x7

    add-int/lit8 v6, v3, 0x1

    int-to-char v6, v6

    invoke-direct {v4, v5, v6}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    goto :goto_14

    .line 289
    :cond_3c
    if-lt v3, v6, :cond_4d

    const/16 v4, 0x74

    if-ge v3, v4, :cond_4d

    .line 290
    new-instance v4, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    add-int/lit8 v5, p1, 0x7

    add-int/lit8 v6, v3, 0x7

    int-to-char v6, v6

    invoke-direct {v4, v5, v6}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    goto :goto_14

    .line 293
    :cond_4d
    const/16 v4, 0x8

    invoke-virtual {p0, p1, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v1

    .line 295
    .local v1, "eightBitValue":I
    packed-switch v1, :pswitch_data_a2

    .line 360
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v4

    throw v4

    .line 297
    :pswitch_5b
    const/16 v0, 0x21

    .line 362
    .local v0, "c":C
    :goto_5d
    new-instance v4, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    add-int/lit8 v5, p1, 0x8

    invoke-direct {v4, v5, v0}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    goto :goto_14

    .line 300
    .end local v0    # "c":C
    :pswitch_65
    const/16 v0, 0x22

    .line 301
    .restart local v0    # "c":C
    goto :goto_5d

    .line 303
    .end local v0    # "c":C
    :pswitch_68
    const/16 v0, 0x25

    .line 304
    .restart local v0    # "c":C
    goto :goto_5d

    .line 306
    .end local v0    # "c":C
    :pswitch_6b
    const/16 v0, 0x26

    .line 307
    .restart local v0    # "c":C
    goto :goto_5d

    .line 309
    .end local v0    # "c":C
    :pswitch_6e
    const/16 v0, 0x27

    .line 310
    .restart local v0    # "c":C
    goto :goto_5d

    .line 312
    .end local v0    # "c":C
    :pswitch_71
    const/16 v0, 0x28

    .line 313
    .restart local v0    # "c":C
    goto :goto_5d

    .line 315
    .end local v0    # "c":C
    :pswitch_74
    const/16 v0, 0x29

    .line 316
    .restart local v0    # "c":C
    goto :goto_5d

    .line 318
    .end local v0    # "c":C
    :pswitch_77
    const/16 v0, 0x2a

    .line 319
    .restart local v0    # "c":C
    goto :goto_5d

    .line 321
    .end local v0    # "c":C
    :pswitch_7a
    const/16 v0, 0x2b

    .line 322
    .restart local v0    # "c":C
    goto :goto_5d

    .line 324
    .end local v0    # "c":C
    :pswitch_7d
    const/16 v0, 0x2c

    .line 325
    .restart local v0    # "c":C
    goto :goto_5d

    .line 327
    .end local v0    # "c":C
    :pswitch_80
    const/16 v0, 0x2d

    .line 328
    .restart local v0    # "c":C
    goto :goto_5d

    .line 330
    .end local v0    # "c":C
    :pswitch_83
    const/16 v0, 0x2e

    .line 331
    .restart local v0    # "c":C
    goto :goto_5d

    .line 333
    .end local v0    # "c":C
    :pswitch_86
    const/16 v0, 0x2f

    .line 334
    .restart local v0    # "c":C
    goto :goto_5d

    .line 336
    .end local v0    # "c":C
    :pswitch_89
    const/16 v0, 0x3a

    .line 337
    .restart local v0    # "c":C
    goto :goto_5d

    .line 339
    .end local v0    # "c":C
    :pswitch_8c
    const/16 v0, 0x3b

    .line 340
    .restart local v0    # "c":C
    goto :goto_5d

    .line 342
    .end local v0    # "c":C
    :pswitch_8f
    const/16 v0, 0x3c

    .line 343
    .restart local v0    # "c":C
    goto :goto_5d

    .line 345
    .end local v0    # "c":C
    :pswitch_92
    const/16 v0, 0x3d

    .line 346
    .restart local v0    # "c":C
    goto :goto_5d

    .line 348
    .end local v0    # "c":C
    :pswitch_95
    const/16 v0, 0x3e

    .line 349
    .restart local v0    # "c":C
    goto :goto_5d

    .line 351
    .end local v0    # "c":C
    :pswitch_98
    const/16 v0, 0x3f

    .line 352
    .restart local v0    # "c":C
    goto :goto_5d

    .line 354
    .end local v0    # "c":C
    :pswitch_9b
    const/16 v0, 0x5f

    .line 355
    .restart local v0    # "c":C
    goto :goto_5d

    .line 357
    .end local v0    # "c":C
    :pswitch_9e
    const/16 v0, 0x20

    .line 358
    .restart local v0    # "c":C
    goto :goto_5d

    .line 295
    nop

    :pswitch_data_a2
    .packed-switch 0xe8
        :pswitch_5b
        :pswitch_65
        :pswitch_68
        :pswitch_6b
        :pswitch_6e
        :pswitch_71
        :pswitch_74
        :pswitch_77
        :pswitch_7a
        :pswitch_7d
        :pswitch_80
        :pswitch_83
        :pswitch_86
        :pswitch_89
        :pswitch_8c
        :pswitch_8f
        :pswitch_92
        :pswitch_95
        :pswitch_98
        :pswitch_9b
        :pswitch_9e
    .end packed-switch
.end method

.method private decodeNumeric(I)Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;
    .registers 9
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/16 v6, 0xa

    .line 88
    add-int/lit8 v3, p1, 0x7

    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v4}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    if-le v3, v4, :cond_2d

    .line 89
    const/4 v3, 0x4

    invoke-virtual {p0, p1, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v2

    .line 90
    .local v2, "numeric":I
    if-nez v2, :cond_1f

    .line 91
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;

    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v4}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    invoke-direct {v3, v4, v6, v6}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;-><init>(III)V

    .line 100
    :goto_1e
    return-object v3

    .line 93
    :cond_1f
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;

    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v4}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    add-int/lit8 v5, v2, -0x1

    invoke-direct {v3, v4, v5, v6}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;-><init>(III)V

    goto :goto_1e

    .line 95
    .end local v2    # "numeric":I
    :cond_2d
    const/4 v3, 0x7

    invoke-virtual {p0, p1, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v2

    .line 97
    .restart local v2    # "numeric":I
    add-int/lit8 v3, v2, -0x8

    div-int/lit8 v0, v3, 0xb

    .line 98
    .local v0, "digit1":I
    add-int/lit8 v3, v2, -0x8

    rem-int/lit8 v1, v3, 0xb

    .line 100
    .local v1, "digit2":I
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;

    add-int/lit8 v4, p1, 0x7

    invoke-direct {v3, v4, v0, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;-><init>(III)V

    goto :goto_1e
.end method

.method static extractNumericValueFromBitArray(Lcom/google/zxing/common/BitArray;II)I
    .registers 7
    .param p0, "information"    # Lcom/google/zxing/common/BitArray;
    .param p1, "pos"    # I
    .param p2, "bits"    # I

    .prologue
    .line 108
    const/4 v1, 0x0

    .line 109
    .local v1, "value":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, p2, :cond_16

    .line 110
    add-int v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 111
    const/4 v2, 0x1

    sub-int v3, p2, v0

    add-int/lit8 v3, v3, -0x1

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 109
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 115
    :cond_16
    return v1
.end method

.method private isAlphaOr646ToNumericLatch(I)Z
    .registers 6
    .param p1, "pos"    # I

    .prologue
    const/4 v1, 0x0

    .line 443
    add-int/lit8 v2, p1, 0x3

    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    if-le v2, v3, :cond_c

    .line 452
    :cond_b
    :goto_b
    return v1

    .line 447
    :cond_c
    move v0, p1

    .local v0, "i":I
    :goto_d
    add-int/lit8 v2, p1, 0x3

    if-ge v0, v2, :cond_1c

    .line 448
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v2, v0}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_b

    .line 447
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 452
    :cond_1c
    const/4 v1, 0x1

    goto :goto_b
.end method

.method private isAlphaTo646ToAlphaLatch(I)Z
    .registers 6
    .param p1, "pos"    # I

    .prologue
    const/4 v1, 0x0

    .line 424
    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    if-le v2, v3, :cond_c

    .line 438
    :cond_b
    :goto_b
    return v1

    .line 428
    :cond_c
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    const/4 v2, 0x5

    if-ge v0, v2, :cond_35

    add-int v2, v0, p1

    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    if-ge v2, v3, :cond_35

    .line 429
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2a

    .line 430
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    add-int/lit8 v3, p1, 0x2

    invoke-virtual {v2, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 428
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 433
    :cond_2a
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    add-int v3, p1, v0

    invoke-virtual {v2, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_27

    goto :goto_b

    .line 438
    :cond_35
    const/4 v1, 0x1

    goto :goto_b
.end method

.method private isNumericToAlphaNumericLatch(I)Z
    .registers 6
    .param p1, "pos"    # I

    .prologue
    const/4 v1, 0x0

    .line 458
    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    if-le v2, v3, :cond_c

    .line 467
    :cond_b
    :goto_b
    return v1

    .line 462
    :cond_c
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    const/4 v2, 0x4

    if-ge v0, v2, :cond_27

    add-int v2, v0, p1

    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    if-ge v2, v3, :cond_27

    .line 463
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    add-int v3, p1, v0

    invoke-virtual {v2, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_b

    .line 462
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 467
    :cond_27
    const/4 v1, 0x1

    goto :goto_b
.end method

.method private isStillAlpha(I)Z
    .registers 10
    .param p1, "pos"    # I

    .prologue
    const/16 v7, 0x10

    const/4 v6, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 366
    add-int/lit8 v4, p1, 0x5

    iget-object v5, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v5}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v5

    if-le v4, v5, :cond_10

    .line 381
    :cond_f
    :goto_f
    return v3

    .line 371
    :cond_10
    invoke-virtual {p0, p1, v6}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v0

    .line 372
    .local v0, "fiveBitValue":I
    if-lt v0, v6, :cond_1a

    if-ge v0, v7, :cond_1a

    move v3, v2

    .line 373
    goto :goto_f

    .line 376
    :cond_1a
    add-int/lit8 v4, p1, 0x6

    iget-object v5, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v5}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v5

    if-gt v4, v5, :cond_f

    .line 380
    const/4 v4, 0x6

    invoke-virtual {p0, p1, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v1

    .line 381
    .local v1, "sixBitValue":I
    if-lt v1, v7, :cond_31

    const/16 v4, 0x3f

    if-ge v1, v4, :cond_31

    :goto_2f
    move v3, v2

    goto :goto_f

    :cond_31
    move v2, v3

    goto :goto_2f
.end method

.method private isStillIsoIec646(I)Z
    .registers 10
    .param p1, "pos"    # I

    .prologue
    const/4 v7, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 246
    add-int/lit8 v5, p1, 0x5

    iget-object v6, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v6}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v6

    if-le v5, v6, :cond_e

    .line 269
    :cond_d
    :goto_d
    return v4

    .line 250
    :cond_e
    invoke-virtual {p0, p1, v7}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v1

    .line 251
    .local v1, "fiveBitValue":I
    if-lt v1, v7, :cond_1a

    const/16 v5, 0x10

    if-ge v1, v5, :cond_1a

    move v4, v3

    .line 252
    goto :goto_d

    .line 255
    :cond_1a
    add-int/lit8 v5, p1, 0x7

    iget-object v6, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v6}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v6

    if-gt v5, v6, :cond_d

    .line 259
    const/4 v5, 0x7

    invoke-virtual {p0, p1, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v2

    .line 260
    .local v2, "sevenBitValue":I
    const/16 v5, 0x40

    if-lt v2, v5, :cond_33

    const/16 v5, 0x74

    if-ge v2, v5, :cond_33

    move v4, v3

    .line 261
    goto :goto_d

    .line 264
    :cond_33
    add-int/lit8 v5, p1, 0x8

    iget-object v6, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v6}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v6

    if-gt v5, v6, :cond_d

    .line 268
    const/16 v5, 0x8

    invoke-virtual {p0, p1, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v0

    .line 269
    .local v0, "eightBitValue":I
    const/16 v5, 0xe8

    if-lt v0, v5, :cond_4d

    const/16 v5, 0xfd

    if-ge v0, v5, :cond_4d

    :goto_4b
    move v4, v3

    goto :goto_d

    :cond_4d
    move v3, v4

    goto :goto_4b
.end method

.method private isStillNumeric(I)Z
    .registers 6
    .param p1, "pos"    # I

    .prologue
    const/4 v1, 0x1

    .line 74
    add-int/lit8 v2, p1, 0x7

    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    if-le v2, v3, :cond_18

    .line 75
    add-int/lit8 v2, p1, 0x4

    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    if-gt v2, v3, :cond_16

    .line 84
    :cond_15
    :goto_15
    return v1

    .line 75
    :cond_16
    const/4 v1, 0x0

    goto :goto_15

    .line 78
    :cond_18
    move v0, p1

    .local v0, "i":I
    :goto_19
    add-int/lit8 v2, p1, 0x3

    if-ge v0, v2, :cond_28

    .line 79
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v2, v0}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_15

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 84
    :cond_28
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    add-int/lit8 v2, p1, 0x3

    invoke-virtual {v1, v2}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    goto :goto_15
.end method

.method private parseAlphaBlock()Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;
    .registers 5

    .prologue
    .line 218
    :goto_0
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->isStillAlpha(I)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 219
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->decodeAlphanumeric(I)Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    move-result-object v0

    .line 220
    .local v0, "alpha":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;->getNewPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->setPosition(I)V

    .line 222
    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;->isFNC1()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 223
    new-instance v1, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;

    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v2

    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;-><init>(ILjava/lang/String;)V

    .line 224
    .local v1, "information":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    new-instance v2, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;-><init>(Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;Z)V

    .line 242
    .end local v0    # "alpha":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;
    .end local v1    # "information":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    :goto_3c
    return-object v2

    .line 227
    .restart local v0    # "alpha":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;
    :cond_3d
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;->getValue()C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 230
    .end local v0    # "alpha":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;
    :cond_47
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->isAlphaOr646ToNumericLatch(I)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 231
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->incrementPosition(I)V

    .line 232
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->setNumeric()V

    .line 242
    :cond_5e
    :goto_5e
    new-instance v2, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;-><init>(Z)V

    goto :goto_3c

    .line 233
    :cond_65
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->isAlphaTo646ToAlphaLatch(I)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 234
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    if-ge v2, v3, :cond_8d

    .line 235
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->incrementPosition(I)V

    .line 240
    :goto_87
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->setIsoIec646()V

    goto :goto_5e

    .line 237
    :cond_8d
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->setPosition(I)V

    goto :goto_87
.end method

.method private parseBlocks()Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 138
    :cond_0
    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v4}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v0

    .line 140
    .local v0, "initialPosition":I
    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v4}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->isAlpha()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 141
    invoke-direct {p0}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->parseAlphaBlock()Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;

    move-result-object v3

    .line 142
    .local v3, "result":Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;
    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;->isFinished()Z

    move-result v1

    .line 151
    .local v1, "isFinished":Z
    :goto_16
    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v4}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v4

    if-eq v0, v4, :cond_42

    const/4 v2, 0x1

    .line 152
    .local v2, "positionChanged":Z
    :goto_1f
    if-nez v2, :cond_44

    if-nez v1, :cond_44

    .line 157
    :goto_23
    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;->getDecodedInformation()Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;

    move-result-object v4

    return-object v4

    .line 143
    .end local v1    # "isFinished":Z
    .end local v2    # "positionChanged":Z
    .end local v3    # "result":Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;
    :cond_28
    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v4}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->isIsoIec646()Z

    move-result v4

    if-eqz v4, :cond_39

    .line 144
    invoke-direct {p0}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->parseIsoIec646Block()Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;

    move-result-object v3

    .line 145
    .restart local v3    # "result":Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;
    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;->isFinished()Z

    move-result v1

    .restart local v1    # "isFinished":Z
    goto :goto_16

    .line 147
    .end local v1    # "isFinished":Z
    .end local v3    # "result":Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;
    :cond_39
    invoke-direct {p0}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->parseNumericBlock()Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;

    move-result-object v3

    .line 148
    .restart local v3    # "result":Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;
    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;->isFinished()Z

    move-result v1

    .restart local v1    # "isFinished":Z
    goto :goto_16

    .line 151
    :cond_42
    const/4 v2, 0x0

    goto :goto_1f

    .line 155
    .restart local v2    # "positionChanged":Z
    :cond_44
    if-eqz v1, :cond_0

    goto :goto_23
.end method

.method private parseIsoIec646Block()Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 191
    :goto_0
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->isStillIsoIec646(I)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 192
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->decodeIsoIec646(I)Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    move-result-object v1

    .line 193
    .local v1, "iso":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;->getNewPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->setPosition(I)V

    .line 195
    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;->isFNC1()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 196
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;

    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v2

    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;-><init>(ILjava/lang/String;)V

    .line 197
    .local v0, "information":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    new-instance v2, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;-><init>(Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;Z)V

    .line 214
    .end local v0    # "information":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    .end local v1    # "iso":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;
    :goto_3c
    return-object v2

    .line 199
    .restart local v1    # "iso":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;
    :cond_3d
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;->getValue()C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 202
    .end local v1    # "iso":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;
    :cond_47
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->isAlphaOr646ToNumericLatch(I)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 203
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->incrementPosition(I)V

    .line 204
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->setNumeric()V

    .line 214
    :cond_5e
    :goto_5e
    new-instance v2, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;-><init>(Z)V

    goto :goto_3c

    .line 205
    :cond_65
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->isAlphaTo646ToAlphaLatch(I)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 206
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    if-ge v2, v3, :cond_8d

    .line 207
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->incrementPosition(I)V

    .line 212
    :goto_87
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->setAlpha()V

    goto :goto_5e

    .line 209
    :cond_8d
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->setPosition(I)V

    goto :goto_87
.end method

.method private parseNumericBlock()Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 161
    :goto_1
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->isStillNumeric(I)Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 162
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->decodeNumeric(I)Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;

    move-result-object v1

    .line 163
    .local v1, "numeric":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;->getNewPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->setPosition(I)V

    .line 165
    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;->isFirstDigitFNC1()Z

    move-result v2

    if-eqz v2, :cond_59

    .line 167
    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;->isSecondDigitFNC1()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 168
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;

    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v2

    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;-><init>(ILjava/lang/String;)V

    .line 172
    .local v0, "information":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    :goto_3d
    new-instance v2, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;

    invoke-direct {v2, v0, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;-><init>(Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;Z)V

    .line 187
    .end local v0    # "information":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    .end local v1    # "numeric":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;
    :goto_42
    return-object v2

    .line 170
    .restart local v1    # "numeric":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;
    :cond_43
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;

    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v2

    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;->getSecondDigit()I

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;-><init>(ILjava/lang/String;I)V

    .restart local v0    # "information":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    goto :goto_3d

    .line 174
    .end local v0    # "information":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    :cond_59
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;->getFirstDigit()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;->isSecondDigitFNC1()Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 177
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;

    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v2

    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;-><init>(ILjava/lang/String;)V

    .line 178
    .restart local v0    # "information":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    new-instance v2, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;

    invoke-direct {v2, v0, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;-><init>(Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;Z)V

    goto :goto_42

    .line 180
    .end local v0    # "information":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    :cond_7f
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;->getSecondDigit()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 183
    .end local v1    # "numeric":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;
    :cond_8a
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->isNumericToAlphaNumericLatch(I)Z

    move-result v2

    if-eqz v2, :cond_a1

    .line 184
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->setAlpha()V

    .line 185
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->incrementPosition(I)V

    .line 187
    :cond_a1
    new-instance v2, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;-><init>(Z)V

    goto :goto_42
.end method


# virtual methods
.method decodeAllCodes(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .registers 8
    .param p1, "buff"    # Ljava/lang/StringBuilder;
    .param p2, "initialPosition"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 48
    move v0, p2

    .line 49
    .local v0, "currentPosition":I
    const/4 v3, 0x0

    .line 51
    .local v3, "remaining":Ljava/lang/String;
    :goto_2
    invoke-virtual {p0, v0, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->decodeGeneralPurposeField(ILjava/lang/String;)Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;

    move-result-object v1

    .line 52
    .local v1, "info":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;->getNewString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->parseFieldsInGeneralPurpose(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, "parsedFields":Ljava/lang/String;
    if-eqz v2, :cond_13

    .line 54
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    :cond_13
    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;->isRemaining()Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 57
    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;->getRemainingValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 62
    :goto_21
    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;->getNewPosition()I

    move-result v4

    if-ne v0, v4, :cond_2e

    .line 68
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 59
    :cond_2c
    const/4 v3, 0x0

    goto :goto_21

    .line 65
    :cond_2e
    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;->getNewPosition()I

    move-result v0

    .line 66
    goto :goto_2
.end method

.method decodeGeneralPurposeField(ILjava/lang/String;)Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    .registers 8
    .param p1, "pos"    # I
    .param p2, "remaining"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 119
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 121
    if-eqz p2, :cond_d

    .line 122
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    :cond_d
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v1, p1}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->setPosition(I)V

    .line 127
    invoke-direct {p0}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->parseBlocks()Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;

    move-result-object v0

    .line 128
    .local v0, "lastDecoded":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    if-eqz v0, :cond_34

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;->isRemaining()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 129
    new-instance v1, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;

    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v2

    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;->getRemainingValue()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;-><init>(ILjava/lang/String;I)V

    .line 131
    :goto_33
    return-object v1

    :cond_34
    new-instance v1, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;

    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v2

    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;-><init>(ILjava/lang/String;)V

    goto :goto_33
.end method

.method extractNumericValueFromBitArray(II)I
    .registers 4
    .param p1, "pos"    # I
    .param p2, "bits"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    invoke-static {v0, p1, p2}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(Lcom/google/zxing/common/BitArray;II)I

    move-result v0

    return v0
.end method
