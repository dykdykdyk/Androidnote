.class Lcom/google/android/gms/maps/SupportMapFragment$zzb;
.super Lcom/google/android/gms/dynamic/zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/SupportMapFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/dynamic/zza",
        "<",
        "Lcom/google/android/gms/maps/SupportMapFragment$zza;",
        ">;"
    }
.end annotation


# instance fields
.field private final Ov:Landroid/support/v4/app/Fragment;

.field protected alG:Lcom/google/android/gms/dynamic/zzf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/dynamic/zzf",
            "<",
            "Lcom/google/android/gms/maps/SupportMapFragment$zza;",
            ">;"
        }
    .end annotation
.end field

.field private final alH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/OnMapReadyCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/support/v4/app/Fragment;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/dynamic/zza;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment$zzb;->alH:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/maps/SupportMapFragment$zzb;->Ov:Landroid/support/v4/app/Fragment;

    return-void
.end method

.method private setActivity(Landroid/app/Activity;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/maps/SupportMapFragment$zzb;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/google/android/gms/maps/SupportMapFragment$zzb;->zzbru()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/maps/SupportMapFragment$zzb;Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/maps/SupportMapFragment$zzb;->setActivity(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/maps/SupportMapFragment$zzb;->zzbdt()Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/google/android/gms/maps/SupportMapFragment$zzb;->zzbdt()Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/SupportMapFragment$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/SupportMapFragment$zza;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment$zzb;->alH:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f
.end method

.method public onEnterAmbient(Landroid/os/Bundle;)V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/maps/SupportMapFragment$zzb;->zzbdt()Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/google/android/gms/maps/SupportMapFragment$zzb;->zzbdt()Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/SupportMapFragment$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/SupportMapFragment$zza;->onEnterAmbient(Landroid/os/Bundle;)V

    :cond_f
    return-void
.end method

.method public onExitAmbient()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/maps/SupportMapFragment$zzb;->zzbdt()Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/google/android/gms/maps/SupportMapFragment$zzb;->zzbdt()Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/SupportMapFragment$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/SupportMapFragment$zza;->onExitAmbient()V

    :cond_f
    return-void
.end method

.method protected zza(Lcom/google/android/gms/dynamic/zzf;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/dynamic/zzf",
            "<",
            "Lcom/google/android/gms/maps/SupportMapFragment$zza;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/maps/SupportMapFragment$zzb;->alG:Lcom/google/android/gms/dynamic/zzf;

    invoke-virtual {p0}, Lcom/google/android/gms/maps/SupportMapFragment$zzb;->zzbru()V

    return-void
.end method

.method public zzbru()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment$zzb;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment$zzb;->alG:Lcom/google/android/gms/dynamic/zzf;

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lcom/google/android/gms/maps/SupportMapFragment$zzb;->zzbdt()Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-result-object v0

    if-nez v0, :cond_25

    :try_start_e
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment$zzb;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/maps/MapsInitializer;->initialize(Landroid/content/Context;)I

    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment$zzb;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/zzai;->zzdp(Landroid/content/Context;)Lcom/google/android/gms/maps/internal/zzc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/maps/SupportMapFragment$zzb;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/zze;->zzac(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/zzc;->zzah(Lcom/google/android/gms/dynamic/zzd;)Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;

    move-result-object v0

    if-nez v0, :cond_26

    :cond_25
    :goto_25
    return-void

    :cond_26
    iget-object v1, p0, Lcom/google/android/gms/maps/SupportMapFragment$zzb;->alG:Lcom/google/android/gms/dynamic/zzf;

    new-instance v2, Lcom/google/android/gms/maps/SupportMapFragment$zza;

    iget-object v3, p0, Lcom/google/android/gms/maps/SupportMapFragment$zzb;->Ov:Landroid/support/v4/app/Fragment;

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/maps/SupportMapFragment$zza;-><init>(Landroid/support/v4/app/Fragment;Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/dynamic/zzf;->zza(Lcom/google/android/gms/dynamic/LifecycleDelegate;)V

    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment$zzb;->alH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_38
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/OnMapReadyCallback;

    invoke-virtual {p0}, Lcom/google/android/gms/maps/SupportMapFragment$zzb;->zzbdt()Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/SupportMapFragment$zza;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/SupportMapFragment$zza;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_4d} :catch_4e
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_e .. :try_end_4d} :catch_5b

    goto :goto_38

    :catch_4e
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1

    :cond_55
    :try_start_55
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment$zzb;->alH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_5a} :catch_4e
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_55 .. :try_end_5a} :catch_5b

    goto :goto_25

    :catch_5b
    move-exception v0

    goto :goto_25
.end method
