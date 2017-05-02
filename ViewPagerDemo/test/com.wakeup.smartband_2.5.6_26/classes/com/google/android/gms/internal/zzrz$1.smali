.class Lcom/google/android/gms/internal/zzrz$1;
.super Lcom/google/android/gms/internal/zzsa$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzrz;->zzg(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Di:Lcom/google/android/gms/internal/zzrz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzrz;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrz$1;->Di:Lcom/google/android/gms/internal/zzrz;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzsa$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zzsb;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzrz$1;->zza(Lcom/google/android/gms/internal/zzsb;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzsb;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsb;->zzatx()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzsd;

    new-instance v1, Lcom/google/android/gms/internal/zzrz$zza;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzrz$zza;-><init>(Lcom/google/android/gms/internal/zzqc$zzb;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzsd;->zza(Lcom/google/android/gms/internal/zzsc;)V

    return-void
.end method
