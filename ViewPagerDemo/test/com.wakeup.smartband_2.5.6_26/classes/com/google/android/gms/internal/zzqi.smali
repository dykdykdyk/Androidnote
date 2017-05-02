.class public Lcom/google/android/gms/internal/zzqi;
.super Lcom/google/android/gms/internal/zzqd;


# virtual methods
.method public onStop()V
    .registers 4

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzqd;->onStop()V

    invoke-virtual {v2}, Lcom/google/android/gms/common/util/zza;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/zzd;->release()V

    goto :goto_8

    :cond_18
    invoke-virtual {v2}, Lcom/google/android/gms/common/util/zza;->clear()V

    invoke-virtual {v2, p0}, Lcom/google/android/gms/internal/zzqt;->zza(Lcom/google/android/gms/internal/zzqi;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/common/ConnectionResult;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzqt;->zza(Lcom/google/android/gms/common/ConnectionResult;I)V

    return-void
.end method

.method protected zzaqk()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqt;->zzaqk()V

    return-void
.end method
