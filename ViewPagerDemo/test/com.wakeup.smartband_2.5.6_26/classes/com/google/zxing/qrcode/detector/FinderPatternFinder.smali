.class public Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
.super Ljava/lang/Object;
.source "FinderPatternFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/qrcode/detector/FinderPatternFinder$1;,
        Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;,
        Lcom/google/zxing/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;
    }
.end annotation


# static fields
.field private static final CENTER_QUORUM:I = 0x2

.field protected static final MAX_MODULES:I = 0x39

.field protected static final MIN_SKIP:I = 0x3


# instance fields
.field private final crossCheckStateCount:[I

.field private hasSkipped:Z

.field private final image:Lcom/google/zxing/common/BitMatrix;

.field private final possibleCenters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/qrcode/detector/FinderPattern;",
            ">;"
        }
    .end annotation
.end field

.field private final resultPointCallback:Lcom/google/zxing/ResultPointCallback;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .registers 3
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;-><init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V
    .registers 4
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p2, "resultPointCallback"    # Lcom/google/zxing/ResultPointCallback;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    .line 64
    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    .line 65
    iput-object p2, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    .line 66
    return-void
.end method

.method private static centerFromEnd([II)F
    .registers 5
    .param p0, "stateCount"    # [I
    .param p1, "end"    # I

    .prologue
    .line 191
    const/4 v0, 0x4

    aget v0, p0, v0

    sub-int v0, p1, v0

    const/4 v1, 0x3

    aget v1, p0, v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x2

    aget v1, p0, v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method private crossCheckDiagonal(IIII)Z
    .registers 13
    .param p1, "startI"    # I
    .param p2, "centerJ"    # I
    .param p3, "maxCount"    # I
    .param p4, "originalStateCountTotal"    # I

    .prologue
    .line 244
    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->getCrossCheckStateCount()[I

    move-result-object v3

    .line 247
    .local v3, "stateCount":[I
    const/4 v0, 0x0

    .line 248
    .local v0, "i":I
    :goto_5
    if-lt p1, v0, :cond_1f

    if-lt p2, v0, :cond_1f

    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    sub-int v6, p2, v0

    sub-int v7, p1, v0

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 249
    const/4 v5, 0x2

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 250
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 253
    :cond_1f
    if-lt p1, v0, :cond_23

    if-ge p2, v0, :cond_25

    .line 254
    :cond_23
    const/4 v5, 0x0

    .line 317
    :goto_24
    return v5

    .line 258
    :cond_25
    :goto_25
    if-lt p1, v0, :cond_44

    if-lt p2, v0, :cond_44

    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    sub-int v6, p2, v0

    sub-int v7, p1, v0

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-nez v5, :cond_44

    const/4 v5, 0x1

    aget v5, v3, v5

    if-gt v5, p3, :cond_44

    .line 260
    const/4 v5, 0x1

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 261
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 265
    :cond_44
    if-lt p1, v0, :cond_4d

    if-lt p2, v0, :cond_4d

    const/4 v5, 0x1

    aget v5, v3, v5

    if-le v5, p3, :cond_4f

    .line 266
    :cond_4d
    const/4 v5, 0x0

    goto :goto_24

    .line 270
    :cond_4f
    :goto_4f
    if-lt p1, v0, :cond_6e

    if-lt p2, v0, :cond_6e

    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    sub-int v6, p2, v0

    sub-int v7, p1, v0

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_6e

    const/4 v5, 0x0

    aget v5, v3, v5

    if-gt v5, p3, :cond_6e

    .line 272
    const/4 v5, 0x0

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 273
    add-int/lit8 v0, v0, 0x1

    goto :goto_4f

    .line 275
    :cond_6e
    const/4 v5, 0x0

    aget v5, v3, v5

    if-le v5, p3, :cond_75

    .line 276
    const/4 v5, 0x0

    goto :goto_24

    .line 279
    :cond_75
    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v5}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v1

    .line 280
    .local v1, "maxI":I
    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v5}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v2

    .line 283
    .local v2, "maxJ":I
    const/4 v0, 0x1

    .line 284
    :goto_82
    add-int v5, p1, v0

    if-ge v5, v1, :cond_a0

    add-int v5, p2, v0

    if-ge v5, v2, :cond_a0

    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    add-int v6, p2, v0

    add-int v7, p1, v0

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_a0

    .line 285
    const/4 v5, 0x2

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 286
    add-int/lit8 v0, v0, 0x1

    goto :goto_82

    .line 290
    :cond_a0
    add-int v5, p1, v0

    if-ge v5, v1, :cond_a8

    add-int v5, p2, v0

    if-lt v5, v2, :cond_ab

    .line 291
    :cond_a8
    const/4 v5, 0x0

    goto/16 :goto_24

    .line 294
    :cond_ab
    :goto_ab
    add-int v5, p1, v0

    if-ge v5, v1, :cond_ce

    add-int v5, p2, v0

    if-ge v5, v2, :cond_ce

    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    add-int v6, p2, v0

    add-int v7, p1, v0

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-nez v5, :cond_ce

    const/4 v5, 0x3

    aget v5, v3, v5

    if-ge v5, p3, :cond_ce

    .line 296
    const/4 v5, 0x3

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 297
    add-int/lit8 v0, v0, 0x1

    goto :goto_ab

    .line 300
    :cond_ce
    add-int v5, p1, v0

    if-ge v5, v1, :cond_db

    add-int v5, p2, v0

    if-ge v5, v2, :cond_db

    const/4 v5, 0x3

    aget v5, v3, v5

    if-lt v5, p3, :cond_de

    .line 301
    :cond_db
    const/4 v5, 0x0

    goto/16 :goto_24

    .line 304
    :cond_de
    :goto_de
    add-int v5, p1, v0

    if-ge v5, v1, :cond_101

    add-int v5, p2, v0

    if-ge v5, v2, :cond_101

    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    add-int v6, p2, v0

    add-int v7, p1, v0

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_101

    const/4 v5, 0x4

    aget v5, v3, v5

    if-ge v5, p3, :cond_101

    .line 306
    const/4 v5, 0x4

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 307
    add-int/lit8 v0, v0, 0x1

    goto :goto_de

    .line 310
    :cond_101
    const/4 v5, 0x4

    aget v5, v3, v5

    if-lt v5, p3, :cond_109

    .line 311
    const/4 v5, 0x0

    goto/16 :goto_24

    .line 316
    :cond_109
    const/4 v5, 0x0

    aget v5, v3, v5

    const/4 v6, 0x1

    aget v6, v3, v6

    add-int/2addr v5, v6

    const/4 v6, 0x2

    aget v6, v3, v6

    add-int/2addr v5, v6

    const/4 v6, 0x3

    aget v6, v3, v6

    add-int/2addr v5, v6

    const/4 v6, 0x4

    aget v6, v3, v6

    add-int v4, v5, v6

    .line 317
    .local v4, "stateCountTotal":I
    sub-int v5, v4, p4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    mul-int/lit8 v6, p4, 0x2

    if-ge v5, v6, :cond_130

    invoke-static {v3}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v5

    if-eqz v5, :cond_130

    const/4 v5, 0x1

    goto/16 :goto_24

    :cond_130
    const/4 v5, 0x0

    goto/16 :goto_24
.end method

.method private crossCheckHorizontal(IIII)F
    .registers 12
    .param p1, "startJ"    # I
    .param p2, "centerI"    # I
    .param p3, "maxCount"    # I
    .param p4, "originalStateCountTotal"    # I

    .prologue
    .line 407
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    .line 409
    .local v0, "image":Lcom/google/zxing/common/BitMatrix;
    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v2

    .line 410
    .local v2, "maxJ":I
    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->getCrossCheckStateCount()[I

    move-result-object v3

    .line 412
    .local v3, "stateCount":[I
    move v1, p1

    .line 413
    .local v1, "j":I
    :goto_b
    if-ltz v1, :cond_1d

    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 414
    const/4 v5, 0x2

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 415
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 417
    :cond_1d
    if-gez v1, :cond_22

    .line 418
    const/high16 v5, 0x7fc00000

    .line 466
    :goto_21
    return v5

    .line 420
    :cond_22
    :goto_22
    if-ltz v1, :cond_39

    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-nez v5, :cond_39

    const/4 v5, 0x1

    aget v5, v3, v5

    if-gt v5, p3, :cond_39

    .line 421
    const/4 v5, 0x1

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 422
    add-int/lit8 v1, v1, -0x1

    goto :goto_22

    .line 424
    :cond_39
    if-ltz v1, :cond_40

    const/4 v5, 0x1

    aget v5, v3, v5

    if-le v5, p3, :cond_43

    .line 425
    :cond_40
    const/high16 v5, 0x7fc00000

    goto :goto_21

    .line 427
    :cond_43
    :goto_43
    if-ltz v1, :cond_5a

    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_5a

    const/4 v5, 0x0

    aget v5, v3, v5

    if-gt v5, p3, :cond_5a

    .line 428
    const/4 v5, 0x0

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 429
    add-int/lit8 v1, v1, -0x1

    goto :goto_43

    .line 431
    :cond_5a
    const/4 v5, 0x0

    aget v5, v3, v5

    if-le v5, p3, :cond_62

    .line 432
    const/high16 v5, 0x7fc00000

    goto :goto_21

    .line 435
    :cond_62
    add-int/lit8 v1, p1, 0x1

    .line 436
    :goto_64
    if-ge v1, v2, :cond_76

    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_76

    .line 437
    const/4 v5, 0x2

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 438
    add-int/lit8 v1, v1, 0x1

    goto :goto_64

    .line 440
    :cond_76
    if-ne v1, v2, :cond_7b

    .line 441
    const/high16 v5, 0x7fc00000

    goto :goto_21

    .line 443
    :cond_7b
    :goto_7b
    if-ge v1, v2, :cond_92

    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-nez v5, :cond_92

    const/4 v5, 0x3

    aget v5, v3, v5

    if-ge v5, p3, :cond_92

    .line 444
    const/4 v5, 0x3

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 445
    add-int/lit8 v1, v1, 0x1

    goto :goto_7b

    .line 447
    :cond_92
    if-eq v1, v2, :cond_99

    const/4 v5, 0x3

    aget v5, v3, v5

    if-lt v5, p3, :cond_9c

    .line 448
    :cond_99
    const/high16 v5, 0x7fc00000

    goto :goto_21

    .line 450
    :cond_9c
    :goto_9c
    if-ge v1, v2, :cond_b3

    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_b3

    const/4 v5, 0x4

    aget v5, v3, v5

    if-ge v5, p3, :cond_b3

    .line 451
    const/4 v5, 0x4

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 452
    add-int/lit8 v1, v1, 0x1

    goto :goto_9c

    .line 454
    :cond_b3
    const/4 v5, 0x4

    aget v5, v3, v5

    if-lt v5, p3, :cond_bc

    .line 455
    const/high16 v5, 0x7fc00000

    goto/16 :goto_21

    .line 460
    :cond_bc
    const/4 v5, 0x0

    aget v5, v3, v5

    const/4 v6, 0x1

    aget v6, v3, v6

    add-int/2addr v5, v6

    const/4 v6, 0x2

    aget v6, v3, v6

    add-int/2addr v5, v6

    const/4 v6, 0x3

    aget v6, v3, v6

    add-int/2addr v5, v6

    const/4 v6, 0x4

    aget v6, v3, v6

    add-int v4, v5, v6

    .line 462
    .local v4, "stateCountTotal":I
    sub-int v5, v4, p4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x5

    if-lt v5, p4, :cond_de

    .line 463
    const/high16 v5, 0x7fc00000

    goto/16 :goto_21

    .line 466
    :cond_de
    invoke-static {v3}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v5

    if-eqz v5, :cond_ea

    invoke-static {v3, v1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->centerFromEnd([II)F

    move-result v5

    goto/16 :goto_21

    :cond_ea
    const/high16 v5, 0x7fc00000

    goto/16 :goto_21
.end method

.method private crossCheckVertical(IIII)F
    .registers 12
    .param p1, "startI"    # I
    .param p2, "centerJ"    # I
    .param p3, "maxCount"    # I
    .param p4, "originalStateCountTotal"    # I

    .prologue
    .line 335
    iget-object v1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    .line 337
    .local v1, "image":Lcom/google/zxing/common/BitMatrix;
    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v2

    .line 338
    .local v2, "maxI":I
    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->getCrossCheckStateCount()[I

    move-result-object v3

    .line 341
    .local v3, "stateCount":[I
    move v0, p1

    .line 342
    .local v0, "i":I
    :goto_b
    if-ltz v0, :cond_1d

    invoke-virtual {v1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 343
    const/4 v5, 0x2

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 344
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 346
    :cond_1d
    if-gez v0, :cond_22

    .line 347
    const/high16 v5, 0x7fc00000

    .line 397
    :goto_21
    return v5

    .line 349
    :cond_22
    :goto_22
    if-ltz v0, :cond_39

    invoke-virtual {v1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-nez v5, :cond_39

    const/4 v5, 0x1

    aget v5, v3, v5

    if-gt v5, p3, :cond_39

    .line 350
    const/4 v5, 0x1

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 351
    add-int/lit8 v0, v0, -0x1

    goto :goto_22

    .line 354
    :cond_39
    if-ltz v0, :cond_40

    const/4 v5, 0x1

    aget v5, v3, v5

    if-le v5, p3, :cond_43

    .line 355
    :cond_40
    const/high16 v5, 0x7fc00000

    goto :goto_21

    .line 357
    :cond_43
    :goto_43
    if-ltz v0, :cond_5a

    invoke-virtual {v1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_5a

    const/4 v5, 0x0

    aget v5, v3, v5

    if-gt v5, p3, :cond_5a

    .line 358
    const/4 v5, 0x0

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 359
    add-int/lit8 v0, v0, -0x1

    goto :goto_43

    .line 361
    :cond_5a
    const/4 v5, 0x0

    aget v5, v3, v5

    if-le v5, p3, :cond_62

    .line 362
    const/high16 v5, 0x7fc00000

    goto :goto_21

    .line 366
    :cond_62
    add-int/lit8 v0, p1, 0x1

    .line 367
    :goto_64
    if-ge v0, v2, :cond_76

    invoke-virtual {v1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_76

    .line 368
    const/4 v5, 0x2

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 369
    add-int/lit8 v0, v0, 0x1

    goto :goto_64

    .line 371
    :cond_76
    if-ne v0, v2, :cond_7b

    .line 372
    const/high16 v5, 0x7fc00000

    goto :goto_21

    .line 374
    :cond_7b
    :goto_7b
    if-ge v0, v2, :cond_92

    invoke-virtual {v1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-nez v5, :cond_92

    const/4 v5, 0x3

    aget v5, v3, v5

    if-ge v5, p3, :cond_92

    .line 375
    const/4 v5, 0x3

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 376
    add-int/lit8 v0, v0, 0x1

    goto :goto_7b

    .line 378
    :cond_92
    if-eq v0, v2, :cond_99

    const/4 v5, 0x3

    aget v5, v3, v5

    if-lt v5, p3, :cond_9c

    .line 379
    :cond_99
    const/high16 v5, 0x7fc00000

    goto :goto_21

    .line 381
    :cond_9c
    :goto_9c
    if-ge v0, v2, :cond_b3

    invoke-virtual {v1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_b3

    const/4 v5, 0x4

    aget v5, v3, v5

    if-ge v5, p3, :cond_b3

    .line 382
    const/4 v5, 0x4

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 383
    add-int/lit8 v0, v0, 0x1

    goto :goto_9c

    .line 385
    :cond_b3
    const/4 v5, 0x4

    aget v5, v3, v5

    if-lt v5, p3, :cond_bc

    .line 386
    const/high16 v5, 0x7fc00000

    goto/16 :goto_21

    .line 391
    :cond_bc
    const/4 v5, 0x0

    aget v5, v3, v5

    const/4 v6, 0x1

    aget v6, v3, v6

    add-int/2addr v5, v6

    const/4 v6, 0x2

    aget v6, v3, v6

    add-int/2addr v5, v6

    const/4 v6, 0x3

    aget v6, v3, v6

    add-int/2addr v5, v6

    const/4 v6, 0x4

    aget v6, v3, v6

    add-int v4, v5, v6

    .line 393
    .local v4, "stateCountTotal":I
    sub-int v5, v4, p4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x5

    mul-int/lit8 v6, p4, 0x2

    if-lt v5, v6, :cond_e0

    .line 394
    const/high16 v5, 0x7fc00000

    goto/16 :goto_21

    .line 397
    :cond_e0
    invoke-static {v3}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v5

    if-eqz v5, :cond_ec

    invoke-static {v3, v0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->centerFromEnd([II)F

    move-result v5

    goto/16 :goto_21

    :cond_ec
    const/high16 v5, 0x7fc00000

    goto/16 :goto_21
.end method

.method private findRowSkip()I
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 528
    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    .line 529
    .local v3, "max":I
    if-gt v3, v7, :cond_b

    .line 549
    :cond_a
    :goto_a
    return v4

    .line 532
    :cond_b
    const/4 v1, 0x0

    .line 533
    .local v1, "firstConfirmedCenter":Lcom/google/zxing/ResultPoint;
    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_12
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 534
    .local v0, "center":Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-virtual {v0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getCount()I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_12

    .line 535
    if-nez v1, :cond_29

    .line 536
    move-object v1, v0

    goto :goto_12

    .line 543
    :cond_29
    iput-boolean v7, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->hasSkipped:Z

    .line 544
    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v4

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v5

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    goto :goto_a
.end method

.method protected static foundPatternCross([I)Z
    .registers 11
    .param p0, "stateCount"    # [I

    .prologue
    const/4 v5, 0x1

    const/high16 v9, 0x40400000

    const/4 v6, 0x0

    .line 200
    const/4 v4, 0x0

    .line 201
    .local v4, "totalModuleSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    const/4 v7, 0x5

    if-ge v1, v7, :cond_12

    .line 202
    aget v0, p0, v1

    .line 203
    .local v0, "count":I
    if-nez v0, :cond_e

    .line 214
    .end local v0    # "count":I
    :cond_d
    :goto_d
    return v6

    .line 206
    .restart local v0    # "count":I
    :cond_e
    add-int/2addr v4, v0

    .line 201
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 208
    .end local v0    # "count":I
    :cond_12
    const/4 v7, 0x7

    if-lt v4, v7, :cond_d

    .line 211
    int-to-float v7, v4

    const/high16 v8, 0x40e00000

    div-float v3, v7, v8

    .line 212
    .local v3, "moduleSize":F
    const/high16 v7, 0x40000000

    div-float v2, v3, v7

    .line 214
    .local v2, "maxVariance":F
    aget v7, p0, v6

    int-to-float v7, v7

    sub-float v7, v3, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v2

    if-gez v7, :cond_67

    aget v7, p0, v5

    int-to-float v7, v7

    sub-float v7, v3, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v2

    if-gez v7, :cond_67

    mul-float v7, v9, v3

    const/4 v8, 0x2

    aget v8, p0, v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float v8, v9, v2

    cmpg-float v7, v7, v8

    if-gez v7, :cond_67

    const/4 v7, 0x3

    aget v7, p0, v7

    int-to-float v7, v7

    sub-float v7, v3, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v2

    if-gez v7, :cond_67

    const/4 v7, 0x4

    aget v7, p0, v7

    int-to-float v7, v7

    sub-float v7, v3, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v2

    if-gez v7, :cond_67

    :goto_65
    move v6, v5

    goto :goto_d

    :cond_67
    move v5, v6

    goto :goto_65
.end method

.method private getCrossCheckStateCount()[I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 223
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    aput v2, v0, v2

    .line 224
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 225
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 226
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    const/4 v1, 0x3

    aput v2, v0, v1

    .line 227
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    const/4 v1, 0x4

    aput v2, v0, v1

    .line 228
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    return-object v0
.end method

.method private haveMultiplyConfirmedCenters()Z
    .registers 11

    .prologue
    const/4 v7, 0x0

    .line 558
    const/4 v1, 0x0

    .line 559
    .local v1, "confirmedCount":I
    const/4 v6, 0x0

    .line 560
    .local v6, "totalModuleSize":F
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    .line 561
    .local v3, "max":I
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 562
    .local v4, "pattern":Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-virtual {v4}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getCount()I

    move-result v8

    const/4 v9, 0x2

    if-lt v8, v9, :cond_f

    .line 563
    add-int/lit8 v1, v1, 0x1

    .line 564
    invoke-virtual {v4}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v8

    add-float/2addr v6, v8

    goto :goto_f

    .line 567
    .end local v4    # "pattern":Lcom/google/zxing/qrcode/detector/FinderPattern;
    :cond_2a
    const/4 v8, 0x3

    if-ge v1, v8, :cond_2e

    .line 579
    :cond_2d
    :goto_2d
    return v7

    .line 574
    :cond_2e
    int-to-float v8, v3

    div-float v0, v6, v8

    .line 575
    .local v0, "average":F
    const/4 v5, 0x0

    .line 576
    .local v5, "totalDeviation":F
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_38
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 577
    .restart local v4    # "pattern":Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-virtual {v4}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v8

    sub-float/2addr v8, v0

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    add-float/2addr v5, v8

    .line 578
    goto :goto_38

    .line 579
    .end local v4    # "pattern":Lcom/google/zxing/qrcode/detector/FinderPattern;
    :cond_4f
    const v8, 0x3d4ccccd

    mul-float/2addr v8, v6

    cmpg-float v8, v5, v8

    if-gtz v8, :cond_2d

    const/4 v7, 0x1

    goto :goto_2d
.end method

.method private selectBestPatterns()[Lcom/google/zxing/qrcode/detector/FinderPattern;
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 590
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v11

    .line 591
    .local v11, "startSize":I
    const/4 v14, 0x3

    if-ge v11, v14, :cond_10

    .line 593
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v14

    throw v14

    .line 597
    :cond_10
    const/4 v14, 0x3

    if-le v11, v14, :cond_92

    .line 599
    const/4 v13, 0x0

    .line 600
    .local v13, "totalModuleSize":F
    const/4 v10, 0x0

    .line 601
    .local v10, "square":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_32

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 602
    .local v3, "center":Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-virtual {v3}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v9

    .line 603
    .local v9, "size":F
    add-float/2addr v13, v9

    .line 604
    mul-float v14, v9, v9

    add-float/2addr v10, v14

    .line 605
    goto :goto_1d

    .line 606
    .end local v3    # "center":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .end local v9    # "size":F
    :cond_32
    int-to-float v14, v11

    div-float v2, v13, v14

    .line 607
    .local v2, "average":F
    int-to-float v14, v11

    div-float v14, v10, v14

    mul-float v15, v2, v2

    sub-float/2addr v14, v15

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-float v12, v14

    .line 609
    .local v12, "stdDev":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    new-instance v15, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-direct {v15, v2, v0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;-><init>(FLcom/google/zxing/qrcode/detector/FinderPatternFinder$1;)V

    invoke-static {v14, v15}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 611
    const v14, 0x3e4ccccd

    mul-float/2addr v14, v2

    invoke-static {v14, v12}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 613
    .local v6, "limit":F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-ge v4, v14, :cond_92

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x3

    if-le v14, v15, :cond_92

    .line 614
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 615
    .local v7, "pattern":Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-virtual {v7}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v14

    sub-float/2addr v14, v2

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    cmpl-float v14, v14, v6

    if-lez v14, :cond_8f

    .line 616
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v14, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 617
    add-int/lit8 v4, v4, -0x1

    .line 613
    :cond_8f
    add-int/lit8 v4, v4, 0x1

    goto :goto_5a

    .line 622
    .end local v2    # "average":F
    .end local v4    # "i":I
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "limit":F
    .end local v7    # "pattern":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .end local v10    # "square":F
    .end local v12    # "stdDev":F
    .end local v13    # "totalModuleSize":F
    :cond_92
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x3

    if-le v14, v15, :cond_e9

    .line 625
    const/4 v13, 0x0

    .line 626
    .restart local v13    # "totalModuleSize":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :goto_a6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_b8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 627
    .local v8, "possibleCenter":Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-virtual {v8}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v14

    add-float/2addr v13, v14

    .line 628
    goto :goto_a6

    .line 630
    .end local v8    # "possibleCenter":Lcom/google/zxing/qrcode/detector/FinderPattern;
    :cond_b8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    int-to-float v14, v14

    div-float v2, v13, v14

    .line 632
    .restart local v2    # "average":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    new-instance v15, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-direct {v15, v2, v0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;-><init>(FLcom/google/zxing/qrcode/detector/FinderPatternFinder$1;)V

    invoke-static {v14, v15}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 634
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    const/4 v15, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    invoke-interface/range {v14 .. v16}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->clear()V

    .line 637
    .end local v2    # "average":F
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v13    # "totalModuleSize":F
    :cond_e9
    const/4 v14, 0x3

    new-array v15, v14, [Lcom/google/zxing/qrcode/detector/FinderPattern;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v14, v15, v16

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v14, v15, v16

    const/16 v16, 0x2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v14, v15, v16

    return-object v15
.end method


# virtual methods
.method final find(Ljava/util/Map;)Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/qrcode/detector/FinderPatternInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 77
    .local p1, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    if-eqz p1, :cond_70

    sget-object v14, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_70

    const/4 v13, 0x1

    .line 78
    .local v13, "tryHarder":Z
    :goto_d
    if-eqz p1, :cond_72

    sget-object v14, Lcom/google/zxing/DecodeHintType;->PURE_BARCODE:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_72

    const/4 v10, 0x1

    .line 79
    .local v10, "pureBarcode":Z
    :goto_1a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v14}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v7

    .line 80
    .local v7, "maxI":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v14}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v8

    .line 88
    .local v8, "maxJ":I
    mul-int/lit8 v14, v7, 0x3

    div-int/lit16 v5, v14, 0xe4

    .line 89
    .local v5, "iSkip":I
    const/4 v14, 0x3

    if-lt v5, v14, :cond_33

    if-eqz v13, :cond_34

    .line 90
    :cond_33
    const/4 v5, 0x3

    .line 93
    :cond_34
    const/4 v3, 0x0

    .line 94
    .local v3, "done":Z
    const/4 v14, 0x5

    new-array v12, v14, [I

    .line 95
    .local v12, "stateCount":[I
    add-int/lit8 v4, v5, -0x1

    .local v4, "i":I
    :goto_3a
    if-ge v4, v7, :cond_126

    if-nez v3, :cond_126

    .line 97
    const/4 v14, 0x0

    const/4 v15, 0x0

    aput v15, v12, v14

    .line 98
    const/4 v14, 0x1

    const/4 v15, 0x0

    aput v15, v12, v14

    .line 99
    const/4 v14, 0x2

    const/4 v15, 0x0

    aput v15, v12, v14

    .line 100
    const/4 v14, 0x3

    const/4 v15, 0x0

    aput v15, v12, v14

    .line 101
    const/4 v14, 0x4

    const/4 v15, 0x0

    aput v15, v12, v14

    .line 102
    const/4 v2, 0x0

    .line 103
    .local v2, "currentState":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_54
    if-ge v6, v8, :cond_108

    .line 104
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v14, v6, v4}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v14

    if-eqz v14, :cond_74

    .line 106
    and-int/lit8 v14, v2, 0x1

    const/4 v15, 0x1

    if-ne v14, v15, :cond_67

    .line 107
    add-int/lit8 v2, v2, 0x1

    .line 109
    :cond_67
    aget v14, v12, v2

    add-int/lit8 v14, v14, 0x1

    aput v14, v12, v2

    .line 103
    :goto_6d
    add-int/lit8 v6, v6, 0x1

    goto :goto_54

    .line 77
    .end local v2    # "currentState":I
    .end local v3    # "done":Z
    .end local v4    # "i":I
    .end local v5    # "iSkip":I
    .end local v6    # "j":I
    .end local v7    # "maxI":I
    .end local v8    # "maxJ":I
    .end local v10    # "pureBarcode":Z
    .end local v12    # "stateCount":[I
    .end local v13    # "tryHarder":Z
    :cond_70
    const/4 v13, 0x0

    goto :goto_d

    .line 78
    .restart local v13    # "tryHarder":Z
    :cond_72
    const/4 v10, 0x0

    goto :goto_1a

    .line 111
    .restart local v2    # "currentState":I
    .restart local v3    # "done":Z
    .restart local v4    # "i":I
    .restart local v5    # "iSkip":I
    .restart local v6    # "j":I
    .restart local v7    # "maxI":I
    .restart local v8    # "maxJ":I
    .restart local v10    # "pureBarcode":Z
    .restart local v12    # "stateCount":[I
    :cond_74
    and-int/lit8 v14, v2, 0x1

    if-nez v14, :cond_100

    .line 112
    const/4 v14, 0x4

    if-ne v2, v14, :cond_f6

    .line 113
    invoke-static {v12}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v14

    if-eqz v14, :cond_d9

    .line 114
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v4, v6, v10}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->handlePossibleCenter([IIIZ)Z

    move-result v1

    .line 115
    .local v1, "confirmed":Z
    if-eqz v1, :cond_bd

    .line 118
    const/4 v5, 0x2

    .line 119
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->hasSkipped:Z

    if-eqz v14, :cond_aa

    .line 120
    invoke-direct/range {p0 .. p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->haveMultiplyConfirmedCenters()Z

    move-result v3

    .line 146
    :cond_94
    :goto_94
    const/4 v2, 0x0

    .line 147
    const/4 v14, 0x0

    const/4 v15, 0x0

    aput v15, v12, v14

    .line 148
    const/4 v14, 0x1

    const/4 v15, 0x0

    aput v15, v12, v14

    .line 149
    const/4 v14, 0x2

    const/4 v15, 0x0

    aput v15, v12, v14

    .line 150
    const/4 v14, 0x3

    const/4 v15, 0x0

    aput v15, v12, v14

    .line 151
    const/4 v14, 0x4

    const/4 v15, 0x0

    aput v15, v12, v14

    goto :goto_6d

    .line 122
    :cond_aa
    invoke-direct/range {p0 .. p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->findRowSkip()I

    move-result v11

    .line 123
    .local v11, "rowSkip":I
    const/4 v14, 0x2

    aget v14, v12, v14

    if-le v11, v14, :cond_94

    .line 132
    const/4 v14, 0x2

    aget v14, v12, v14

    sub-int v14, v11, v14

    sub-int/2addr v14, v5

    add-int/2addr v4, v14

    .line 133
    add-int/lit8 v6, v8, -0x1

    goto :goto_94

    .line 137
    .end local v11    # "rowSkip":I
    :cond_bd
    const/4 v14, 0x0

    const/4 v15, 0x2

    aget v15, v12, v15

    aput v15, v12, v14

    .line 138
    const/4 v14, 0x1

    const/4 v15, 0x3

    aget v15, v12, v15

    aput v15, v12, v14

    .line 139
    const/4 v14, 0x2

    const/4 v15, 0x4

    aget v15, v12, v15

    aput v15, v12, v14

    .line 140
    const/4 v14, 0x3

    const/4 v15, 0x1

    aput v15, v12, v14

    .line 141
    const/4 v14, 0x4

    const/4 v15, 0x0

    aput v15, v12, v14

    .line 142
    const/4 v2, 0x3

    .line 143
    goto :goto_6d

    .line 153
    .end local v1    # "confirmed":Z
    :cond_d9
    const/4 v14, 0x0

    const/4 v15, 0x2

    aget v15, v12, v15

    aput v15, v12, v14

    .line 154
    const/4 v14, 0x1

    const/4 v15, 0x3

    aget v15, v12, v15

    aput v15, v12, v14

    .line 155
    const/4 v14, 0x2

    const/4 v15, 0x4

    aget v15, v12, v15

    aput v15, v12, v14

    .line 156
    const/4 v14, 0x3

    const/4 v15, 0x1

    aput v15, v12, v14

    .line 157
    const/4 v14, 0x4

    const/4 v15, 0x0

    aput v15, v12, v14

    .line 158
    const/4 v2, 0x3

    goto/16 :goto_6d

    .line 161
    :cond_f6
    add-int/lit8 v2, v2, 0x1

    aget v14, v12, v2

    add-int/lit8 v14, v14, 0x1

    aput v14, v12, v2

    goto/16 :goto_6d

    .line 164
    :cond_100
    aget v14, v12, v2

    add-int/lit8 v14, v14, 0x1

    aput v14, v12, v2

    goto/16 :goto_6d

    .line 168
    :cond_108
    invoke-static {v12}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v14

    if-eqz v14, :cond_123

    .line 169
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v4, v8, v10}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->handlePossibleCenter([IIIZ)Z

    move-result v1

    .line 170
    .restart local v1    # "confirmed":Z
    if-eqz v1, :cond_123

    .line 171
    const/4 v14, 0x0

    aget v5, v12, v14

    .line 172
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->hasSkipped:Z

    if-eqz v14, :cond_123

    .line 174
    invoke-direct/range {p0 .. p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->haveMultiplyConfirmedCenters()Z

    move-result v3

    .line 95
    .end local v1    # "confirmed":Z
    :cond_123
    add-int/2addr v4, v5

    goto/16 :goto_3a

    .line 180
    .end local v2    # "currentState":I
    .end local v6    # "j":I
    :cond_126
    invoke-direct/range {p0 .. p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->selectBestPatterns()[Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v9

    .line 181
    .local v9, "patternInfo":[Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-static {v9}, Lcom/google/zxing/ResultPoint;->orderBestPatterns([Lcom/google/zxing/ResultPoint;)V

    .line 183
    new-instance v14, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    invoke-direct {v14, v9}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;-><init>([Lcom/google/zxing/qrcode/detector/FinderPattern;)V

    return-object v14
.end method

.method protected final getImage()Lcom/google/zxing/common/BitMatrix;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    return-object v0
.end method

.method protected final getPossibleCenters()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/qrcode/detector/FinderPattern;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    return-object v0
.end method

.method protected final handlePossibleCenter([IIIZ)Z
    .registers 16
    .param p1, "stateCount"    # [I
    .param p2, "i"    # I
    .param p3, "j"    # I
    .param p4, "pureBarcode"    # Z

    .prologue
    .line 488
    const/4 v8, 0x0

    aget v8, p1, v8

    const/4 v9, 0x1

    aget v9, p1, v9

    add-int/2addr v8, v9

    const/4 v9, 0x2

    aget v9, p1, v9

    add-int/2addr v8, v9

    const/4 v9, 0x3

    aget v9, p1, v9

    add-int/2addr v8, v9

    const/4 v9, 0x4

    aget v9, p1, v9

    add-int v7, v8, v9

    .line 490
    .local v7, "stateCountTotal":I
    invoke-static {p1, p3}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->centerFromEnd([II)F

    move-result v2

    .line 491
    .local v2, "centerJ":F
    float-to-int v8, v2

    const/4 v9, 0x2

    aget v9, p1, v9

    invoke-direct {p0, p2, v8, v9, v7}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckVertical(IIII)F

    move-result v1

    .line 492
    .local v1, "centerI":F
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-nez v8, :cond_83

    .line 494
    float-to-int v8, v2

    float-to-int v9, v1

    const/4 v10, 0x2

    aget v10, p1, v10

    invoke-direct {p0, v8, v9, v10, v7}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckHorizontal(IIII)F

    move-result v2

    .line 495
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-nez v8, :cond_83

    if-eqz p4, :cond_42

    float-to-int v8, v1

    float-to-int v9, v2

    const/4 v10, 0x2

    aget v10, p1, v10

    invoke-direct {p0, v8, v9, v10, v7}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckDiagonal(IIII)Z

    move-result v8

    if-eqz v8, :cond_83

    .line 497
    :cond_42
    int-to-float v8, v7

    const/high16 v9, 0x40e00000

    div-float v3, v8, v9

    .line 498
    .local v3, "estimatedModuleSize":F
    const/4 v4, 0x0

    .line 499
    .local v4, "found":Z
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_49
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_69

    .line 500
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 502
    .local v0, "center":Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/zxing/qrcode/detector/FinderPattern;->aboutEquals(FFF)Z

    move-result v8

    if-eqz v8, :cond_80

    .line 503
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/zxing/qrcode/detector/FinderPattern;->combineEstimate(FFF)Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v9

    invoke-interface {v8, v5, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 504
    const/4 v4, 0x1

    .line 508
    .end local v0    # "center":Lcom/google/zxing/qrcode/detector/FinderPattern;
    :cond_69
    if-nez v4, :cond_7e

    .line 509
    new-instance v6, Lcom/google/zxing/qrcode/detector/FinderPattern;

    invoke-direct {v6, v2, v1, v3}, Lcom/google/zxing/qrcode/detector/FinderPattern;-><init>(FFF)V

    .line 510
    .local v6, "point":Lcom/google/zxing/qrcode/detector/FinderPattern;
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    if-eqz v8, :cond_7e

    .line 512
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    invoke-interface {v8, v6}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    .line 515
    .end local v6    # "point":Lcom/google/zxing/qrcode/detector/FinderPattern;
    :cond_7e
    const/4 v8, 0x1

    .line 518
    .end local v3    # "estimatedModuleSize":F
    .end local v4    # "found":Z
    .end local v5    # "index":I
    :goto_7f
    return v8

    .line 499
    .restart local v0    # "center":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .restart local v3    # "estimatedModuleSize":F
    .restart local v4    # "found":Z
    .restart local v5    # "index":I
    :cond_80
    add-int/lit8 v5, v5, 0x1

    goto :goto_49

    .line 518
    .end local v0    # "center":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .end local v3    # "estimatedModuleSize":F
    .end local v4    # "found":Z
    .end local v5    # "index":I
    :cond_83
    const/4 v8, 0x0

    goto :goto_7f
.end method
