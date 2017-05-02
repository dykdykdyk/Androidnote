.class public Lcom/google/android/gms/internal/zztd;
.super Ljava/lang/Object;


# direct methods
.method public static zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzsz;)Ljava/lang/String;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<DP:",
            "Ljava/lang/Object;",
            "DT:",
            "Ljava/lang/Object;",
            ">(TDP;",
            "Lcom/google/android/gms/internal/zzsz",
            "<TDP;TDT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzsz;->zzbed()Lcom/google/android/gms/internal/zzta;

    move-result-object v4

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/zzsz;->zzae(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/google/android/gms/internal/zzta;->zzjg(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    move-object v0, v1

    :goto_10
    return-object v0

    :cond_11
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/zzsz;->zzad(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/4 v0, 0x0

    :goto_16
    invoke-interface {v4, v5}, Lcom/google/android/gms/internal/zzta;->zzaf(Ljava/lang/Object;)I

    move-result v2

    if-ge v0, v2, :cond_a7

    invoke-interface {v4, v5, v0}, Lcom/google/android/gms/internal/zzta;->zzg(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, p0, v0}, Lcom/google/android/gms/internal/zzsz;->zzd(Ljava/lang/Object;I)Z

    move-result v2

    if-nez v2, :cond_43

    invoke-interface {v4, v5, v0}, Lcom/google/android/gms/internal/zzta;->zzf(Ljava/lang/Object;I)Z

    move-result v2

    if-nez v2, :cond_34

    sget-object v2, Lcom/google/android/gms/internal/zzte;->RP:Ljava/util/Set;

    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_37
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, " not set"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_43
    invoke-interface {v4, v5, v0}, Lcom/google/android/gms/internal/zzta;->zze(Ljava/lang/Object;I)I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v8, 0x3ff0000000000000L

    cmpl-double v7, v2, v8

    if-nez v7, :cond_67

    invoke-interface {p1, p0, v0}, Lcom/google/android/gms/internal/zzsz;->zzc(Ljava/lang/Object;I)I

    move-result v2

    int-to-double v2, v2

    :goto_53
    invoke-static {}, Lcom/google/android/gms/internal/zzte;->zzbfu()Lcom/google/android/gms/internal/zzte;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/zzte;->zzjt(Ljava/lang/String;)Lcom/google/android/gms/internal/zzte$zza;

    move-result-object v7

    if-eqz v7, :cond_72

    invoke-virtual {v7, v2, v3}, Lcom/google/android/gms/internal/zzte$zza;->zzg(D)Z

    move-result v7

    if-nez v7, :cond_72

    const-string/jumbo v0, "Field out of range"

    goto :goto_10

    :cond_67
    const-wide/high16 v8, 0x4000000000000000L

    cmpl-double v2, v2, v8

    if-nez v2, :cond_34

    invoke-interface {p1, p0, v0}, Lcom/google/android/gms/internal/zzsz;->zzb(Ljava/lang/Object;I)D

    move-result-wide v2

    goto :goto_53

    :cond_72
    invoke-interface {v4, v5}, Lcom/google/android/gms/internal/zzta;->zzag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/google/android/gms/internal/zzte;->zzbfu()Lcom/google/android/gms/internal/zzte;

    move-result-object v8

    invoke-virtual {v8, v7, v6}, Lcom/google/android/gms/internal/zzte;->zzak(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzte$zza;

    move-result-object v6

    if-eqz v6, :cond_34

    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, p0, v7}, Lcom/google/android/gms/internal/zzsz;->zza(Ljava/lang/Object;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-nez v7, :cond_9a

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-nez v0, :cond_95

    move-object v0, v1

    goto/16 :goto_10

    :cond_95
    const-string/jumbo v0, "DataPoint out of range"

    goto/16 :goto_10

    :cond_9a
    long-to-double v8, v8

    div-double/2addr v2, v8

    invoke-virtual {v6, v2, v3}, Lcom/google/android/gms/internal/zzte$zza;->zzg(D)Z

    move-result v2

    if-nez v2, :cond_34

    const-string/jumbo v0, "DataPoint out of range"

    goto/16 :goto_10

    :cond_a7
    move-object v0, v1

    goto/16 :goto_10
.end method
