.class Lcom/google/android/gms/internal/zzul$3;
.super Lcom/google/android/gms/internal/zzth$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzul;->disableFit(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sb:Lcom/google/android/gms/internal/zzul;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzul;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzul$3;->Sb:Lcom/google/android/gms/internal/zzul;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzth$zzc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzth;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzul$3;->zza(Lcom/google/android/gms/internal/zzth;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzth;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/internal/zzus;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzus;-><init>(Lcom/google/android/gms/internal/zzqc$zzb;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzth;->zzatx()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zztv;

    new-instance v2, Lcom/google/android/gms/fitness/request/DisableFitRequest;

    invoke-direct {v2, v1}, Lcom/google/android/gms/fitness/request/DisableFitRequest;-><init>(Lcom/google/android/gms/internal/zzuh;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zztv;->zza(Lcom/google/android/gms/fitness/request/DisableFitRequest;)V

    return-void
.end method
