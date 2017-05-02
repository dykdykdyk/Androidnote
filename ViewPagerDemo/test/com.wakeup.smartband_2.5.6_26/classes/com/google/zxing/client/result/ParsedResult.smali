.class public abstract Lcom/google/zxing/client/result/ParsedResult;
.super Ljava/lang/Object;
.source "ParsedResult.java"


# instance fields
.field private final type:Lcom/google/zxing/client/result/ParsedResultType;


# direct methods
.method protected constructor <init>(Lcom/google/zxing/client/result/ParsedResultType;)V
    .registers 2
    .param p1, "type"    # Lcom/google/zxing/client/result/ParsedResultType;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/zxing/client/result/ParsedResult;->type:Lcom/google/zxing/client/result/ParsedResultType;

    .line 36
    return-void
.end method

.method public static maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .registers 3
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "result"    # Ljava/lang/StringBuilder;

    .prologue
    .line 50
    if-eqz p0, :cond_16

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    .line 52
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_13

    .line 53
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    :cond_13
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    :cond_16
    return-void
.end method

.method public static maybeAppend([Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .registers 6
    .param p0, "values"    # [Ljava/lang/String;
    .param p1, "result"    # Ljava/lang/StringBuilder;

    .prologue
    .line 60
    if-eqz p0, :cond_f

    .line 61
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_5
    if-ge v1, v2, :cond_f

    aget-object v3, v0, v1

    .line 62
    .local v3, "value":Ljava/lang/String;
    invoke-static {v3, p1}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 61
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 65
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "value":Ljava/lang/String;
    :cond_f
    return-void
.end method


# virtual methods
.method public abstract getDisplayResult()Ljava/lang/String;
.end method

.method public final getType()Lcom/google/zxing/client/result/ParsedResultType;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/zxing/client/result/ParsedResult;->type:Lcom/google/zxing/client/result/ParsedResultType;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/google/zxing/client/result/ParsedResult;->getDisplayResult()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
