.class Lcom/google/android/gms/internal/zzun$5;
.super Lcom/google/android/gms/internal/zztj$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzun;->unregisterDataUpdateListener(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sf:Lcom/google/android/gms/internal/zzun;

.field final synthetic Sj:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzun;Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/PendingIntent;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/zzun$5;->Sf:Lcom/google/android/gms/internal/zzun;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzun$5;->Sj:Landroid/app/PendingIntent;

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzun$5;->zza(Lcom/google/android/gms/internal/zztj;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zztj;)V
    .registers 6
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

    new-instance v2, Lcom/google/android/gms/fitness/request/DataUpdateListenerUnregistrationRequest;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzun$5;->Sj:Landroid/app/PendingIntent;

    invoke-direct {v2, v3, v1}, Lcom/google/android/gms/fitness/request/DataUpdateListenerUnregistrationRequest;-><init>(Landroid/app/PendingIntent;Landroid/os/IBinder;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zztx;->zza(Lcom/google/android/gms/fitness/request/DataUpdateListenerUnregistrationRequest;)V

    return-void
.end method
