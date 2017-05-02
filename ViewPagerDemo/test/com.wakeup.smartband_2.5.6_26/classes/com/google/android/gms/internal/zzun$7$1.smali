.class Lcom/google/android/gms/internal/zzun$7$1;
.super Lcom/google/android/gms/internal/zzto$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzun$7;->zza(Lcom/google/android/gms/internal/zztj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sn:Lcom/google/android/gms/internal/zzun$7;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzun$7;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzun$7$1;->Sn:Lcom/google/android/gms/internal/zzun$7;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzto$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/fitness/result/DailyTotalResult;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$7$1;->Sn:Lcom/google/android/gms/internal/zzun$7;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzun$7;->zzc(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
