.class Lcom/google/android/gms/location/internal/zzd$4;
.super Lcom/google/android/gms/location/internal/zzd$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/location/internal/zzd;->setMockLocation(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/location/Location;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ahO:Lcom/google/android/gms/location/internal/zzd;

.field final synthetic ahR:Landroid/location/Location;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/internal/zzd;Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/location/Location;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/location/internal/zzd$4;->ahO:Lcom/google/android/gms/location/internal/zzd;

    iput-object p3, p0, Lcom/google/android/gms/location/internal/zzd$4;->ahR:Landroid/location/Location;

    invoke-direct {p0, p2}, Lcom/google/android/gms/location/internal/zzd$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/location/internal/zzl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/internal/zzd$4;->zza(Lcom/google/android/gms/location/internal/zzl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/location/internal/zzl;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/internal/zzd$4;->ahR:Landroid/location/Location;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/location/internal/zzl;->zzd(Landroid/location/Location;)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->vY:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/location/internal/zzd$4;->zzc(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
