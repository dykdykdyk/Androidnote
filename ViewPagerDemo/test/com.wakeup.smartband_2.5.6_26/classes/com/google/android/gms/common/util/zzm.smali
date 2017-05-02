.class public final Lcom/google/android/gms/common/util/zzm;
.super Ljava/lang/Object;


# direct methods
.method public static zza([BIIZ)Ljava/lang/String;
    .registers 16

    const/16 v11, 0x10

    const/16 v10, 0x8

    const/4 v9, 0x1

    const/4 v4, 0x0

    if-eqz p0, :cond_14

    array-length v0, p0

    if-eqz v0, :cond_14

    if-ltz p1, :cond_14

    if-lez p2, :cond_14

    add-int v0, p1, p2

    array-length v1, p0

    if-le v0, v1, :cond_16

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return-object v0

    :cond_16
    const/16 v0, 0x39

    if-eqz p3, :cond_1c

    const/16 v0, 0x4b

    :cond_1c
    add-int/lit8 v1, p2, 0x10

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x10

    mul-int/2addr v0, v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v1, p1

    move v2, p2

    move v0, v4

    move v3, v4

    :goto_2c
    if-lez v2, :cond_cc

    if-nez v3, :cond_8b

    const/high16 v0, 0x10000

    if-ge p2, v0, :cond_77

    const-string/jumbo v0, "%04X:"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    :cond_47
    :goto_47
    const-string/jumbo v5, " %02X"

    new-array v6, v9, [Ljava/lang/Object;

    aget-byte v8, p0, v1

    and-int/lit16 v8, v8, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v2, -0x1

    add-int/lit8 v3, v3, 0x1

    if-eqz p3, :cond_bc

    if-eq v3, v11, :cond_67

    if-nez v6, :cond_bc

    :cond_67
    rsub-int/lit8 v5, v3, 0x10

    if-lez v5, :cond_94

    move v2, v4

    :goto_6c
    if-ge v2, v5, :cond_94

    const-string/jumbo v8, "   "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_6c

    :cond_77
    const-string/jumbo v0, "%08X:"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    goto :goto_47

    :cond_8b
    if-ne v3, v10, :cond_47

    const-string/jumbo v5, " -"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_47

    :cond_94
    if-lt v5, v10, :cond_9c

    const-string/jumbo v2, "  "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9c
    const-string/jumbo v2, "  "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, v4

    :goto_a3
    if-ge v5, v3, :cond_bc

    add-int v2, v0, v5

    aget-byte v2, p0, v2

    int-to-char v2, v2

    const/16 v8, 0x20

    if-lt v2, v8, :cond_b9

    const/16 v8, 0x7e

    if-gt v2, v8, :cond_b9

    :goto_b2
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_a3

    :cond_b9
    const/16 v2, 0x2e

    goto :goto_b2

    :cond_bc
    if-eq v3, v11, :cond_c0

    if-nez v6, :cond_d2

    :cond_c0
    const/16 v2, 0xa

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v4

    :goto_c6
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    move v2, v6

    goto/16 :goto_2c

    :cond_cc
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_15

    :cond_d2
    move v2, v3

    goto :goto_c6
.end method
