.class final Lcom/google/android/gms/location/internal/zzl$zzb;
.super Lcom/google/android/gms/location/internal/zzh$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/internal/zzl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "zzb"
.end annotation


# instance fields
.field private aie:Lcom/google/android/gms/internal/zzqc$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzqc$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzqc$zzb;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzqc$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/location/internal/zzh$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/location/internal/zzl$zzb;->aie:Lcom/google/android/gms/internal/zzqc$zzb;

    return-void
.end method

.method private zzun(I)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/location/internal/zzl$zzb;->aie:Lcom/google/android/gms/internal/zzqc$zzb;

    if-nez v0, :cond_e

    const-string/jumbo v0, "LocationClientImpl"

    const-string/jumbo v1, "onRemoveGeofencesResult called multiple times"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d
    return-void

    :cond_e
    invoke-static {p1}, Lcom/google/android/gms/location/LocationStatusCodes;->zzuj(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/location/LocationStatusCodes;->zzuk(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/internal/zzl$zzb;->aie:Lcom/google/android/gms/internal/zzqc$zzb;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzqc$zzb;->setResult(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/location/internal/zzl$zzb;->aie:Lcom/google/android/gms/internal/zzqc$zzb;

    goto :goto_d
.end method


# virtual methods
.method public zza(ILandroid/app/PendingIntent;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/location/internal/zzl$zzb;->zzun(I)V

    return-void
.end method

.method public zza(I[Ljava/lang/String;)V
    .registers 5

    const-string/jumbo v0, "LocationClientImpl"

    const-string/jumbo v1, "Unexpected call to onAddGeofencesResult"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public zzb(I[Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/location/internal/zzl$zzb;->zzun(I)V

    return-void
.end method
