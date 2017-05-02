.class public final Lcom/google/android/gms/internal/zzqb;
.super Lcom/google/android/gms/internal/zzqe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzqe",
        "<",
        "Lcom/google/android/gms/common/api/zzc;",
        ">;"
    }
.end annotation


# instance fields
.field private wv:I

.field private ww:Z


# direct methods
.method private zza(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 5

    const/4 v2, 0x0

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    invoke-virtual {v2}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v0

    if-ge v1, v0, :cond_16

    invoke-virtual {v2, v1}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpz;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/zzqb;->zza(Lcom/google/android/gms/internal/zzpz;Lcom/google/android/gms/common/ConnectionResult;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_16
    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzpz;Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpz",
            "<*>;",
            "Lcom/google/android/gms/common/ConnectionResult;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v0, 0x0

    monitor-enter v0

    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/google/android/gms/internal/zzqb;->wv:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzqb;->wv:I

    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzqb;->ww:Z

    :cond_16
    iget v0, p0, Lcom/google/android/gms/internal/zzqb;->wv:I

    if-nez v0, :cond_36

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzqb;->ww:Z

    if-eqz v0, :cond_39

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    move-object v1, v0

    :goto_26
    const/4 v0, 0x0

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v0

    if-ne v0, v2, :cond_3d

    new-instance v0, Lcom/google/android/gms/common/api/zzb;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/zzb;-><init>(Lcom/google/android/gms/common/api/Status;Landroid/support/v4/util/ArrayMap;)V

    :goto_33
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzqb;->zzc(Lcom/google/android/gms/common/api/Result;)V

    :cond_36
    const/4 v0, 0x0

    monitor-exit v0

    return-void

    :cond_39
    sget-object v0, Lcom/google/android/gms/common/api/Status;->vY:Lcom/google/android/gms/common/api/Status;

    move-object v1, v0

    goto :goto_26

    :cond_3d
    new-instance v0, Lcom/google/android/gms/common/api/zzc;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/zzc;-><init>(Lcom/google/android/gms/common/api/Status;Landroid/support/v4/util/ArrayMap;)V

    goto :goto_33

    :catchall_44
    move-exception v0

    const/4 v1, 0x0

    monitor-exit v1
    :try_end_47
    .catchall {:try_start_4 .. :try_end_47} :catchall_44

    throw v0
.end method

.method public zzaqm()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/zzpz",
            "<*>;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzqb;->zzy(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/zzc;

    move-result-object v0

    return-object v0
.end method

.method protected zzy(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/zzc;
    .registers 4

    const/4 v0, 0x0

    monitor-enter v0

    :try_start_2
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzqb;->zza(Lcom/google/android/gms/common/ConnectionResult;)V

    const/4 v0, 0x0

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    new-instance v0, Lcom/google/android/gms/common/api/zzb;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/common/api/zzb;-><init>(Lcom/google/android/gms/common/api/Status;Landroid/support/v4/util/ArrayMap;)V

    :goto_1a
    const/4 v1, 0x0

    monitor-exit v1

    return-object v0

    :cond_1d
    new-instance v0, Lcom/google/android/gms/common/api/zzc;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/common/api/zzc;-><init>(Lcom/google/android/gms/common/api/Status;Landroid/support/v4/util/ArrayMap;)V

    goto :goto_1a

    :catchall_24
    move-exception v0

    const/4 v1, 0x0

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_2 .. :try_end_27} :catchall_24

    throw v0
.end method
