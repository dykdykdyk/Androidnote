.class Lcom/google/android/gms/maps/StreetViewPanoramaView$zzb;
.super Lcom/google/android/gms/dynamic/zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/StreetViewPanoramaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/dynamic/zza",
        "<",
        "Lcom/google/android/gms/maps/StreetViewPanoramaView$zza;",
        ">;"
    }
.end annotation


# instance fields
.field protected alG:Lcom/google/android/gms/dynamic/zzf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/dynamic/zzf",
            "<",
            "Lcom/google/android/gms/maps/StreetViewPanoramaView$zza;",
            ">;"
        }
    .end annotation
.end field

.field private final alN:Landroid/view/ViewGroup;

.field private final amb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/OnStreetViewPanoramaReadyCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final amn:Lcom/google/android/gms/maps/StreetViewPanoramaOptions;

.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/google/android/gms/maps/StreetViewPanoramaOptions;)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/dynamic/zza;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$zzb;->amb:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$zzb;->alN:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$zzb;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$zzb;->amn:Lcom/google/android/gms/maps/StreetViewPanoramaOptions;

    return-void
.end method


# virtual methods
.method public getStreetViewPanoramaAsync(Lcom/google/android/gms/maps/OnStreetViewPanoramaReadyCallback;)V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/maps/StreetViewPanoramaView$zzb;->zzbdt()Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/google/android/gms/maps/StreetViewPanoramaView$zzb;->zzbdt()Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/StreetViewPanoramaView$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/StreetViewPanoramaView$zza;->getStreetViewPanoramaAsync(Lcom/google/android/gms/maps/OnStreetViewPanoramaReadyCallback;)V

    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$zzb;->amb:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f
.end method

.method protected zza(Lcom/google/android/gms/dynamic/zzf;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/dynamic/zzf",
            "<",
            "Lcom/google/android/gms/maps/StreetViewPanoramaView$zza;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$zzb;->alG:Lcom/google/android/gms/dynamic/zzf;

    invoke-virtual {p0}, Lcom/google/android/gms/maps/StreetViewPanoramaView$zzb;->zzbru()V

    return-void
.end method

.method public zzbru()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$zzb;->alG:Lcom/google/android/gms/dynamic/zzf;

    if-eqz v0, :cond_50

    invoke-virtual {p0}, Lcom/google/android/gms/maps/StreetViewPanoramaView$zzb;->zzbdt()Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-result-object v0

    if-nez v0, :cond_50

    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$zzb;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/zzai;->zzdp(Landroid/content/Context;)Lcom/google/android/gms/maps/internal/zzc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$zzb;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/zze;->zzac(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$zzb;->amn:Lcom/google/android/gms/maps/StreetViewPanoramaOptions;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/maps/internal/zzc;->zza(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/maps/StreetViewPanoramaOptions;)Lcom/google/android/gms/maps/internal/IStreetViewPanoramaViewDelegate;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$zzb;->alG:Lcom/google/android/gms/dynamic/zzf;

    new-instance v2, Lcom/google/android/gms/maps/StreetViewPanoramaView$zza;

    iget-object v3, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$zzb;->alN:Landroid/view/ViewGroup;

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/maps/StreetViewPanoramaView$zza;-><init>(Landroid/view/ViewGroup;Lcom/google/android/gms/maps/internal/IStreetViewPanoramaViewDelegate;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/dynamic/zzf;->zza(Lcom/google/android/gms/dynamic/LifecycleDelegate;)V

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$zzb;->amb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/OnStreetViewPanoramaReadyCallback;

    invoke-virtual {p0}, Lcom/google/android/gms/maps/StreetViewPanoramaView$zzb;->zzbdt()Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/StreetViewPanoramaView$zza;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/StreetViewPanoramaView$zza;->getStreetViewPanoramaAsync(Lcom/google/android/gms/maps/OnStreetViewPanoramaReadyCallback;)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_43} :catch_44
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_a .. :try_end_43} :catch_51

    goto :goto_2e

    :catch_44
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1

    :cond_4b
    :try_start_4b
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$zzb;->amb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_50} :catch_44
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_4b .. :try_end_50} :catch_51

    :cond_50
    :goto_50
    return-void

    :catch_51
    move-exception v0

    goto :goto_50
.end method
