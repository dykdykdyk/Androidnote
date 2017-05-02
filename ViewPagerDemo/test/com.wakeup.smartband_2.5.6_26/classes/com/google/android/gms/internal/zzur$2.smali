.class Lcom/google/android/gms/internal/zzur$2;
.super Lcom/google/android/gms/internal/zztn$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzur;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zztn$zza",
        "<",
        "Lcom/google/android/gms/fitness/result/SessionStopResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic SD:Lcom/google/android/gms/internal/zzur;

.field final synthetic SE:Ljava/lang/String;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzur;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/zzur$2;->SD:Lcom/google/android/gms/internal/zzur;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzur$2;->val$name:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzur$2;->SE:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zztn$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zztn;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzur$2;->zza(Lcom/google/android/gms/internal/zztn;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zztn;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/internal/zzur$zzb;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzur$zzb;-><init>(Lcom/google/android/gms/internal/zzqc$zzb;Lcom/google/android/gms/internal/zzur$1;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztn;->zzatx()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzub;

    new-instance v2, Lcom/google/android/gms/fitness/request/SessionStopRequest;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzur$2;->val$name:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzur$2;->SE:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v1}, Lcom/google/android/gms/fitness/request/SessionStopRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzug;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzub;->zza(Lcom/google/android/gms/fitness/request/SessionStopRequest;)V

    return-void
.end method

.method protected zzay(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/SessionStopResult;
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/fitness/result/SessionStopResult;->zzbf(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/SessionStopResult;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzur$2;->zzay(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/SessionStopResult;

    move-result-object v0

    return-object v0
.end method
