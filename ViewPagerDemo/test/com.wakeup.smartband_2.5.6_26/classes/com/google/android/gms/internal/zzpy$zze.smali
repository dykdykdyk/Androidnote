.class public final Lcom/google/android/gms/internal/zzpy$zze;
.super Lcom/google/android/gms/internal/zzpy$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzpy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zze"
.end annotation


# instance fields
.field public final wn:Lcom/google/android/gms/internal/zzrr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzrr",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/google/android/gms/internal/zzrr;Lcom/google/android/gms/tasks/TaskCompletionSource;Landroid/util/SparseArray;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/internal/zzrr",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            ">;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/zzrd$zzb",
            "<*>;",
            "Lcom/google/android/gms/internal/zzri;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/google/android/gms/internal/zzpy$zza;-><init>(IILcom/google/android/gms/tasks/TaskCompletionSource;Landroid/util/SparseArray;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzpy$zze;->wn:Lcom/google/android/gms/internal/zzrr;

    return-void
.end method


# virtual methods
.method public bridge synthetic cancel()Z
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzpy$zza;->cancel()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic zza(Landroid/util/SparseArray;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzpy$zza;->zza(Landroid/util/SparseArray;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy$zze;->wg:Landroid/util/SparseArray;

    iget v1, p0, Lcom/google/android/gms/internal/zzpy$zze;->wf:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_25

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpy$zze;->wn:Lcom/google/android/gms/internal/zzrr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzrr;->zzasr()Lcom/google/android/gms/internal/zzrd$zzb;

    move-result-object v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpy$zze;->wn:Lcom/google/android/gms/internal/zzrr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzrr;->zzasr()Lcom/google/android/gms/internal/zzrd$zzb;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy$zze;->wn:Lcom/google/android/gms/internal/zzrr;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpy$zze;->wh:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzrr;->zzc(Lcom/google/android/gms/common/api/Api$zzb;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    :goto_24
    return-void

    :cond_25
    const-string/jumbo v0, "UnregisterListenerTask"

    const-string/jumbo v1, "Received call to unregister a listener without a matching registration call."

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy$zze;->wh:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v1, Lcom/google/android/gms/common/api/zza;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->wa:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/zza;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    goto :goto_24
.end method

.method public bridge synthetic zzx(Lcom/google/android/gms/common/api/Status;)V
    .registers 2
    .param p1    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzpy$zza;->zzx(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
