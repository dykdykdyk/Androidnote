.class Lcom/google/android/gms/internal/zzuq$4;
.super Lcom/google/android/gms/internal/zztm$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzuq;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/zzt;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/zzuq$zza;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic SA:Lcom/google/android/gms/fitness/data/zzt;

.field final synthetic Sj:Landroid/app/PendingIntent;

.field final synthetic Su:Lcom/google/android/gms/internal/zzuq;

.field final synthetic Sz:Lcom/google/android/gms/internal/zzuq$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzuq;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzuq$zza;Lcom/google/android/gms/fitness/data/zzt;Landroid/app/PendingIntent;)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/gms/internal/zzuq$4;->Su:Lcom/google/android/gms/internal/zzuq;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzuq$4;->Sz:Lcom/google/android/gms/internal/zzuq$zza;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzuq$4;->SA:Lcom/google/android/gms/fitness/data/zzt;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzuq$4;->Sj:Landroid/app/PendingIntent;

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzuq$4;->zza(Lcom/google/android/gms/internal/zztm;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zztm;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/internal/zzuq$zzc;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzuq$4;->Sz:Lcom/google/android/gms/internal/zzuq$zza;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/google/android/gms/internal/zzuq$zzc;-><init>(Lcom/google/android/gms/internal/zzqc$zzb;Lcom/google/android/gms/internal/zzuq$zza;Lcom/google/android/gms/internal/zzuq$1;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztm;->zzatx()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzua;

    new-instance v2, Lcom/google/android/gms/fitness/request/SensorUnregistrationRequest;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzuq$4;->SA:Lcom/google/android/gms/fitness/data/zzt;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzuq$4;->Sj:Landroid/app/PendingIntent;

    invoke-direct {v2, v3, v4, v1}, Lcom/google/android/gms/fitness/request/SensorUnregistrationRequest;-><init>(Lcom/google/android/gms/fitness/data/zzt;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/zzuh;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzua;->zza(Lcom/google/android/gms/fitness/request/SensorUnregistrationRequest;)V

    return-void
.end method

.method protected zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .registers 2

    return-object p1
.end method

.method protected synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzuq$4;->zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method
