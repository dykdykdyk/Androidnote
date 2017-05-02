.class public Lcom/google/android/gms/internal/zzqm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzqq;


# instance fields
.field private final xk:Lcom/google/android/gms/internal/zzqr;

.field private xl:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzqr;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzqm;->xl:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqm;->xk:Lcom/google/android/gms/internal/zzqr;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzqm;)Lcom/google/android/gms/internal/zzqr;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqm;->xk:Lcom/google/android/gms/internal/zzqr;

    return-object v0
.end method

.method private zzf(Lcom/google/android/gms/internal/zzqc$zza;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            ">(",
            "Lcom/google/android/gms/internal/zzqc$zza",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            "TA;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqm;->xk:Lcom/google/android/gms/internal/zzqr;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqr;->wV:Lcom/google/android/gms/internal/zzqp;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqp;->yc:Lcom/google/android/gms/internal/zzrq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzrq;->zzb(Lcom/google/android/gms/internal/zzqe;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqm;->xk:Lcom/google/android/gms/internal/zzqr;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqr;->wV:Lcom/google/android/gms/internal/zzqp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzqc$zza;->zzapp()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzqp;->zzb(Lcom/google/android/gms/common/api/Api$zzc;)Lcom/google/android/gms/common/api/Api$zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->isConnected()Z

    move-result v1

    if-nez v1, :cond_34

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqm;->xk:Lcom/google/android/gms/internal/zzqr;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzqr;->yl:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzqc$zza;->zzapp()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzqc$zza;->zzz(Lcom/google/android/gms/common/api/Status;)V

    :goto_33
    return-void

    :cond_34
    instance-of v1, v0, Lcom/google/android/gms/common/internal/zzai;

    if-eqz v1, :cond_3e

    check-cast v0, Lcom/google/android/gms/common/internal/zzai;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzai;->zzavk()Lcom/google/android/gms/common/api/Api$zzg;

    move-result-object v0

    :cond_3e
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzqc$zza;->zzb(Lcom/google/android/gms/common/api/Api$zzb;)V

    goto :goto_33
.end method


# virtual methods
.method public begin()V
    .registers 1

    return-void
.end method

.method public connect()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzqm;->xl:Z

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzqm;->xl:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqm;->xk:Lcom/google/android/gms/internal/zzqr;

    new-instance v1, Lcom/google/android/gms/internal/zzqm$2;

    invoke-direct {v1, p0, p0}, Lcom/google/android/gms/internal/zzqm$2;-><init>(Lcom/google/android/gms/internal/zzqm;Lcom/google/android/gms/internal/zzqq;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzqr;->zza(Lcom/google/android/gms/internal/zzqr$zza;)V

    :cond_11
    return-void
.end method

.method public disconnect()Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzqm;->xl:Z

    if-eqz v2, :cond_8

    move v0, v1

    :goto_7
    return v0

    :cond_8
    iget-object v2, p0, Lcom/google/android/gms/internal/zzqm;->xk:Lcom/google/android/gms/internal/zzqr;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzqr;->wV:Lcom/google/android/gms/internal/zzqp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzqp;->zzaru()Z

    move-result v2

    if-eqz v2, :cond_30

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzqm;->xl:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqm;->xk:Lcom/google/android/gms/internal/zzqr;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqr;->wV:Lcom/google/android/gms/internal/zzqp;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqp;->yb:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzrp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrp;->zzasu()V

    goto :goto_1e

    :cond_2e
    move v0, v1

    goto :goto_7

    :cond_30
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqm;->xk:Lcom/google/android/gms/internal/zzqr;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzqr;->zzi(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_7
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public onConnectionSuspended(I)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqm;->xk:Lcom/google/android/gms/internal/zzqr;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzqr;->zzi(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqm;->xk:Lcom/google/android/gms/internal/zzqr;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqr;->yp:Lcom/google/android/gms/internal/zzqy$zza;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzqm;->xl:Z

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/zzqy$zza;->zzc(IZ)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/ConnectionResult;",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;I)V"
        }
    .end annotation

    return-void
.end method

.method zzarh()V
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzqm;->xl:Z

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzqm;->xl:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqm;->xk:Lcom/google/android/gms/internal/zzqr;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqr;->wV:Lcom/google/android/gms/internal/zzqp;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqp;->yc:Lcom/google/android/gms/internal/zzrq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrq;->release()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqm;->disconnect()Z

    :cond_13
    return-void
.end method

.method public zzc(Lcom/google/android/gms/internal/zzqc$zza;)Lcom/google/android/gms/internal/zzqc$zza;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "R::",
            "Lcom/google/android/gms/common/api/Result;",
            "T:",
            "Lcom/google/android/gms/internal/zzqc$zza",
            "<TR;TA;>;>(TT;)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzqm;->zzd(Lcom/google/android/gms/internal/zzqc$zza;)Lcom/google/android/gms/internal/zzqc$zza;

    move-result-object v0

    return-object v0
.end method

.method public zzd(Lcom/google/android/gms/internal/zzqc$zza;)Lcom/google/android/gms/internal/zzqc$zza;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "T:",
            "Lcom/google/android/gms/internal/zzqc$zza",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzqm;->zzf(Lcom/google/android/gms/internal/zzqc$zza;)V
    :try_end_3
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-object p1

    :catch_4
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqm;->xk:Lcom/google/android/gms/internal/zzqr;

    new-instance v1, Lcom/google/android/gms/internal/zzqm$1;

    invoke-direct {v1, p0, p0}, Lcom/google/android/gms/internal/zzqm$1;-><init>(Lcom/google/android/gms/internal/zzqm;Lcom/google/android/gms/internal/zzqq;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzqr;->zza(Lcom/google/android/gms/internal/zzqr$zza;)V

    goto :goto_3
.end method
