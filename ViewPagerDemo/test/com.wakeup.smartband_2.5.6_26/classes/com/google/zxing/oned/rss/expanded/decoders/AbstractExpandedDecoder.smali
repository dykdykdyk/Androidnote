.class public abstract Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;
.super Ljava/lang/Object;
.source "AbstractExpandedDecoder.java"


# instance fields
.field private final generalDecoder:Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;

.field private final information:Lcom/google/zxing/common/BitArray;


# direct methods
.method constructor <init>(Lcom/google/zxing/common/BitArray;)V
    .registers 3
    .param p1, "information"    # Lcom/google/zxing/common/BitArray;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;->information:Lcom/google/zxing/common/BitArray;

    .line 44
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;

    invoke-direct {v0, p1}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;-><init>(Lcom/google/zxing/common/BitArray;)V

    iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;->generalDecoder:Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;

    .line 45
    return-void
.end method

.method public static createDecoder(Lcom/google/zxing/common/BitArray;)Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;
    .registers 7
    .param p0, "information"    # Lcom/google/zxing/common/BitArray;

    .prologue
    const/4 v4, 0x1

    .line 58
    invoke-virtual {p0, v4}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 59
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/AI01AndOtherAIs;

    invoke-direct {v3, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01AndOtherAIs;-><init>(Lcom/google/zxing/common/BitArray;)V

    .line 87
    :goto_c
    return-object v3

    .line 61
    :cond_d
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 62
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/AnyAIDecoder;

    invoke-direct {v3, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/AnyAIDecoder;-><init>(Lcom/google/zxing/common/BitArray;)V

    goto :goto_c

    .line 65
    :cond_1a
    const/4 v3, 0x4

    invoke-static {p0, v4, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(Lcom/google/zxing/common/BitArray;II)I

    move-result v1

    .line 67
    .local v1, "fourBitEncodationMethod":I
    packed-switch v1, :pswitch_data_ca

    .line 72
    const/4 v3, 0x5

    invoke-static {p0, v4, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(Lcom/google/zxing/common/BitArray;II)I

    move-result v0

    .line 73
    .local v0, "fiveBitEncodationMethod":I
    packed-switch v0, :pswitch_data_d2

    .line 78
    const/4 v3, 0x7

    invoke-static {p0, v4, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(Lcom/google/zxing/common/BitArray;II)I

    move-result v2

    .line 79
    .local v2, "sevenBitEncodationMethod":I
    packed-switch v2, :pswitch_data_da

    .line 90
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unknown decoder: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 68
    .end local v0    # "fiveBitEncodationMethod":I
    .end local v2    # "sevenBitEncodationMethod":I
    :pswitch_4c
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/AI013103decoder;

    invoke-direct {v3, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/AI013103decoder;-><init>(Lcom/google/zxing/common/BitArray;)V

    goto :goto_c

    .line 69
    :pswitch_52
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/AI01320xDecoder;

    invoke-direct {v3, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01320xDecoder;-><init>(Lcom/google/zxing/common/BitArray;)V

    goto :goto_c

    .line 74
    .restart local v0    # "fiveBitEncodationMethod":I
    :pswitch_58
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/AI01392xDecoder;

    invoke-direct {v3, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01392xDecoder;-><init>(Lcom/google/zxing/common/BitArray;)V

    goto :goto_c

    .line 75
    :pswitch_5e
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/AI01393xDecoder;

    invoke-direct {v3, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01393xDecoder;-><init>(Lcom/google/zxing/common/BitArray;)V

    goto :goto_c

    .line 80
    .restart local v2    # "sevenBitEncodationMethod":I
    :pswitch_64
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;

    const-string/jumbo v4, "310"

    const-string/jumbo v5, "11"

    invoke-direct {v3, p0, v4, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;-><init>(Lcom/google/zxing/common/BitArray;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 81
    :pswitch_70
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;

    const-string/jumbo v4, "320"

    const-string/jumbo v5, "11"

    invoke-direct {v3, p0, v4, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;-><init>(Lcom/google/zxing/common/BitArray;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 82
    :pswitch_7c
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;

    const-string/jumbo v4, "310"

    const-string/jumbo v5, "13"

    invoke-direct {v3, p0, v4, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;-><init>(Lcom/google/zxing/common/BitArray;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 83
    :pswitch_88
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;

    const-string/jumbo v4, "320"

    const-string/jumbo v5, "13"

    invoke-direct {v3, p0, v4, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;-><init>(Lcom/google/zxing/common/BitArray;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 84
    :pswitch_95
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;

    const-string/jumbo v4, "310"

    const-string/jumbo v5, "15"

    invoke-direct {v3, p0, v4, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;-><init>(Lcom/google/zxing/common/BitArray;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 85
    :pswitch_a2
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;

    const-string/jumbo v4, "320"

    const-string/jumbo v5, "15"

    invoke-direct {v3, p0, v4, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;-><init>(Lcom/google/zxing/common/BitArray;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 86
    :pswitch_af
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;

    const-string/jumbo v4, "310"

    const-string/jumbo v5, "17"

    invoke-direct {v3, p0, v4, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;-><init>(Lcom/google/zxing/common/BitArray;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 87
    :pswitch_bc
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;

    const-string/jumbo v4, "320"

    const-string/jumbo v5, "17"

    invoke-direct {v3, p0, v4, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;-><init>(Lcom/google/zxing/common/BitArray;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 67
    nop

    :pswitch_data_ca
    .packed-switch 0x4
        :pswitch_4c
        :pswitch_52
    .end packed-switch

    .line 73
    :pswitch_data_d2
    .packed-switch 0xc
        :pswitch_58
        :pswitch_5e
    .end packed-switch

    .line 79
    :pswitch_data_da
    .packed-switch 0x38
        :pswitch_64
        :pswitch_70
        :pswitch_7c
        :pswitch_88
        :pswitch_95
        :pswitch_a2
        :pswitch_af
        :pswitch_bc
    .end packed-switch
.end method


# virtual methods
.method protected final getGeneralDecoder()Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;->generalDecoder:Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;

    return-object v0
.end method

.method protected final getInformation()Lcom/google/zxing/common/BitArray;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;->information:Lcom/google/zxing/common/BitArray;

    return-object v0
.end method

.method public abstract parseInformation()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation
.end method
