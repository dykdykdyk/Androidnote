.class Lcom/google/android/gms/internal/zzup$3;
.super Lcom/google/android/gms/internal/zztl$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzup;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/Subscription;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sq:Lcom/google/android/gms/internal/zzup;

.field final synthetic Sr:Lcom/google/android/gms/fitness/data/Subscription;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzup;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/Subscription;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/zzup$3;->Sq:Lcom/google/android/gms/internal/zzup;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzup$3;->Sr:Lcom/google/android/gms/fitness/data/Subscription;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zztl$zzc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zztl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzup$3;->zza(Lcom/google/android/gms/internal/zztl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zztl;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/internal/zzus;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzus;-><init>(Lcom/google/android/gms/internal/zzqc$zzb;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztl;->zzatx()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zztz;

    new-instance v2, Lcom/google/android/gms/fitness/request/SubscribeRequest;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzup$3;->Sr:Lcom/google/android/gms/fitness/data/Subscription;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v1}, Lcom/google/android/gms/fitness/request/SubscribeRequest;-><init>(Lcom/google/android/gms/fitness/data/Subscription;ZLcom/google/android/gms/internal/zzuh;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zztz;->zza(Lcom/google/android/gms/fitness/request/SubscribeRequest;)V

    return-void
.end method
