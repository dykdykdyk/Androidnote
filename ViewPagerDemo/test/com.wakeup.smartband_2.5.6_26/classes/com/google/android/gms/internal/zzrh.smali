.class public abstract Lcom/google/android/gms/internal/zzrh;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A::",
        "Lcom/google/android/gms/common/api/Api$zzb;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method protected abstract zza(Lcom/google/android/gms/common/api/Api$zzb;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation
.end method

.method public zzasr()Lcom/google/android/gms/internal/zzrd$zzb;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzrd$zzb",
            "<*>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrd;->zzasr()Lcom/google/android/gms/internal/zzrd$zzb;

    move-result-object v0

    return-object v0
.end method
