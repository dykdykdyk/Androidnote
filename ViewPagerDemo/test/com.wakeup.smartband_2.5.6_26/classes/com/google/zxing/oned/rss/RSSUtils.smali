.class public final Lcom/google/zxing/oned/rss/RSSUtils;
.super Ljava/lang/Object;
.source "RSSUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static combins(II)I
    .registers 8
    .param p0, "n"    # I
    .param p1, "r"    # I

    .prologue
    .line 106
    sub-int v5, p0, p1

    if-le v5, p1, :cond_15

    .line 107
    move v3, p1

    .line 108
    .local v3, "minDenom":I
    sub-int v2, p0, p1

    .line 113
    .local v2, "maxDenom":I
    :goto_7
    const/4 v4, 0x1

    .line 114
    .local v4, "val":I
    const/4 v1, 0x1

    .line 115
    .local v1, "j":I
    move v0, p0

    .local v0, "i":I
    :goto_a
    if-le v0, v2, :cond_19

    .line 116
    mul-int/2addr v4, v0

    .line 117
    if-gt v1, v3, :cond_12

    .line 118
    div-int/2addr v4, v1

    .line 119
    add-int/lit8 v1, v1, 0x1

    .line 115
    :cond_12
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 110
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "maxDenom":I
    .end local v3    # "minDenom":I
    .end local v4    # "val":I
    :cond_15
    sub-int v3, p0, p1

    .line 111
    .restart local v3    # "minDenom":I
    move v2, p1

    .restart local v2    # "maxDenom":I
    goto :goto_7

    .line 122
    .restart local v0    # "i":I
    .restart local v1    # "j":I
    .restart local v4    # "val":I
    :cond_19
    :goto_19
    if-gt v1, v3, :cond_1f

    .line 123
    div-int/2addr v4, v1

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 126
    :cond_1f
    return v4
.end method

.method public static getRSSvalue([IIZ)I
    .registers 19
    .param p0, "widths"    # [I
    .param p1, "maxWidth"    # I
    .param p2, "noNarrow"    # Z

    .prologue
    .line 67
    move-object/from16 v0, p0

    array-length v3, v0

    .line 68
    .local v3, "elements":I
    const/4 v9, 0x0

    .line 69
    .local v9, "n":I
    move-object/from16 v1, p0

    .local v1, "arr$":[I
    array-length v6, v1

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_8
    if-ge v5, v6, :cond_10

    aget v13, v1, v5

    .line 70
    .local v13, "width":I
    add-int/2addr v9, v13

    .line 69
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 72
    .end local v13    # "width":I
    :cond_10
    const/4 v12, 0x0

    .line 73
    .local v12, "val":I
    const/4 v10, 0x0

    .line 74
    .local v10, "narrowMask":I
    const/4 v2, 0x0

    .local v2, "bar":I
    :goto_13
    add-int/lit8 v14, v3, -0x1

    if-ge v2, v14, :cond_8a

    .line 76
    const/4 v4, 0x1

    .local v4, "elmWidth":I
    const/4 v14, 0x1

    shl-int/2addr v14, v2

    or-int/2addr v10, v14

    .line 77
    :goto_1b
    aget v14, p0, v2

    if-ge v4, v14, :cond_86

    .line 79
    sub-int v14, v9, v4

    add-int/lit8 v14, v14, -0x1

    sub-int v15, v3, v2

    add-int/lit8 v15, v15, -0x2

    invoke-static {v14, v15}, Lcom/google/zxing/oned/rss/RSSUtils;->combins(II)I

    move-result v11

    .line 80
    .local v11, "subVal":I
    if-eqz p2, :cond_4a

    if-nez v10, :cond_4a

    sub-int v14, v9, v4

    sub-int v15, v3, v2

    add-int/lit8 v15, v15, -0x1

    sub-int/2addr v14, v15

    sub-int v15, v3, v2

    add-int/lit8 v15, v15, -0x1

    if-lt v14, v15, :cond_4a

    .line 82
    sub-int v14, v9, v4

    sub-int v15, v3, v2

    sub-int/2addr v14, v15

    sub-int v15, v3, v2

    add-int/lit8 v15, v15, -0x2

    invoke-static {v14, v15}, Lcom/google/zxing/oned/rss/RSSUtils;->combins(II)I

    move-result v14

    sub-int/2addr v11, v14

    .line 85
    :cond_4a
    sub-int v14, v3, v2

    add-int/lit8 v14, v14, -0x1

    const/4 v15, 0x1

    if-le v14, v15, :cond_7d

    .line 86
    const/4 v7, 0x0

    .line 87
    .local v7, "lessVal":I
    sub-int v14, v9, v4

    sub-int v15, v3, v2

    add-int/lit8 v15, v15, -0x2

    sub-int v8, v14, v15

    .line 88
    .local v8, "mxwElement":I
    :goto_5a
    move/from16 v0, p1

    if-le v8, v0, :cond_6f

    .line 89
    sub-int v14, v9, v4

    sub-int/2addr v14, v8

    add-int/lit8 v14, v14, -0x1

    sub-int v15, v3, v2

    add-int/lit8 v15, v15, -0x3

    invoke-static {v14, v15}, Lcom/google/zxing/oned/rss/RSSUtils;->combins(II)I

    move-result v14

    add-int/2addr v7, v14

    .line 88
    add-int/lit8 v8, v8, -0x1

    goto :goto_5a

    .line 92
    :cond_6f
    add-int/lit8 v14, v3, -0x1

    sub-int/2addr v14, v2

    mul-int/2addr v14, v7

    sub-int/2addr v11, v14

    .line 96
    .end local v7    # "lessVal":I
    .end local v8    # "mxwElement":I
    :cond_74
    :goto_74
    add-int/2addr v12, v11

    .line 78
    add-int/lit8 v4, v4, 0x1

    const/4 v14, 0x1

    shl-int/2addr v14, v2

    xor-int/lit8 v14, v14, -0x1

    and-int/2addr v10, v14

    goto :goto_1b

    .line 93
    :cond_7d
    sub-int v14, v9, v4

    move/from16 v0, p1

    if-le v14, v0, :cond_74

    .line 94
    add-int/lit8 v11, v11, -0x1

    goto :goto_74

    .line 98
    .end local v11    # "subVal":I
    :cond_86
    sub-int/2addr v9, v4

    .line 74
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 100
    .end local v4    # "elmWidth":I
    :cond_8a
    return v12
.end method
