.class Lcom/google/android/gms/internal/zzrp$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzrp;->onResult(Lcom/google/android/gms/common/api/Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zr:Lcom/google/android/gms/common/api/Result;

.field final synthetic zs:Lcom/google/android/gms/internal/zzrp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzrp;Lcom/google/android/gms/common/api/Result;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrp$1;->zs:Lcom/google/android/gms/internal/zzrp;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzrp$1;->zr:Lcom/google/android/gms/common/api/Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v4, 0x0

    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/zzqe;->wF:Ljava/lang/ThreadLocal;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrp$1;->zs:Lcom/google/android/gms/internal/zzrp;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrp;->zzc(Lcom/google/android/gms/internal/zzrp;)Lcom/google/android/gms/common/api/ResultTransform;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrp$1;->zr:Lcom/google/android/gms/common/api/Result;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/ResultTransform;->onSuccess(Lcom/google/android/gms/common/api/Result;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrp$1;->zs:Lcom/google/android/gms/internal/zzrp;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzrp;->zzd(Lcom/google/android/gms/internal/zzrp;)Lcom/google/android/gms/internal/zzrp$zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrp$1;->zs:Lcom/google/android/gms/internal/zzrp;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzrp;->zzd(Lcom/google/android/gms/internal/zzrp;)Lcom/google/android/gms/internal/zzrp$zza;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/zzrp$zza;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzrp$zza;->sendMessage(Landroid/os/Message;)Z
    :try_end_2b
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_2b} :catch_4f
    .catchall {:try_start_1 .. :try_end_2b} :catchall_88

    sget-object v0, Lcom/google/android/gms/internal/zzqe;->wF:Ljava/lang/ThreadLocal;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrp$1;->zs:Lcom/google/android/gms/internal/zzrp;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrp$1;->zr:Lcom/google/android/gms/common/api/Result;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzrp;->zza(Lcom/google/android/gms/internal/zzrp;Lcom/google/android/gms/common/api/Result;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrp$1;->zs:Lcom/google/android/gms/internal/zzrp;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrp;->zze(Lcom/google/android/gms/internal/zzrp;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_4e

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrp$1;->zs:Lcom/google/android/gms/internal/zzrp;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/internal/zzrp;)V

    :cond_4e
    :goto_4e
    return-void

    :catch_4f
    move-exception v0

    :try_start_50
    iget-object v1, p0, Lcom/google/android/gms/internal/zzrp$1;->zs:Lcom/google/android/gms/internal/zzrp;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzrp;->zzd(Lcom/google/android/gms/internal/zzrp;)Lcom/google/android/gms/internal/zzrp$zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrp$1;->zs:Lcom/google/android/gms/internal/zzrp;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzrp;->zzd(Lcom/google/android/gms/internal/zzrp;)Lcom/google/android/gms/internal/zzrp$zza;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/zzrp$zza;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzrp$zza;->sendMessage(Landroid/os/Message;)Z
    :try_end_64
    .catchall {:try_start_50 .. :try_end_64} :catchall_88

    sget-object v0, Lcom/google/android/gms/internal/zzqe;->wF:Ljava/lang/ThreadLocal;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrp$1;->zs:Lcom/google/android/gms/internal/zzrp;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrp$1;->zr:Lcom/google/android/gms/common/api/Result;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzrp;->zza(Lcom/google/android/gms/internal/zzrp;Lcom/google/android/gms/common/api/Result;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrp$1;->zs:Lcom/google/android/gms/internal/zzrp;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrp;->zze(Lcom/google/android/gms/internal/zzrp;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_4e

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrp$1;->zs:Lcom/google/android/gms/internal/zzrp;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/internal/zzrp;)V

    goto :goto_4e

    :catchall_88
    move-exception v0

    move-object v1, v0

    sget-object v0, Lcom/google/android/gms/internal/zzqe;->wF:Ljava/lang/ThreadLocal;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrp$1;->zs:Lcom/google/android/gms/internal/zzrp;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrp$1;->zr:Lcom/google/android/gms/common/api/Result;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzrp;->zza(Lcom/google/android/gms/internal/zzrp;Lcom/google/android/gms/common/api/Result;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrp$1;->zs:Lcom/google/android/gms/internal/zzrp;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrp;->zze(Lcom/google/android/gms/internal/zzrp;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_ad

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrp$1;->zs:Lcom/google/android/gms/internal/zzrp;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/internal/zzrp;)V

    :cond_ad
    throw v1
.end method
