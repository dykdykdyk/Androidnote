.class Lcom/google/android/gms/internal/zzun$1;
.super Lcom/google/android/gms/internal/zztj$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzun;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/DataSet;Z)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sd:Lcom/google/android/gms/fitness/data/DataSet;

.field final synthetic Se:Z

.field final synthetic Sf:Lcom/google/android/gms/internal/zzun;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzun;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/DataSet;Z)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/zzun$1;->Sf:Lcom/google/android/gms/internal/zzun;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzun$1;->Sd:Lcom/google/android/gms/fitness/data/DataSet;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzun$1;->Se:Z

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zztj$zzc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zztj;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzun$1;->zza(Lcom/google/android/gms/internal/zztj;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zztj;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/internal/zzus;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzus;-><init>(Lcom/google/android/gms/internal/zzqc$zzb;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztj;->zzatx()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zztx;

    new-instance v2, Lcom/google/android/gms/fitness/request/DataInsertRequest;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzun$1;->Sd:Lcom/google/android/gms/fitness/data/DataSet;

    iget-boolean v4, p0, Lcom/google/android/gms/internal/zzun$1;->Se:Z

    invoke-direct {v2, v3, v1, v4}, Lcom/google/android/gms/fitness/request/DataInsertRequest;-><init>(Lcom/google/android/gms/fitness/data/DataSet;Lcom/google/android/gms/internal/zzuh;Z)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zztx;->zza(Lcom/google/android/gms/fitness/request/DataInsertRequest;)V

    return-void
.end method
