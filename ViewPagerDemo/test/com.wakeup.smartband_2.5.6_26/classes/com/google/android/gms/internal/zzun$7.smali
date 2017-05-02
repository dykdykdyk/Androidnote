.class Lcom/google/android/gms/internal/zzun$7;
.super Lcom/google/android/gms/internal/zztj$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzun;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/DataType;Z)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zztj$zza",
        "<",
        "Lcom/google/android/gms/fitness/result/DailyTotalResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic Sf:Lcom/google/android/gms/internal/zzun;

.field final synthetic Sl:Lcom/google/android/gms/fitness/data/DataType;

.field final synthetic Sm:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzun;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/DataType;Z)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/zzun$7;->Sf:Lcom/google/android/gms/internal/zzun;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzun$7;->Sl:Lcom/google/android/gms/fitness/data/DataType;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzun$7;->Sm:Z

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zztj$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzun$7;->zza(Lcom/google/android/gms/internal/zztj;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zztj;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzun$7$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzun$7$1;-><init>(Lcom/google/android/gms/internal/zzun$7;)V

    new-instance v1, Lcom/google/android/gms/fitness/request/DailyTotalRequest;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$7;->Sl:Lcom/google/android/gms/fitness/data/DataType;

    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzun$7;->Sm:Z

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/gms/fitness/request/DailyTotalRequest;-><init>(Lcom/google/android/gms/internal/zzto;Lcom/google/android/gms/fitness/data/DataType;Z)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztj;->zzatx()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zztx;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zztx;->zza(Lcom/google/android/gms/fitness/request/DailyTotalRequest;)V

    return-void
.end method

.method protected zzav(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/DailyTotalResult;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$7;->Sl:Lcom/google/android/gms/fitness/data/DataType;

    invoke-static {p1, v0}, Lcom/google/android/gms/fitness/result/DailyTotalResult;->zza(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/result/DailyTotalResult;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzun$7;->zzav(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/DailyTotalResult;

    move-result-object v0

    return-object v0
.end method
