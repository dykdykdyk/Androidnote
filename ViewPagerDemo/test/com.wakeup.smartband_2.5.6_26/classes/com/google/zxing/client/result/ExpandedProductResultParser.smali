.class public final Lcom/google/zxing/client/result/ExpandedProductResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "ExpandedProductResultParser.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method

.method private static findAIvalue(ILjava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "i"    # I
    .param p1, "rawText"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 176
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 178
    .local v1, "c":C
    const/16 v6, 0x28

    if-eq v1, v6, :cond_a

    .line 195
    :cond_9
    :goto_9
    return-object v5

    .line 182
    :cond_a
    add-int/lit8 v6, p0, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 184
    .local v4, "rawTextAux":Ljava/lang/CharSequence;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_16
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v3, v6, :cond_37

    .line 186
    invoke-interface {v4, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 187
    .local v2, "currentChar":C
    const/16 v6, 0x29

    if-ne v2, v6, :cond_29

    .line 188
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_9

    .line 189
    :cond_29
    const/16 v6, 0x30

    if-lt v2, v6, :cond_9

    const/16 v6, 0x39

    if-gt v2, v6, :cond_9

    .line 190
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 185
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 195
    .end local v2    # "currentChar":C
    :cond_37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_9
.end method

.method private static findValue(ILjava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "i"    # I
    .param p1, "rawText"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x28

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 202
    .local v3, "rawTextAux":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_c
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_28

    .line 203
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 204
    .local v1, "c":C
    if-ne v1, v5, :cond_24

    .line 207
    invoke-static {v2, v3}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->findAIvalue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_28

    .line 208
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 202
    :goto_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 213
    :cond_24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_21

    .line 216
    .end local v1    # "c":C
    :cond_28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ExpandedProductParsedResult;
    .registers 26
    .param p1, "result"    # Lcom/google/zxing/Result;

    .prologue
    .line 45
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v20

    .line 46
    .local v20, "format":Lcom/google/zxing/BarcodeFormat;
    sget-object v3, Lcom/google/zxing/BarcodeFormat;->RSS_EXPANDED:Lcom/google/zxing/BarcodeFormat;

    move-object/from16 v0, v20

    if-eq v0, v3, :cond_c

    .line 48
    const/4 v3, 0x0

    .line 158
    :goto_b
    return-object v3

    .line 50
    :cond_c
    invoke-static/range {p1 .. p1}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v4

    .line 52
    .local v4, "rawText":Ljava/lang/String;
    const/4 v5, 0x0

    .line 53
    .local v5, "productID":Ljava/lang/String;
    const/4 v6, 0x0

    .line 54
    .local v6, "sscc":Ljava/lang/String;
    const/4 v7, 0x0

    .line 55
    .local v7, "lotNumber":Ljava/lang/String;
    const/4 v8, 0x0

    .line 56
    .local v8, "productionDate":Ljava/lang/String;
    const/4 v9, 0x0

    .line 57
    .local v9, "packagingDate":Ljava/lang/String;
    const/4 v10, 0x0

    .line 58
    .local v10, "bestBeforeDate":Ljava/lang/String;
    const/4 v11, 0x0

    .line 59
    .local v11, "expirationDate":Ljava/lang/String;
    const/4 v12, 0x0

    .line 60
    .local v12, "weight":Ljava/lang/String;
    const/4 v13, 0x0

    .line 61
    .local v13, "weightType":Ljava/lang/String;
    const/4 v14, 0x0

    .line 62
    .local v14, "weightIncrement":Ljava/lang/String;
    const/4 v15, 0x0

    .line 63
    .local v15, "price":Ljava/lang/String;
    const/16 v16, 0x0

    .line 64
    .local v16, "priceIncrement":Ljava/lang/String;
    const/16 v17, 0x0

    .line 65
    .local v17, "priceCurrency":Ljava/lang/String;
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 67
    .local v18, "uncommonAIs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v21, 0x0

    .line 69
    .local v21, "i":I
    :goto_26
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, v21

    if-ge v0, v3, :cond_310

    .line 70
    move/from16 v0, v21

    invoke-static {v0, v4}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->findAIvalue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 71
    .local v19, "ai":Ljava/lang/String;
    if-nez v19, :cond_38

    .line 74
    const/4 v3, 0x0

    goto :goto_b

    .line 76
    :cond_38
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    add-int v21, v21, v3

    .line 77
    move/from16 v0, v21

    invoke-static {v0, v4}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->findValue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 78
    .local v22, "value":Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v3

    add-int v21, v21, v3

    .line 80
    const/4 v3, -0x1

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->hashCode()I

    move-result v23

    sparse-switch v23, :sswitch_data_318

    :cond_54
    :goto_54
    packed-switch v3, :pswitch_data_3a6

    .line 153
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_26

    .line 80
    :sswitch_61
    const-string/jumbo v23, "00"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_54

    const/4 v3, 0x0

    goto :goto_54

    :sswitch_70
    const-string/jumbo v23, "01"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_54

    const/4 v3, 0x1

    goto :goto_54

    :sswitch_7f
    const-string/jumbo v23, "10"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_54

    const/4 v3, 0x2

    goto :goto_54

    :sswitch_8e
    const-string/jumbo v23, "11"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_54

    const/4 v3, 0x3

    goto :goto_54

    :sswitch_9d
    const-string/jumbo v23, "13"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_54

    const/4 v3, 0x4

    goto :goto_54

    :sswitch_ac
    const-string/jumbo v23, "15"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_54

    const/4 v3, 0x5

    goto :goto_54

    :sswitch_bb
    const-string/jumbo v23, "17"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_54

    const/4 v3, 0x6

    goto :goto_54

    :sswitch_ca
    const-string/jumbo v23, "3100"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_54

    const/4 v3, 0x7

    goto/16 :goto_54

    :sswitch_da
    const-string/jumbo v23, "3101"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_54

    const/16 v3, 0x8

    goto/16 :goto_54

    :sswitch_eb
    const-string/jumbo v23, "3102"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_54

    const/16 v3, 0x9

    goto/16 :goto_54

    :sswitch_fc
    const-string/jumbo v23, "3103"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_54

    const/16 v3, 0xa

    goto/16 :goto_54

    :sswitch_10d
    const-string/jumbo v23, "3104"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_54

    const/16 v3, 0xb

    goto/16 :goto_54

    :sswitch_11e
    const-string/jumbo v23, "3105"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_54

    const/16 v3, 0xc

    goto/16 :goto_54

    :sswitch_12f
    const-string/jumbo v23, "3106"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_54

    const/16 v3, 0xd

    goto/16 :goto_54

    :sswitch_140
    const-string/jumbo v23, "3107"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_54

    const/16 v3, 0xe

    goto/16 :goto_54

    :sswitch_151
    const-string/jumbo v23, "3108"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_54

    const/16 v3, 0xf

    goto/16 :goto_54

    :sswitch_162
    const-string/jumbo v23, "3109"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_54

    const/16 v3, 0x10

    goto/16 :goto_54

    :sswitch_173
    const-string/jumbo v23, "3200"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_54

    const/16 v3, 0x11

    goto/16 :goto_54

    :sswitch_184
    const-string/jumbo v23, "3201"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_54

    const/16 v3, 0x12

    goto/16 :goto_54

    :sswitch_195
    const-string/jumbo v23, "3202"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_54

    const/16 v3, 0x13

    goto/16 :goto_54

    :sswitch_1a6
    const-string/jumbo v23, "3203"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_54

    const/16 v3, 0x14

    goto/16 :goto_54

    :sswitch_1b7
    const-string/jumbo v23, "3204"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_54

    const/16 v3, 0x15

    goto/16 :goto_54

    :sswitch_1c8
    const-string/jumbo v23, "3205"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_54

    const/16 v3, 0x16

    goto/16 :goto_54

    :sswitch_1d9
    const-string/jumbo v23, "3206"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_54

    const/16 v3, 0x17

    goto/16 :goto_54

    :sswitch_1ea
    const-string/jumbo v23, "3207"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_54

    const/16 v3, 0x18

    goto/16 :goto_54

    :sswitch_1fb
    const-string/jumbo v23, "3208"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_54

    const/16 v3, 0x19

    goto/16 :goto_54

    :sswitch_20c
    const-string/jumbo v23, "3209"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_54

    const/16 v3, 0x1a

    goto/16 :goto_54

    :sswitch_21d
    const-string/jumbo v23, "3920"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_54

    const/16 v3, 0x1b

    goto/16 :goto_54

    :sswitch_22e
    const-string/jumbo v23, "3921"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_54

    const/16 v3, 0x1c

    goto/16 :goto_54

    :sswitch_23f
    const-string/jumbo v23, "3922"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_54

    const/16 v3, 0x1d

    goto/16 :goto_54

    :sswitch_250
    const-string/jumbo v23, "3923"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_54

    const/16 v3, 0x1e

    goto/16 :goto_54

    :sswitch_261
    const-string/jumbo v23, "3930"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_54

    const/16 v3, 0x1f

    goto/16 :goto_54

    :sswitch_272
    const-string/jumbo v23, "3931"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_54

    const/16 v3, 0x20

    goto/16 :goto_54

    :sswitch_283
    const-string/jumbo v23, "3932"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_54

    const/16 v3, 0x21

    goto/16 :goto_54

    :sswitch_294
    const-string/jumbo v23, "3933"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_54

    const/16 v3, 0x22

    goto/16 :goto_54

    .line 82
    :pswitch_2a5
    move-object/from16 v6, v22

    .line 83
    goto/16 :goto_26

    .line 85
    :pswitch_2a9
    move-object/from16 v5, v22

    .line 86
    goto/16 :goto_26

    .line 88
    :pswitch_2ad
    move-object/from16 v7, v22

    .line 89
    goto/16 :goto_26

    .line 91
    :pswitch_2b1
    move-object/from16 v8, v22

    .line 92
    goto/16 :goto_26

    .line 94
    :pswitch_2b5
    move-object/from16 v9, v22

    .line 95
    goto/16 :goto_26

    .line 97
    :pswitch_2b9
    move-object/from16 v10, v22

    .line 98
    goto/16 :goto_26

    .line 100
    :pswitch_2bd
    move-object/from16 v11, v22

    .line 101
    goto/16 :goto_26

    .line 112
    :pswitch_2c1
    move-object/from16 v12, v22

    .line 113
    const-string/jumbo v13, "KG"

    .line 114
    const/4 v3, 0x3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 115
    goto/16 :goto_26

    .line 126
    :pswitch_2cf
    move-object/from16 v12, v22

    .line 127
    const-string/jumbo v13, "LB"

    .line 128
    const/4 v3, 0x3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 129
    goto/16 :goto_26

    .line 134
    :pswitch_2dd
    move-object/from16 v15, v22

    .line 135
    const/4 v3, 0x3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 136
    goto/16 :goto_26

    .line 141
    :pswitch_2e8
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v23, 0x4

    move/from16 v0, v23

    if-ge v3, v0, :cond_2f5

    .line 145
    const/4 v3, 0x0

    goto/16 :goto_b

    .line 147
    :cond_2f5
    const/4 v3, 0x3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 148
    const/4 v3, 0x0

    const/16 v23, 0x3

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 149
    const/4 v3, 0x3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 150
    goto/16 :goto_26

    .line 158
    .end local v19    # "ai":Ljava/lang/String;
    .end local v22    # "value":Ljava/lang/String;
    :cond_310
    new-instance v3, Lcom/google/zxing/client/result/ExpandedProductParsedResult;

    invoke-direct/range {v3 .. v18}, Lcom/google/zxing/client/result/ExpandedProductParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_b

    .line 80
    nop

    :sswitch_data_318
    .sparse-switch
        0x600 -> :sswitch_61
        0x601 -> :sswitch_70
        0x61f -> :sswitch_7f
        0x620 -> :sswitch_8e
        0x622 -> :sswitch_9d
        0x624 -> :sswitch_ac
        0x626 -> :sswitch_bb
        0x17ecde -> :sswitch_ca
        0x17ecdf -> :sswitch_da
        0x17ece0 -> :sswitch_eb
        0x17ece1 -> :sswitch_fc
        0x17ece2 -> :sswitch_10d
        0x17ece3 -> :sswitch_11e
        0x17ece4 -> :sswitch_12f
        0x17ece5 -> :sswitch_140
        0x17ece6 -> :sswitch_151
        0x17ece7 -> :sswitch_162
        0x17f09f -> :sswitch_173
        0x17f0a0 -> :sswitch_184
        0x17f0a1 -> :sswitch_195
        0x17f0a2 -> :sswitch_1a6
        0x17f0a3 -> :sswitch_1b7
        0x17f0a4 -> :sswitch_1c8
        0x17f0a5 -> :sswitch_1d9
        0x17f0a6 -> :sswitch_1ea
        0x17f0a7 -> :sswitch_1fb
        0x17f0a8 -> :sswitch_20c
        0x180b24 -> :sswitch_21d
        0x180b25 -> :sswitch_22e
        0x180b26 -> :sswitch_23f
        0x180b27 -> :sswitch_250
        0x180b43 -> :sswitch_261
        0x180b44 -> :sswitch_272
        0x180b45 -> :sswitch_283
        0x180b46 -> :sswitch_294
    .end sparse-switch

    :pswitch_data_3a6
    .packed-switch 0x0
        :pswitch_2a5
        :pswitch_2a9
        :pswitch_2ad
        :pswitch_2b1
        :pswitch_2b5
        :pswitch_2b9
        :pswitch_2bd
        :pswitch_2c1
        :pswitch_2c1
        :pswitch_2c1
        :pswitch_2c1
        :pswitch_2c1
        :pswitch_2c1
        :pswitch_2c1
        :pswitch_2c1
        :pswitch_2c1
        :pswitch_2c1
        :pswitch_2cf
        :pswitch_2cf
        :pswitch_2cf
        :pswitch_2cf
        :pswitch_2cf
        :pswitch_2cf
        :pswitch_2cf
        :pswitch_2cf
        :pswitch_2cf
        :pswitch_2cf
        :pswitch_2dd
        :pswitch_2dd
        :pswitch_2dd
        :pswitch_2dd
        :pswitch_2e8
        :pswitch_2e8
        :pswitch_2e8
        :pswitch_2e8
    .end packed-switch
.end method

.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .registers 3
    .param p1, "x0"    # Lcom/google/zxing/Result;

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ExpandedProductParsedResult;

    move-result-object v0

    return-object v0
.end method
