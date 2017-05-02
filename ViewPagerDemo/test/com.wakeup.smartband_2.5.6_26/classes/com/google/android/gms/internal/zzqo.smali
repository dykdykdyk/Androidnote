.class public Lcom/google/android/gms/internal/zzqo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzqq;


# instance fields
.field private final xk:Lcom/google/android/gms/internal/zzqr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzqr;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqo;->xk:Lcom/google/android/gms/internal/zzqr;

    return-void
.end method


# virtual methods
.method public begin()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqo;->xk:Lcom/google/android/gms/internal/zzqr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqr;->zzary()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqo;->xk:Lcom/google/android/gms/internal/zzqr;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqr;->wV:Lcom/google/android/gms/internal/zzqp;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzqp;->xX:Ljava/util/Set;

    return-void
.end method

.method public connect()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqo;->xk:Lcom/google/android/gms/internal/zzqr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqr;->zzarw()V

    return-void
.end method

.method public disconnect()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public onConnectionSuspended(I)V
    .registers 2

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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqo;->xk:Lcom/google/android/gms/internal/zzqr;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqr;->wV:Lcom/google/android/gms/internal/zzqp;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqp;->xQ:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-object p1
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

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "GoogleApiClient is not connected yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
