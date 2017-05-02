.class abstract Lcom/google/android/gms/internal/zzpy$zza;
.super Lcom/google/android/gms/internal/zzpy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzpy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "zza"
.end annotation


# instance fields
.field protected final wg:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/zzrd$zzb",
            "<*>;",
            "Lcom/google/android/gms/internal/zzri;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final wh:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILcom/google/android/gms/tasks/TaskCompletionSource;Landroid/util/SparseArray;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
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

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzpy;-><init>(II)V

    iput-object p4, p0, Lcom/google/android/gms/internal/zzpy$zza;->wg:Landroid/util/SparseArray;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzpy$zza;->wh:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method

.method private zza(Landroid/os/RemoteException;)V
    .registers 6

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x8

    invoke-virtual {p1}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzpy$zza;->zzx(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method


# virtual methods
.method public cancel()Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy$zza;->wh:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v1, Lcom/google/android/gms/common/api/zza;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->wc:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/zza;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    const/4 v0, 0x1

    return v0
.end method

.method public zza(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/gms/internal/zzrq;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected abstract zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public final zzb(Lcom/google/android/gms/common/api/Api$zzb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzpy$zza;->zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    :try_end_3
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_3} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_9

    :goto_3
    return-void

    :catch_4
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzpy$zza;->zza(Landroid/os/RemoteException;)V

    throw v0

    :catch_9
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzpy$zza;->zza(Landroid/os/RemoteException;)V

    goto :goto_3
.end method

.method public zzx(Lcom/google/android/gms/common/api/Status;)V
    .registers 4
    .param p1    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy$zza;->wh:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v1, Lcom/google/android/gms/common/api/zza;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/api/zza;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    return-void
.end method
