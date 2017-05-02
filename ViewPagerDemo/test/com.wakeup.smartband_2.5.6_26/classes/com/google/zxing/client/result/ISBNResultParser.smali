.class public final Lcom/google/zxing/client/result/ISBNResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "ISBNResultParser.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ISBNParsedResult;
    .registers 7
    .param p1, "result"    # Lcom/google/zxing/Result;

    .prologue
    const/4 v3, 0x0

    .line 34
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v0

    .line 35
    .local v0, "format":Lcom/google/zxing/BarcodeFormat;
    sget-object v4, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    if-eq v0, v4, :cond_a

    .line 47
    :cond_9
    :goto_9
    return-object v3

    .line 38
    :cond_a
    invoke-static {p1}, Lcom/google/zxing/client/result/ISBNResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v2

    .line 39
    .local v2, "rawText":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 40
    .local v1, "length":I
    const/16 v4, 0xd

    if-ne v1, v4, :cond_9

    .line 43
    const-string/jumbo v4, "978"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_28

    const-string/jumbo v4, "979"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 47
    :cond_28
    new-instance v3, Lcom/google/zxing/client/result/ISBNParsedResult;

    invoke-direct {v3, v2}, Lcom/google/zxing/client/result/ISBNParsedResult;-><init>(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .registers 3
    .param p1, "x0"    # Lcom/google/zxing/Result;

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/ISBNResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ISBNParsedResult;

    move-result-object v0

    return-object v0
.end method
