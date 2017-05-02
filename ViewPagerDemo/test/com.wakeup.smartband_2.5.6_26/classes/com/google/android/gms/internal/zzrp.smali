.class public Lcom/google/android/gms/internal/zzrp;
.super Lcom/google/android/gms/common/api/TransformedResult;

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzrp$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Lcom/google/android/gms/common/api/TransformedResult",
        "<TR;>;",
        "Lcom/google/android/gms/common/api/ResultCallback",
        "<TR;>;"
    }
.end annotation


# instance fields
.field private final wG:Ljava/lang/Object;

.field private final wI:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ">;"
        }
    .end annotation
.end field

.field private zk:Lcom/google/android/gms/common/api/ResultTransform;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/ResultTransform",
            "<-TR;+",
            "Lcom/google/android/gms/common/api/Result;",
            ">;"
        }
    .end annotation
.end field

.field private zl:Lcom/google/android/gms/internal/zzrp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzrp",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            ">;"
        }
    .end annotation
.end field

.field private volatile zm:Lcom/google/android/gms/common/api/ResultCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/ResultCallbacks",
            "<-TR;>;"
        }
    .end annotation
.end field

.field private zn:Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/PendingResult",
            "<TR;>;"
        }
    .end annotation
.end field

.field private zo:Lcom/google/android/gms/common/api/Status;

.field private final zp:Lcom/google/android/gms/internal/zzrp$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzrp$zza;"
        }
    .end annotation
.end field

.field private zq:Z


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/TransformedResult;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzrp;->zk:Lcom/google/android/gms/common/api/ResultTransform;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzrp;->zl:Lcom/google/android/gms/internal/zzrp;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzrp;->zm:Lcom/google/android/gms/common/api/ResultCallbacks;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzrp;->zn:Lcom/google/android/gms/common/api/PendingResult;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrp;->wG:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzrp;->zo:Lcom/google/android/gms/common/api/Status;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzrp;->zq:Z

    const-string/jumbo v0, "GoogleApiClient reference must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrp;->wI:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrp;->wI:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient;

    new-instance v1, Lcom/google/android/gms/internal/zzrp$zza;

    if-eqz v0, :cond_36

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->getLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_30
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzrp$zza;-><init>(Lcom/google/android/gms/internal/zzrp;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzrp;->zp:Lcom/google/android/gms/internal/zzrp$zza;

    return-void

    :cond_36
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_30
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzrp;Lcom/google/android/gms/common/api/Result;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzrp;->zze(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzrp;Lcom/google/android/gms/common/api/Status;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzrp;->zzac(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method private zzac(Lcom/google/android/gms/common/api/Status;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrp;->wG:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/zzrp;->zo:Lcom/google/android/gms/common/api/Status;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrp;->zo:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzrp;->zzad(Lcom/google/android/gms/common/api/Status;)V

    monitor-exit v1

    return-void

    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0
.end method

.method private zzad(Lcom/google/android/gms/common/api/Status;)V
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrp;->wG:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrp;->zk:Lcom/google/android/gms/common/api/ResultTransform;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrp;->zk:Lcom/google/android/gms/common/api/ResultTransform;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/ResultTransform;->onFailure(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    const-string/jumbo v2, "onFailure must not return null"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrp;->zl:Lcom/google/android/gms/internal/zzrp;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/zzrp;->zzac(Lcom/google/android/gms/common/api/Status;)V

    :cond_18
    :goto_18
    monitor-exit v1

    return-void

    :cond_1a
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrp;->zzasv()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrp;->zm:Lcom/google/android/gms/common/api/ResultCallbacks;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/ResultCallbacks;->onFailure(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_18

    :catchall_26
    move-exception v0

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v0
.end method

.method private zzast()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrp;->zk:Lcom/google/android/gms/common/api/ResultTransform;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrp;->zm:Lcom/google/android/gms/common/api/ResultCallbacks;

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrp;->wI:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzrp;->zq:Z

    if-nez v1, :cond_21

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrp;->zk:Lcom/google/android/gms/common/api/ResultTransform;

    if-eqz v1, :cond_21

    if-eqz v0, :cond_21

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzrp;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzrp;->zq:Z

    :cond_21
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrp;->zo:Lcom/google/android/gms/common/api/Status;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrp;->zo:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzrp;->zzad(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_8

    :cond_2b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrp;->zn:Lcom/google/android/gms/common/api/PendingResult;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrp;->zn:Lcom/google/android/gms/common/api/PendingResult;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    goto :goto_8
.end method

.method private zzasv()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrp;->wI:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrp;->zm:Lcom/google/android/gms/common/api/ResultCallbacks;

    if-eqz v1, :cond_10

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzrp;)Lcom/google/android/gms/common/api/ResultTransform;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrp;->zk:Lcom/google/android/gms/common/api/ResultTransform;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzrp;)Lcom/google/android/gms/internal/zzrp$zza;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrp;->zp:Lcom/google/android/gms/internal/zzrp$zza;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzrp;)Ljava/lang/ref/WeakReference;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrp;->wI:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private zze(Lcom/google/android/gms/common/api/Result;)V
    .registers 8

    instance-of v1, p1, Lcom/google/android/gms/common/api/Releasable;

    if-eqz v1, :cond_b

    :try_start_4
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/common/api/Releasable;

    move-object v1, v0

    invoke-interface {v1}, Lcom/google/android/gms/common/api/Releasable;->release()V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_b} :catch_c

    :cond_b
    :goto_b
    return-void

    :catch_c
    move-exception v1

    const-string/jumbo v2, "TransformedResultImpl"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x12

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v5, "Unable to release "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/zzrp;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrp;->wG:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/zzrp;)Lcom/google/android/gms/internal/zzrp;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrp;->zl:Lcom/google/android/gms/internal/zzrp;

    return-object v0
.end method


# virtual methods
.method public andFinally(Lcom/google/android/gms/common/api/ResultCallbacks;)V
    .registers 7
    .param p1    # Lcom/google/android/gms/common/api/ResultCallbacks;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/ResultCallbacks",
            "<-TR;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzrp;->wG:Ljava/lang/Object;

    monitor-enter v3

    :try_start_5
    iget-object v2, p0, Lcom/google/android/gms/internal/zzrp;->zm:Lcom/google/android/gms/common/api/ResultCallbacks;

    if-nez v2, :cond_21

    move v2, v0

    :goto_a
    const-string/jumbo v4, "Cannot call andFinally() twice."

    invoke-static {v2, v4}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrp;->zk:Lcom/google/android/gms/common/api/ResultTransform;

    if-nez v2, :cond_23

    :goto_14
    const-string/jumbo v1, "Cannot call then() and andFinally() on the same TransformedResult."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrp;->zm:Lcom/google/android/gms/common/api/ResultCallbacks;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrp;->zzast()V

    monitor-exit v3

    return-void

    :cond_21
    move v2, v1

    goto :goto_a

    :cond_23
    move v0, v1

    goto :goto_14

    :catchall_25
    move-exception v0

    monitor-exit v3
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_25

    throw v0
.end method

.method public onResult(Lcom/google/android/gms/common/api/Result;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrp;->wG:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-interface {p1}, Lcom/google/android/gms/common/api/Result;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrp;->zk:Lcom/google/android/gms/common/api/ResultTransform;

    if-eqz v0, :cond_1f

    invoke-static {}, Lcom/google/android/gms/internal/zzrj;->zzarz()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/zzrp$1;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/zzrp$1;-><init>(Lcom/google/android/gms/internal/zzrp;Lcom/google/android/gms/common/api/Result;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_1d
    :goto_1d
    monitor-exit v1

    return-void

    :cond_1f
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrp;->zzasv()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrp;->zm:Lcom/google/android/gms/common/api/ResultCallbacks;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/ResultCallbacks;->onSuccess(Lcom/google/android/gms/common/api/Result;)V

    goto :goto_1d

    :catchall_2b
    move-exception v0

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v0

    :cond_2e
    :try_start_2e
    invoke-interface {p1}, Lcom/google/android/gms/common/api/Result;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzrp;->zzac(Lcom/google/android/gms/common/api/Status;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzrp;->zze(Lcom/google/android/gms/common/api/Result;)V
    :try_end_38
    .catchall {:try_start_2e .. :try_end_38} :catchall_2b

    goto :goto_1d
.end method

.method public then(Lcom/google/android/gms/common/api/ResultTransform;)Lcom/google/android/gms/common/api/TransformedResult;
    .registers 7
    .param p1    # Lcom/google/android/gms/common/api/ResultTransform;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Lcom/google/android/gms/common/api/Result;",
            ">(",
            "Lcom/google/android/gms/common/api/ResultTransform",
            "<-TR;+TS;>;)",
            "Lcom/google/android/gms/common/api/TransformedResult",
            "<TS;>;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzrp;->wG:Ljava/lang/Object;

    monitor-enter v3

    :try_start_5
    iget-object v2, p0, Lcom/google/android/gms/internal/zzrp;->zk:Lcom/google/android/gms/common/api/ResultTransform;

    if-nez v2, :cond_2a

    move v2, v0

    :goto_a
    const-string/jumbo v4, "Cannot call then() twice."

    invoke-static {v2, v4}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrp;->zm:Lcom/google/android/gms/common/api/ResultCallbacks;

    if-nez v2, :cond_2c

    :goto_14
    const-string/jumbo v1, "Cannot call then() and andFinally() on the same TransformedResult."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrp;->zk:Lcom/google/android/gms/common/api/ResultTransform;

    new-instance v0, Lcom/google/android/gms/internal/zzrp;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrp;->wI:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzrp;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrp;->zl:Lcom/google/android/gms/internal/zzrp;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrp;->zzast()V

    monitor-exit v3

    return-object v0

    :cond_2a
    move v2, v1

    goto :goto_a

    :cond_2c
    move v0, v1

    goto :goto_14

    :catchall_2e
    move-exception v0

    monitor-exit v3
    :try_end_30
    .catchall {:try_start_5 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public zza(Lcom/google/android/gms/common/api/PendingResult;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<*>;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrp;->wG:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/zzrp;->zn:Lcom/google/android/gms/common/api/PendingResult;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrp;->zzast()V

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method zzasu()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrp;->zm:Lcom/google/android/gms/common/api/ResultCallbacks;

    return-void
.end method
