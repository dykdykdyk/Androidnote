.class public final Lcom/google/zxing/oned/Code93Reader;
.super Lcom/google/zxing/oned/OneDReader;
.source "Code93Reader.java"


# static fields
.field private static final ALPHABET:[C

.field private static final ALPHABET_STRING:Ljava/lang/String; = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

.field private static final ASTERISK_ENCODING:I

.field private static final CHARACTER_ENCODINGS:[I


# instance fields
.field private final counters:[I

.field private final decodeRowResult:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 41
    const-string/jumbo v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/oned/Code93Reader;->ALPHABET:[C

    .line 47
    const/16 v0, 0x30

    new-array v0, v0, [I

    fill-array-data v0, :array_1c

    sput-object v0, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    .line 55
    sget-object v0, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    const/16 v1, 0x2f

    aget v0, v0, v1

    sput v0, Lcom/google/zxing/oned/Code93Reader;->ASTERISK_ENCODING:I

    return-void

    .line 47
    nop

    :array_1c
    .array-data 4
        0x114
        0x148
        0x144
        0x142
        0x128
        0x124
        0x122
        0x150
        0x112
        0x10a
        0x1a8
        0x1a4
        0x1a2
        0x194
        0x192
        0x18a
        0x168
        0x164
        0x162
        0x134
        0x11a
        0x158
        0x14c
        0x146
        0x12c
        0x116
        0x1b4
        0x1b2
        0x1ac
        0x1a6
        0x196
        0x19a
        0x16c
        0x166
        0x136
        0x13a
        0x12e
        0x1d4
        0x1d2
        0x1ca
        0x16e
        0x176
        0x1ae
        0x126
        0x1da
        0x1d6
        0x132
        0x15e
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/oned/Code93Reader;->decodeRowResult:Ljava/lang/StringBuilder;

    .line 62
    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/Code93Reader;->counters:[I

    .line 63
    return-void
.end method

.method private static checkChecksums(Ljava/lang/CharSequence;)V
    .registers 4
    .param p0, "result"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 257
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 258
    .local v0, "length":I
    add-int/lit8 v1, v0, -0x2

    const/16 v2, 0x14

    invoke-static {p0, v1, v2}, Lcom/google/zxing/oned/Code93Reader;->checkOneChecksum(Ljava/lang/CharSequence;II)V

    .line 259
    add-int/lit8 v1, v0, -0x1

    const/16 v2, 0xf

    invoke-static {p0, v1, v2}, Lcom/google/zxing/oned/Code93Reader;->checkOneChecksum(Ljava/lang/CharSequence;II)V

    .line 260
    return-void
.end method

.method private static checkOneChecksum(Ljava/lang/CharSequence;II)V
    .registers 9
    .param p0, "result"    # Ljava/lang/CharSequence;
    .param p1, "checkPosition"    # I
    .param p2, "weightMax"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 264
    const/4 v2, 0x1

    .line 265
    .local v2, "weight":I
    const/4 v1, 0x0

    .line 266
    .local v1, "total":I
    add-int/lit8 v0, p1, -0x1

    .local v0, "i":I
    :goto_4
    if-ltz v0, :cond_1b

    .line 267
    const-string/jumbo v3, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    mul-int/2addr v3, v2

    add-int/2addr v1, v3

    .line 268
    add-int/lit8 v2, v2, 0x1

    if-le v2, p2, :cond_18

    .line 269
    const/4 v2, 0x1

    .line 266
    :cond_18
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 272
    :cond_1b
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    sget-object v4, Lcom/google/zxing/oned/Code93Reader;->ALPHABET:[C

    rem-int/lit8 v5, v1, 0x2f

    aget-char v4, v4, v5

    if-eq v3, v4, :cond_2c

    .line 273
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v3

    throw v3

    .line 275
    :cond_2c
    return-void
.end method

.method private static decodeExtended(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 10
    .param p0, "encoded"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x5a

    const/16 v7, 0x41

    .line 198
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 199
    .local v4, "length":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 200
    .local v1, "decoded":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e
    if-ge v3, v4, :cond_84

    .line 201
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 202
    .local v0, "c":C
    const/16 v6, 0x61

    if-lt v0, v6, :cond_80

    const/16 v6, 0x64

    if-gt v0, v6, :cond_80

    .line 203
    add-int/lit8 v6, v4, -0x1

    if-lt v3, v6, :cond_25

    .line 204
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 206
    :cond_25
    add-int/lit8 v6, v3, 0x1

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 207
    .local v5, "next":C
    const/4 v2, 0x0

    .line 208
    .local v2, "decodedChar":C
    packed-switch v0, :pswitch_data_8a

    .line 246
    :goto_2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 248
    add-int/lit8 v3, v3, 0x1

    .line 200
    .end local v2    # "decodedChar":C
    .end local v5    # "next":C
    :goto_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 211
    .restart local v2    # "decodedChar":C
    .restart local v5    # "next":C
    :pswitch_37
    if-lt v5, v7, :cond_3f

    if-gt v5, v8, :cond_3f

    .line 212
    add-int/lit8 v6, v5, 0x20

    int-to-char v2, v6

    goto :goto_2f

    .line 214
    :cond_3f
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 219
    :pswitch_44
    if-lt v5, v7, :cond_4c

    if-gt v5, v8, :cond_4c

    .line 220
    add-int/lit8 v6, v5, -0x40

    int-to-char v2, v6

    goto :goto_2f

    .line 222
    :cond_4c
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 227
    :pswitch_51
    if-lt v5, v7, :cond_5b

    const/16 v6, 0x45

    if-gt v5, v6, :cond_5b

    .line 228
    add-int/lit8 v6, v5, -0x26

    int-to-char v2, v6

    goto :goto_2f

    .line 229
    :cond_5b
    const/16 v6, 0x46

    if-lt v5, v6, :cond_67

    const/16 v6, 0x57

    if-gt v5, v6, :cond_67

    .line 230
    add-int/lit8 v6, v5, -0xb

    int-to-char v2, v6

    goto :goto_2f

    .line 232
    :cond_67
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 237
    :pswitch_6c
    if-lt v5, v7, :cond_76

    const/16 v6, 0x4f

    if-gt v5, v6, :cond_76

    .line 238
    add-int/lit8 v6, v5, -0x20

    int-to-char v2, v6

    goto :goto_2f

    .line 239
    :cond_76
    if-ne v5, v8, :cond_7b

    .line 240
    const/16 v2, 0x3a

    goto :goto_2f

    .line 242
    :cond_7b
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 250
    .end local v2    # "decodedChar":C
    .end local v5    # "next":C
    :cond_80
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_34

    .line 253
    .end local v0    # "c":C
    :cond_84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 208
    nop

    :pswitch_data_8a
    .packed-switch 0x61
        :pswitch_44
        :pswitch_51
        :pswitch_6c
        :pswitch_37
    .end packed-switch
.end method

.method private findAsteriskPattern(Lcom/google/zxing/common/BitArray;)[I
    .registers 15
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 132
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v7

    .line 133
    .local v7, "width":I
    invoke-virtual {p1, v9}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v5

    .line 135
    .local v5, "rowOffset":I
    iget-object v10, p0, Lcom/google/zxing/oned/Code93Reader;->counters:[I

    invoke-static {v10, v9}, Ljava/util/Arrays;->fill([II)V

    .line 136
    iget-object v6, p0, Lcom/google/zxing/oned/Code93Reader;->counters:[I

    .line 137
    .local v6, "theCounters":[I
    move v4, v5

    .line 138
    .local v4, "patternStart":I
    const/4 v2, 0x0

    .line 139
    .local v2, "isWhite":Z
    array-length v3, v6

    .line 141
    .local v3, "patternLength":I
    const/4 v0, 0x0

    .line 142
    .local v0, "counterPosition":I
    move v1, v5

    .local v1, "i":I
    :goto_17
    if-ge v1, v7, :cond_5c

    .line 143
    invoke-virtual {p1, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v10

    xor-int/2addr v10, v2

    if-eqz v10, :cond_29

    .line 144
    aget v10, v6, v0

    add-int/lit8 v10, v10, 0x1

    aput v10, v6, v0

    .line 142
    :goto_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 146
    :cond_29
    add-int/lit8 v10, v3, -0x1

    if-ne v0, v10, :cond_57

    .line 147
    invoke-static {v6}, Lcom/google/zxing/oned/Code93Reader;->toPattern([I)I

    move-result v10

    sget v11, Lcom/google/zxing/oned/Code93Reader;->ASTERISK_ENCODING:I

    if-ne v10, v11, :cond_3c

    .line 148
    new-array v10, v12, [I

    aput v4, v10, v9

    aput v1, v10, v8

    return-object v10

    .line 150
    :cond_3c
    aget v10, v6, v9

    aget v11, v6, v8

    add-int/2addr v10, v11

    add-int/2addr v4, v10

    .line 151
    add-int/lit8 v10, v3, -0x2

    invoke-static {v6, v12, v6, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    add-int/lit8 v10, v3, -0x2

    aput v9, v6, v10

    .line 153
    add-int/lit8 v10, v3, -0x1

    aput v9, v6, v10

    .line 154
    add-int/lit8 v0, v0, -0x1

    .line 158
    :goto_51
    aput v8, v6, v0

    .line 159
    if-nez v2, :cond_5a

    move v2, v8

    :goto_56
    goto :goto_26

    .line 156
    :cond_57
    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    :cond_5a
    move v2, v9

    .line 159
    goto :goto_56

    .line 162
    :cond_5c
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v8

    throw v8
.end method

.method private static patternToChar(I)C
    .registers 3
    .param p0, "pattern"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 189
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_14

    .line 190
    sget-object v1, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    aget v1, v1, v0

    if-ne v1, p0, :cond_11

    .line 191
    sget-object v1, Lcom/google/zxing/oned/Code93Reader;->ALPHABET:[C

    aget-char v1, v1, v0

    return v1

    .line 189
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 194
    :cond_14
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1
.end method

.method private static toPattern([I)I
    .registers 13
    .param p0, "counters"    # [I

    .prologue
    .line 166
    array-length v6, p0

    .line 167
    .local v6, "max":I
    const/4 v9, 0x0

    .line 168
    .local v9, "sum":I
    move-object v0, p0

    .local v0, "arr$":[I
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_5
    if-ge v3, v5, :cond_d

    aget v1, v0, v3

    .line 169
    .local v1, "counter":I
    add-int/2addr v9, v1

    .line 168
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 171
    .end local v1    # "counter":I
    :cond_d
    const/4 v7, 0x0

    .line 172
    .local v7, "pattern":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v6, :cond_24

    .line 173
    aget v10, p0, v2

    int-to-float v10, v10

    const/high16 v11, 0x41100000

    mul-float/2addr v10, v11

    int-to-float v11, v9

    div-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 174
    .local v8, "scaled":I
    const/4 v10, 0x1

    if-lt v8, v10, :cond_23

    const/4 v10, 0x4

    if-le v8, v10, :cond_25

    .line 175
    :cond_23
    const/4 v7, -0x1

    .line 185
    .end local v7    # "pattern":I
    .end local v8    # "scaled":I
    :cond_24
    return v7

    .line 177
    .restart local v7    # "pattern":I
    .restart local v8    # "scaled":I
    :cond_25
    and-int/lit8 v10, v2, 0x1

    if-nez v10, :cond_33

    .line 178
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2a
    if-ge v4, v8, :cond_34

    .line 179
    shl-int/lit8 v10, v7, 0x1

    or-int/lit8 v7, v10, 0x1

    .line 178
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    .line 182
    .end local v4    # "j":I
    :cond_33
    shl-int/2addr v7, v8

    .line 172
    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_f
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .registers 31
    .param p1, "rowNumber"    # I
    .param p2, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 69
    .local p3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/zxing/oned/Code93Reader;->findAsteriskPattern(Lcom/google/zxing/common/BitArray;)[I

    move-result-object v19

    .line 71
    .local v19, "start":[I
    const/16 v21, 0x1

    aget v21, v19, v21

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v14

    .line 72
    .local v14, "nextStart":I
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v8

    .line 74
    .local v8, "end":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/oned/Code93Reader;->counters:[I

    move-object/from16 v20, v0

    .line 75
    .local v20, "theCounters":[I
    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Ljava/util/Arrays;->fill([II)V

    .line 76
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/oned/Code93Reader;->decodeRowResult:Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    .line 77
    .local v16, "result":Ljava/lang/StringBuilder;
    const/16 v21, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 82
    :cond_32
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-static {v0, v14, v1}, Lcom/google/zxing/oned/Code93Reader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 83
    invoke-static/range {v20 .. v20}, Lcom/google/zxing/oned/Code93Reader;->toPattern([I)I

    move-result v15

    .line 84
    .local v15, "pattern":I
    if-gez v15, :cond_44

    .line 85
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v21

    throw v21

    .line 87
    :cond_44
    invoke-static {v15}, Lcom/google/zxing/oned/Code93Reader;->patternToChar(I)C

    move-result v7

    .line 88
    .local v7, "decodedChar":C
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    move v11, v14

    .line 90
    .local v11, "lastStart":I
    move-object/from16 v5, v20

    .local v5, "arr$":[I
    array-length v13, v5

    .local v13, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_52
    if-ge v9, v13, :cond_5a

    aget v6, v5, v9

    .line 91
    .local v6, "counter":I
    add-int/2addr v14, v6

    .line 90
    add-int/lit8 v9, v9, 0x1

    goto :goto_52

    .line 94
    .end local v6    # "counter":I
    :cond_5a
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v14

    .line 95
    const/16 v21, 0x2a

    move/from16 v0, v21

    if-ne v7, v0, :cond_32

    .line 96
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 98
    const/4 v10, 0x0

    .line 99
    .local v10, "lastPatternSize":I
    move-object/from16 v5, v20

    array-length v13, v5

    const/4 v9, 0x0

    :goto_78
    if-ge v9, v13, :cond_80

    aget v6, v5, v9

    .line 100
    .restart local v6    # "counter":I
    add-int/2addr v10, v6

    .line 99
    add-int/lit8 v9, v9, 0x1

    goto :goto_78

    .line 104
    .end local v6    # "counter":I
    :cond_80
    if-eq v14, v8, :cond_8a

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v21

    if-nez v21, :cond_8f

    .line 105
    :cond_8a
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v21

    throw v21

    .line 108
    :cond_8f
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_a0

    .line 110
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v21

    throw v21

    .line 113
    :cond_a0
    invoke-static/range {v16 .. v16}, Lcom/google/zxing/oned/Code93Reader;->checkChecksums(Ljava/lang/CharSequence;)V

    .line 115
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x2

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 117
    invoke-static/range {v16 .. v16}, Lcom/google/zxing/oned/Code93Reader;->decodeExtended(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    .line 119
    .local v17, "resultString":Ljava/lang/String;
    const/16 v21, 0x1

    aget v21, v19, v21

    const/16 v22, 0x0

    aget v22, v19, v22

    add-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x40000000

    div-float v12, v21, v22

    .line 120
    .local v12, "left":F
    int-to-float v0, v11

    move/from16 v21, v0

    int-to-float v0, v10

    move/from16 v22, v0

    const/high16 v23, 0x40000000

    div-float v22, v22, v23

    add-float v18, v21, v22

    .line 121
    .local v18, "right":F
    new-instance v21, Lcom/google/zxing/Result;

    const/16 v22, 0x0

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    new-instance v25, Lcom/google/zxing/ResultPoint;

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-direct {v0, v12, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v25, v23, v24

    const/16 v24, 0x1

    new-instance v25, Lcom/google/zxing/ResultPoint;

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, v25

    move/from16 v1, v18

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v25, v23, v24

    sget-object v24, Lcom/google/zxing/BarcodeFormat;->CODE_93:Lcom/google/zxing/BarcodeFormat;

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object v21
.end method
