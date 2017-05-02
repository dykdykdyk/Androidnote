.class final Lcom/google/android/gms/location/internal/zzl$zzc;
.super Lcom/google/android/gms/location/internal/zzj$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/internal/zzl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "zzc"
.end annotation


# instance fields
.field private aie:Lcom/google/android/gms/internal/zzqc$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzqc$zzb",
            "<",
            "Lcom/google/android/gms/location/LocationSettingsResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzqc$zzb;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzqc$zzb",
            "<",
            "Lcom/google/android/gms/location/LocationSettingsResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/location/internal/zzj$zza;-><init>()V

    if-eqz p1, :cond_f

    const/4 v0, 0x1

    :goto_6
    const-string/jumbo v1, "listener can\'t be null."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/location/internal/zzl$zzc;->aie:Lcom/google/android/gms/internal/zzqc$zzb;

    return-void

    :cond_f
    const/4 v0, 0x0

    goto :goto_6
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/location/LocationSettingsResult;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/internal/zzl$zzc;->aie:Lcom/google/android/gms/internal/zzqc$zzb;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzqc$zzb;->setResult(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/location/internal/zzl$zzc;->aie:Lcom/google/android/gms/internal/zzqc$zzb;

    return-void
.end method
