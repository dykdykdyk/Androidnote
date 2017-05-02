.class Lcom/google/android/gms/internal/zzuk$2;
.super Lcom/google/android/gms/internal/zztg$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzuk;->stopBleScan(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/BleScanCallback;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic RW:Lcom/google/android/gms/internal/zzuk;

.field final synthetic RX:Lcom/google/android/gms/fitness/request/BleScanCallback;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzuk;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/BleScanCallback;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/zzuk$2;->RW:Lcom/google/android/gms/internal/zzuk;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzuk$2;->RX:Lcom/google/android/gms/fitness/request/BleScanCallback;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zztg$zzc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zztg;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzuk$2;->zza(Lcom/google/android/gms/internal/zztg;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zztg;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/internal/zzus;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzus;-><init>(Lcom/google/android/gms/internal/zzqc$zzb;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztg;->zzatx()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zztu;

    new-instance v2, Lcom/google/android/gms/fitness/request/StopBleScanRequest;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzuk$2;->RX:Lcom/google/android/gms/fitness/request/BleScanCallback;

    invoke-direct {v2, v3, v1}, Lcom/google/android/gms/fitness/request/StopBleScanRequest;-><init>(Lcom/google/android/gms/fitness/request/BleScanCallback;Lcom/google/android/gms/internal/zzuh;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zztu;->zza(Lcom/google/android/gms/fitness/request/StopBleScanRequest;)V

    return-void
.end method
