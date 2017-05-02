.class Lcom/google/android/gms/internal/zzuk$6;
.super Lcom/google/android/gms/internal/zztg$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzuk;->listClaimedBleDevices(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zztg$zza",
        "<",
        "Lcom/google/android/gms/fitness/result/BleDevicesResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic RW:Lcom/google/android/gms/internal/zzuk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzuk;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzuk$6;->RW:Lcom/google/android/gms/internal/zzuk;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zztg$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzuk$6;->zza(Lcom/google/android/gms/internal/zztg;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zztg;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/internal/zzuk$zza;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzuk$zza;-><init>(Lcom/google/android/gms/internal/zzqc$zzb;Lcom/google/android/gms/internal/zzuk$1;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztg;->zzatx()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zztu;

    new-instance v2, Lcom/google/android/gms/fitness/request/ListClaimedBleDevicesRequest;

    invoke-direct {v2, v1}, Lcom/google/android/gms/fitness/request/ListClaimedBleDevicesRequest;-><init>(Lcom/google/android/gms/internal/zzuu;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zztu;->zza(Lcom/google/android/gms/fitness/request/ListClaimedBleDevicesRequest;)V

    return-void
.end method

.method protected zzas(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/BleDevicesResult;
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/fitness/result/BleDevicesResult;->zzba(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/BleDevicesResult;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzuk$6;->zzas(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/BleDevicesResult;

    move-result-object v0

    return-object v0
.end method
