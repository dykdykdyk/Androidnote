.class Lcom/google/android/gms/internal/zzul$2;
.super Lcom/google/android/gms/internal/zzth$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzul;->readDataType(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzth$zza",
        "<",
        "Lcom/google/android/gms/fitness/result/DataTypeResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic Sb:Lcom/google/android/gms/internal/zzul;

.field final synthetic Sc:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzul;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/zzul$2;->Sb:Lcom/google/android/gms/internal/zzul;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzul$2;->Sc:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzth$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zzth;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzul$2;->zza(Lcom/google/android/gms/internal/zzth;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzth;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/internal/zzul$zza;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzul$zza;-><init>(Lcom/google/android/gms/internal/zzqc$zzb;Lcom/google/android/gms/internal/zzul$1;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzth;->zzatx()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zztv;

    new-instance v2, Lcom/google/android/gms/fitness/request/DataTypeReadRequest;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzul$2;->Sc:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lcom/google/android/gms/fitness/request/DataTypeReadRequest;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zztr;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zztv;->zza(Lcom/google/android/gms/fitness/request/DataTypeReadRequest;)V

    return-void
.end method

.method protected zzat(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/DataTypeResult;
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/fitness/result/DataTypeResult;->zzbc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/DataTypeResult;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzul$2;->zzat(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/DataTypeResult;

    move-result-object v0

    return-object v0
.end method
