.class public final Lcom/google/zxing/client/result/BizcardResultParser;
.super Lcom/google/zxing/client/result/AbstractDoCoMoResultParser;
.source "BizcardResultParser.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/zxing/client/result/AbstractDoCoMoResultParser;-><init>()V

    return-void
.end method

.method private static buildName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "firstName"    # Ljava/lang/String;
    .param p1, "lastName"    # Ljava/lang/String;

    .prologue
    .line 93
    if-nez p0, :cond_3

    .line 96
    .end local p0    # "firstName":Ljava/lang/String;
    .end local p1    # "lastName":Ljava/lang/String;
    :goto_2
    return-object p1

    .restart local p0    # "firstName":Ljava/lang/String;
    .restart local p1    # "lastName":Ljava/lang/String;
    :cond_3
    if-nez p1, :cond_7

    .end local p0    # "firstName":Ljava/lang/String;
    :goto_5
    move-object p1, p0

    goto :goto_2

    .restart local p0    # "firstName":Ljava/lang/String;
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_5
.end method

.method private static buildPhoneNumbers(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .param p0, "number1"    # Ljava/lang/String;
    .param p1, "number2"    # Ljava/lang/String;
    .param p2, "number3"    # Ljava/lang/String;

    .prologue
    .line 75
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 76
    .local v0, "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_b

    .line 77
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_b
    if-eqz p1, :cond_10

    .line 80
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_10
    if-eqz p2, :cond_15

    .line 83
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_15
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 86
    .local v1, "size":I
    if-nez v1, :cond_1d

    .line 87
    const/4 v2, 0x0

    .line 89
    :goto_1c
    return-object v2

    :cond_1d
    new-array v2, v1, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    goto :goto_1c
.end method


# virtual methods
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;
    .registers 29
    .param p1, "result"    # Lcom/google/zxing/Result;

    .prologue
    .line 39
    invoke-static/range {p1 .. p1}, Lcom/google/zxing/client/result/BizcardResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v26

    .line 40
    .local v26, "rawText":Ljava/lang/String;
    const-string/jumbo v2, "BIZCARD:"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 41
    const/4 v2, 0x0

    .line 54
    :goto_10
    return-object v2

    .line 43
    :cond_11
    const-string/jumbo v2, "N:"

    const/4 v3, 0x1

    move-object/from16 v0, v26

    invoke-static {v2, v0, v3}, Lcom/google/zxing/client/result/BizcardResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v20

    .line 44
    .local v20, "firstName":Ljava/lang/String;
    const-string/jumbo v2, "X:"

    const/4 v3, 0x1

    move-object/from16 v0, v26

    invoke-static {v2, v0, v3}, Lcom/google/zxing/client/result/BizcardResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v22

    .line 45
    .local v22, "lastName":Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/google/zxing/client/result/BizcardResultParser;->buildName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 46
    .local v21, "fullName":Ljava/lang/String;
    const-string/jumbo v2, "T:"

    const/4 v3, 0x1

    move-object/from16 v0, v26

    invoke-static {v2, v0, v3}, Lcom/google/zxing/client/result/BizcardResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v16

    .line 47
    .local v16, "title":Ljava/lang/String;
    const-string/jumbo v2, "C:"

    const/4 v3, 0x1

    move-object/from16 v0, v26

    invoke-static {v2, v0, v3}, Lcom/google/zxing/client/result/BizcardResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v14

    .line 48
    .local v14, "org":Ljava/lang/String;
    const-string/jumbo v2, "A:"

    const/4 v3, 0x1

    move-object/from16 v0, v26

    invoke-static {v2, v0, v3}, Lcom/google/zxing/client/result/BizcardResultParser;->matchDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v12

    .line 49
    .local v12, "addresses":[Ljava/lang/String;
    const-string/jumbo v2, "B:"

    const/4 v3, 0x1

    move-object/from16 v0, v26

    invoke-static {v2, v0, v3}, Lcom/google/zxing/client/result/BizcardResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v23

    .line 50
    .local v23, "phoneNumber1":Ljava/lang/String;
    const-string/jumbo v2, "M:"

    const/4 v3, 0x1

    move-object/from16 v0, v26

    invoke-static {v2, v0, v3}, Lcom/google/zxing/client/result/BizcardResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v24

    .line 51
    .local v24, "phoneNumber2":Ljava/lang/String;
    const-string/jumbo v2, "F:"

    const/4 v3, 0x1

    move-object/from16 v0, v26

    invoke-static {v2, v0, v3}, Lcom/google/zxing/client/result/BizcardResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v25

    .line 52
    .local v25, "phoneNumber3":Ljava/lang/String;
    const-string/jumbo v2, "E:"

    const/4 v3, 0x1

    move-object/from16 v0, v26

    invoke-static {v2, v0, v3}, Lcom/google/zxing/client/result/BizcardResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v19

    .line 54
    .local v19, "email":Ljava/lang/String;
    new-instance v2, Lcom/google/zxing/client/result/AddressBookParsedResult;

    invoke-static/range {v21 .. v21}, Lcom/google/zxing/client/result/BizcardResultParser;->maybeWrap(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v23 .. v25}, Lcom/google/zxing/client/result/BizcardResultParser;->buildPhoneNumbers(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v19 .. v19}, Lcom/google/zxing/client/result/BizcardResultParser;->maybeWrap(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v2 .. v18}, Lcom/google/zxing/client/result/AddressBookParsedResult;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_10
.end method

.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .registers 3
    .param p1, "x0"    # Lcom/google/zxing/Result;

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/BizcardResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;

    move-result-object v0

    return-object v0
.end method
