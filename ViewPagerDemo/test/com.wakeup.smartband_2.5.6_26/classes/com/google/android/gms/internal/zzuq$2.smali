.class Lcom/google/android/gms/internal/zzuq$2;
.super Lcom/google/android/gms/internal/zztm$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzuq;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/SensorRequest;Lcom/google/android/gms/fitness/data/zzt;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Su:Lcom/google/android/gms/internal/zzuq;

.field final synthetic Sv:Lcom/google/android/gms/fitness/request/SensorRequest;

.field final synthetic Sw:Lcom/google/android/gms/fitness/data/zzt;

.field final synthetic Sx:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzuq;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/SensorRequest;Lcom/google/android/gms/fitness/data/zzt;Landroid/app/PendingIntent;)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/gms/internal/zzuq$2;->Su:Lcom/google/android/gms/internal/zzuq;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzuq$2;->Sv:Lcom/google/android/gms/fitness/request/SensorRequest;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzuq$2;->Sw:Lcom/google/android/gms/fitness/data/zzt;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzuq$2;->Sx:Landroid/app/PendingIntent;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zztm$zzc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zztm;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzuq$2;->zza(Lcom/google/android/gms/internal/zztm;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zztm;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/internal/zzus;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzus;-><init>(Lcom/google/android/gms/internal/zzqc$zzb;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztm;->zzatx()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzua;

    new-instance v2, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzuq$2;->Sv:Lcom/google/android/gms/fitness/request/SensorRequest;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzuq$2;->Sw:Lcom/google/android/gms/fitness/data/zzt;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzuq$2;->Sx:Landroid/app/PendingIntent;

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;-><init>(Lcom/google/android/gms/fitness/request/SensorRequest;Lcom/google/android/gms/fitness/data/zzt;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/zzuh;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzua;->zza(Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;)V

    return-void
.end method

.method protected zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .registers 2

    return-object p1
.end method

.method protected synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzuq$2;->zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method
