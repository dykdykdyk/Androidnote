.class Lcom/google/android/gms/internal/zzur$5;
.super Lcom/google/android/gms/internal/zztn$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzur;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/PendingIntent;I)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic SD:Lcom/google/android/gms/internal/zzur;

.field final synthetic SH:I

.field final synthetic Sx:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzur;Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/PendingIntent;I)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/zzur$5;->SD:Lcom/google/android/gms/internal/zzur;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzur$5;->Sx:Landroid/app/PendingIntent;

    iput p4, p0, Lcom/google/android/gms/internal/zzur$5;->SH:I

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zztn$zzc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzur$5;->zza(Lcom/google/android/gms/internal/zztn;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zztn;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/internal/zzus;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzus;-><init>(Lcom/google/android/gms/internal/zzqc$zzb;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztn;->zzatx()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzub;

    new-instance v2, Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzur$5;->Sx:Landroid/app/PendingIntent;

    iget v4, p0, Lcom/google/android/gms/internal/zzur$5;->SH:I

    invoke-direct {v2, v3, v1, v4}, Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;-><init>(Landroid/app/PendingIntent;Lcom/google/android/gms/internal/zzuh;I)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzub;->zza(Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;)V

    return-void
.end method
