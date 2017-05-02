.class public abstract Lcom/google/zxing/oned/rss/AbstractRSSReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "AbstractRSSReader.java"


# static fields
.field private static final MAX_AVG_VARIANCE:F = 0.2f

.field private static final MAX_FINDER_PATTERN_RATIO:F = 0.89285713f

.field private static final MAX_INDIVIDUAL_VARIANCE:F = 0.45f

.field private static final MIN_FINDER_PATTERN_RATIO:F = 0.7916667f


# instance fields
.field private final dataCharacterCounters:[I

.field private final decodeFinderCounters:[I

.field private final evenCounts:[I

.field private final evenRoundingErrors:[F

.field private final oddCounts:[I

.field private final oddRoundingErrors:[F


# direct methods
.method protected constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x4

    .line 37
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 38
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->decodeFinderCounters:[I

    .line 39
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->dataCharacterCounters:[I

    .line 40
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->oddRoundingErrors:[F

    .line 41
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->evenRoundingErrors:[F

    .line 42
    iget-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->dataCharacterCounters:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->oddCounts:[I

    .line 43
    iget-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->dataCharacterCounters:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->evenCounts:[I

    .line 44
    return-void
.end method

.method protected static count([I)I
    .registers 6
    .param p0, "array"    # [I

    .prologue
    .line 82
    const/4 v2, 0x0

    .line 83
    .local v2, "count":I
    move-object v1, p0

    .local v1, "arr$":[I
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_4
    if-ge v3, v4, :cond_c

    aget v0, v1, v3

    .line 84
    .local v0, "a":I
    add-int/2addr v2, v0

    .line 83
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 86
    .end local v0    # "a":I
    :cond_c
    return v2
.end method

.method protected static decrement([I[F)V
    .registers 6
    .param p0, "array"    # [I
    .param p1, "errors"    # [F

    .prologue
    .line 102
    const/4 v2, 0x0

    .line 103
    .local v2, "index":I
    const/4 v3, 0x0

    aget v0, p1, v3

    .line 104
    .local v0, "biggestError":F
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_5
    array-length v3, p0

    if-ge v1, v3, :cond_14

    .line 105
    aget v3, p1, v1

    cmpg-float v3, v3, v0

    if-gez v3, :cond_11

    .line 106
    aget v0, p1, v1

    .line 107
    move v2, v1

    .line 104
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 110
    :cond_14
    aget v3, p0, v2

    add-int/lit8 v3, v3, -0x1

    aput v3, p0, v2

    .line 111
    return-void
.end method

.method protected static increment([I[F)V
    .registers 6
    .param p0, "array"    # [I
    .param p1, "errors"    # [F

    .prologue
    .line 90
    const/4 v2, 0x0

    .line 91
    .local v2, "index":I
    const/4 v3, 0x0

    aget v0, p1, v3

    .line 92
    .local v0, "biggestError":F
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_5
    array-length v3, p0

    if-ge v1, v3, :cond_14

    .line 93
    aget v3, p1, v1

    cmpl-float v3, v3, v0

    if-lez v3, :cond_11

    .line 94
    aget v0, p1, v1

    .line 95
    move v2, v1

    .line 92
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 98
    :cond_14
    aget v3, p0, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, p0, v2

    .line 99
    return-void
.end method

.method protected static isFinderPattern([I)Z
    .registers 14
    .param p0, "counters"    # [I

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 114
    aget v11, p0, v10

    aget v12, p0, v9

    add-int v2, v11, v12

    .line 115
    .local v2, "firstTwoSum":I
    const/4 v11, 0x2

    aget v11, p0, v11

    add-int/2addr v11, v2

    const/4 v12, 0x3

    aget v12, p0, v12

    add-int v8, v11, v12

    .line 116
    .local v8, "sum":I
    int-to-float v11, v2

    int-to-float v12, v8

    div-float v7, v11, v12

    .line 117
    .local v7, "ratio":F
    const v11, 0x3f4aaaab

    cmpl-float v11, v7, v11

    if-ltz v11, :cond_3f

    const v11, 0x3f649249

    cmpg-float v11, v7, v11

    if-gtz v11, :cond_3f

    .line 119
    const v6, 0x7fffffff

    .line 120
    .local v6, "minCounter":I
    const/high16 v5, -0x80000000

    .line 121
    .local v5, "maxCounter":I
    move-object v0, p0

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_2b
    if-ge v3, v4, :cond_38

    aget v1, v0, v3

    .line 122
    .local v1, "counter":I
    if-le v1, v5, :cond_32

    .line 123
    move v5, v1

    .line 125
    :cond_32
    if-ge v1, v6, :cond_35

    .line 126
    move v6, v1

    .line 121
    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 129
    .end local v1    # "counter":I
    :cond_38
    mul-int/lit8 v11, v6, 0xa

    if-ge v5, v11, :cond_3d

    .line 131
    .end local v0    # "arr$":[I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "maxCounter":I
    .end local v6    # "minCounter":I
    :goto_3c
    return v9

    .restart local v0    # "arr$":[I
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "maxCounter":I
    .restart local v6    # "minCounter":I
    :cond_3d
    move v9, v10

    .line 129
    goto :goto_3c

    .end local v0    # "arr$":[I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "maxCounter":I
    .end local v6    # "minCounter":I
    :cond_3f
    move v9, v10

    .line 131
    goto :goto_3c
.end method

.method protected static parseFinderValue([I[[I)I
    .registers 5
    .param p0, "counters"    # [I
    .param p1, "finderPatterns"    # [[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 72
    const/4 v0, 0x0

    .local v0, "value":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_18

    .line 73
    aget-object v1, p1, v0

    const v2, 0x3ee66666

    invoke-static {p0, v1, v2}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->patternMatchVariance([I[IF)F

    move-result v1

    const v2, 0x3e4ccccd

    cmpg-float v1, v1, v2

    if-gez v1, :cond_15

    .line 75
    return v0

    .line 72
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 78
    :cond_18
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method protected final getDataCharacterCounters()[I
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->dataCharacterCounters:[I

    return-object v0
.end method

.method protected final getDecodeFinderCounters()[I
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->decodeFinderCounters:[I

    return-object v0
.end method

.method protected final getEvenCounts()[I
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->evenCounts:[I

    return-object v0
.end method

.method protected final getEvenRoundingErrors()[F
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->evenRoundingErrors:[F

    return-object v0
.end method

.method protected final getOddCounts()[I
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->oddCounts:[I

    return-object v0
.end method

.method protected final getOddRoundingErrors()[F
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->oddRoundingErrors:[F

    return-object v0
.end method
