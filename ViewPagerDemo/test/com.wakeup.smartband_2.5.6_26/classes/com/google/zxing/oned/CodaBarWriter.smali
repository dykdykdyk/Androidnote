.class public final Lcom/google/zxing/oned/CodaBarWriter;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "CodaBarWriter.java"


# static fields
.field private static final ALT_START_END_CHARS:[C

.field private static final CHARS_WHICH_ARE_TEN_LENGTH_EACH_AFTER_DECODED:[C

.field private static final START_END_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x4

    .line 28
    new-array v0, v1, [C

    fill-array-data v0, :array_18

    sput-object v0, Lcom/google/zxing/oned/CodaBarWriter;->START_END_CHARS:[C

    .line 29
    new-array v0, v1, [C

    fill-array-data v0, :array_20

    sput-object v0, Lcom/google/zxing/oned/CodaBarWriter;->ALT_START_END_CHARS:[C

    .line 30
    new-array v0, v1, [C

    fill-array-data v0, :array_28

    sput-object v0, Lcom/google/zxing/oned/CodaBarWriter;->CHARS_WHICH_ARE_TEN_LENGTH_EACH_AFTER_DECODED:[C

    return-void

    .line 28
    nop

    :array_18
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
    .end array-data

    .line 29
    :array_20
    .array-data 2
        0x54s
        0x4es
        0x2as
        0x45s
    .end array-data

    .line 30
    :array_28
    .array-data 2
        0x2fs
        0x3as
        0x2bs
        0x2es
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;)[Z
    .registers 20
    .param p1, "contents"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ge v15, v0, :cond_13

    .line 36
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v16, "Codabar should start/end with start/stop symbols"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 39
    :cond_13
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-static {v15}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    .line 40
    .local v6, "firstChar":C
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-static {v15}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v9

    .line 41
    .local v9, "lastChar":C
    sget-object v15, Lcom/google/zxing/oned/CodaBarWriter;->START_END_CHARS:[C

    invoke-static {v15, v6}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v15

    if-eqz v15, :cond_85

    sget-object v15, Lcom/google/zxing/oned/CodaBarWriter;->START_END_CHARS:[C

    invoke-static {v15, v9}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v15

    if-eqz v15, :cond_85

    const/4 v14, 0x1

    .line 44
    .local v14, "startsEndsNormal":Z
    :goto_3f
    sget-object v15, Lcom/google/zxing/oned/CodaBarWriter;->ALT_START_END_CHARS:[C

    invoke-static {v15, v6}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v15

    if-eqz v15, :cond_87

    sget-object v15, Lcom/google/zxing/oned/CodaBarWriter;->ALT_START_END_CHARS:[C

    invoke-static {v15, v9}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v15

    if-eqz v15, :cond_87

    const/4 v13, 0x1

    .line 47
    .local v13, "startsEndsAlt":Z
    :goto_50
    if-nez v14, :cond_89

    if-nez v13, :cond_89

    .line 48
    new-instance v15, Ljava/lang/IllegalArgumentException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Codabar should start/end with "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Lcom/google/zxing/oned/CodaBarWriter;->START_END_CHARS:[C

    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ", or start/end with "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Lcom/google/zxing/oned/CodaBarWriter;->ALT_START_END_CHARS:[C

    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 41
    .end local v13    # "startsEndsAlt":Z
    .end local v14    # "startsEndsNormal":Z
    :cond_85
    const/4 v14, 0x0

    goto :goto_3f

    .line 44
    .restart local v14    # "startsEndsNormal":Z
    :cond_87
    const/4 v13, 0x0

    goto :goto_50

    .line 54
    .restart local v13    # "startsEndsAlt":Z
    :cond_89
    const/16 v12, 0x14

    .line 55
    .local v12, "resultLength":I
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_8c
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-ge v7, v15, :cond_f4

    .line 56
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-static {v15}, Ljava/lang/Character;->isDigit(C)Z

    move-result v15

    if-nez v15, :cond_b8

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0x2d

    move/from16 v0, v16

    if-eq v15, v0, :cond_b8

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0x24

    move/from16 v0, v16

    if-ne v15, v0, :cond_bd

    .line 57
    :cond_b8
    add-int/lit8 v12, v12, 0x9

    .line 55
    :goto_ba
    add-int/lit8 v7, v7, 0x1

    goto :goto_8c

    .line 58
    :cond_bd
    sget-object v15, Lcom/google/zxing/oned/CodaBarWriter;->CHARS_WHICH_ARE_TEN_LENGTH_EACH_AFTER_DECODED:[C

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v16

    invoke-static/range {v15 .. v16}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v15

    if-eqz v15, :cond_ce

    .line 59
    add-int/lit8 v12, v12, 0xa

    goto :goto_ba

    .line 61
    :cond_ce
    new-instance v15, Ljava/lang/IllegalArgumentException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Cannot encode : \'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x27

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 65
    :cond_f4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    add-int/2addr v12, v15

    .line 67
    new-array v11, v12, [Z

    .line 68
    .local v11, "result":[Z
    const/4 v10, 0x0

    .line 69
    .local v10, "position":I
    const/4 v8, 0x0

    .local v8, "index":I
    :goto_ff
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v8, v15, :cond_16d

    .line 70
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-static {v15}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    .line 71
    .local v2, "c":C
    if-eqz v8, :cond_119

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-ne v8, v15, :cond_11c

    .line 73
    :cond_119
    sparse-switch v2, :sswitch_data_16e

    .line 88
    :cond_11c
    :goto_11c
    const/4 v3, 0x0

    .line 89
    .local v3, "code":I
    const/4 v7, 0x0

    :goto_11e
    sget-object v15, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    array-length v15, v15

    if-ge v7, v15, :cond_12d

    .line 91
    sget-object v15, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    aget-char v15, v15, v7

    if-ne v2, v15, :cond_155

    .line 92
    sget-object v15, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    aget v3, v15, v7

    .line 96
    :cond_12d
    const/4 v4, 0x1

    .line 97
    .local v4, "color":Z
    const/4 v5, 0x0

    .line 98
    .local v5, "counter":I
    const/4 v1, 0x0

    .line 99
    .local v1, "bit":I
    :goto_130
    const/4 v15, 0x7

    if-ge v1, v15, :cond_15d

    .line 100
    aput-boolean v4, v11, v10

    .line 101
    add-int/lit8 v10, v10, 0x1

    .line 102
    rsub-int/lit8 v15, v1, 0x6

    shr-int v15, v3, v15

    and-int/lit8 v15, v15, 0x1

    if-eqz v15, :cond_142

    const/4 v15, 0x1

    if-ne v5, v15, :cond_15a

    .line 103
    :cond_142
    if-nez v4, :cond_158

    const/4 v4, 0x1

    .line 104
    :goto_145
    add-int/lit8 v1, v1, 0x1

    .line 105
    const/4 v5, 0x0

    goto :goto_130

    .line 75
    .end local v1    # "bit":I
    .end local v3    # "code":I
    .end local v4    # "color":Z
    .end local v5    # "counter":I
    :sswitch_149
    const/16 v2, 0x41

    .line 76
    goto :goto_11c

    .line 78
    :sswitch_14c
    const/16 v2, 0x42

    .line 79
    goto :goto_11c

    .line 81
    :sswitch_14f
    const/16 v2, 0x43

    .line 82
    goto :goto_11c

    .line 84
    :sswitch_152
    const/16 v2, 0x44

    goto :goto_11c

    .line 89
    .restart local v3    # "code":I
    :cond_155
    add-int/lit8 v7, v7, 0x1

    goto :goto_11e

    .line 103
    .restart local v1    # "bit":I
    .restart local v4    # "color":Z
    .restart local v5    # "counter":I
    :cond_158
    const/4 v4, 0x0

    goto :goto_145

    .line 107
    :cond_15a
    add-int/lit8 v5, v5, 0x1

    goto :goto_130

    .line 110
    :cond_15d
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-ge v8, v15, :cond_16a

    .line 111
    const/4 v15, 0x0

    aput-boolean v15, v11, v10

    .line 112
    add-int/lit8 v10, v10, 0x1

    .line 69
    :cond_16a
    add-int/lit8 v8, v8, 0x1

    goto :goto_ff

    .line 115
    .end local v1    # "bit":I
    .end local v2    # "c":C
    .end local v3    # "code":I
    .end local v4    # "color":Z
    .end local v5    # "counter":I
    :cond_16d
    return-object v11

    .line 73
    :sswitch_data_16e
    .sparse-switch
        0x2a -> :sswitch_14f
        0x45 -> :sswitch_152
        0x4e -> :sswitch_14c
        0x54 -> :sswitch_149
    .end sparse-switch
.end method
