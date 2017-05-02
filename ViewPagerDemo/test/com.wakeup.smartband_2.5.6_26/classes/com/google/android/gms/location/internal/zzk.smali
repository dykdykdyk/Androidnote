.class public Lcom/google/android/gms/location/internal/zzk;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/location/internal/zzk$zzb;,
        Lcom/google/android/gms/location/internal/zzk$zza;,
        Lcom/google/android/gms/location/internal/zzk$zzc;
    }
.end annotation


# instance fields
.field private Tx:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/location/LocationListener;",
            "Lcom/google/android/gms/location/internal/zzk$zzc;",
            ">;"
        }
    .end annotation
.end field

.field private final ahK:Lcom/google/android/gms/location/internal/zzp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/location/internal/zzp",
            "<",
            "Lcom/google/android/gms/location/internal/zzi;",
            ">;"
        }
    .end annotation
.end field

.field private ahX:Landroid/content/ContentProviderClient;

.field private ahY:Z

.field private ahZ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/location/LocationCallback;",
            "Lcom/google/android/gms/location/internal/zzk$zza;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/location/internal/zzp;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/location/internal/zzp",
            "<",
            "Lcom/google/android/gms/location/internal/zzi;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/location/internal/zzk;->ahX:Landroid/content/ContentProviderClient;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/location/internal/zzk;->ahY:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/location/internal/zzk;->Tx:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/location/internal/zzk;->ahZ:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/android/gms/location/internal/zzk;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/location/internal/zzk;->ahK:Lcom/google/android/gms/location/internal/zzp;

    return-void
.end method

.method private zza(Lcom/google/android/gms/location/LocationCallback;Landroid/os/Looper;)Lcom/google/android/gms/location/internal/zzk$zza;
    .registers 6

    iget-object v1, p0, Lcom/google/android/gms/location/internal/zzk;->ahZ:Ljava/util/Map;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/location/internal/zzk;->ahZ:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/internal/zzk$zza;

    if-nez v0, :cond_12

    new-instance v0, Lcom/google/android/gms/location/internal/zzk$zza;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/location/internal/zzk$zza;-><init>(Lcom/google/android/gms/location/LocationCallback;Landroid/os/Looper;)V

    :cond_12
    iget-object v2, p0, Lcom/google/android/gms/location/internal/zzk;->ahZ:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-object v0

    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method private zza(Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)Lcom/google/android/gms/location/internal/zzk$zzc;
    .registers 6

    iget-object v1, p0, Lcom/google/android/gms/location/internal/zzk;->Tx:Ljava/util/Map;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/location/internal/zzk;->Tx:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/internal/zzk$zzc;

    if-nez v0, :cond_12

    new-instance v0, Lcom/google/android/gms/location/internal/zzk$zzc;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/location/internal/zzk$zzc;-><init>(Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)V

    :cond_12
    iget-object v2, p0, Lcom/google/android/gms/location/internal/zzk;->Tx:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-object v0

    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v0
.end method


# virtual methods
.method public getLastLocation()Landroid/location/Location;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/location/internal/zzk;->ahK:Lcom/google/android/gms/location/internal/zzp;

    invoke-interface {v0}, Lcom/google/android/gms/location/internal/zzp;->zzatw()V

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/location/internal/zzk;->ahK:Lcom/google/android/gms/location/internal/zzp;

    invoke-interface {v0}, Lcom/google/android/gms/location/internal/zzp;->zzatx()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/internal/zzi;

    iget-object v1, p0, Lcom/google/android/gms/location/internal/zzk;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/location/internal/zzi;->zzkx(Ljava/lang/String;)Landroid/location/Location;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_16} :catch_18

    move-result-object v0

    return-object v0

    :catch_18
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public removeAllListeners()V
    .registers 6

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/location/internal/zzk;->Tx:Ljava/util/Map;

    monitor-enter v2
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_2f

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/location/internal/zzk;->Tx:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/internal/zzk$zzc;

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/google/android/gms/location/internal/zzk;->ahK:Lcom/google/android/gms/location/internal/zzp;

    invoke-interface {v1}, Lcom/google/android/gms/location/internal/zzp;->zzatx()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/location/internal/zzi;

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;->zza(Lcom/google/android/gms/location/zzg;Lcom/google/android/gms/location/internal/zzg;)Lcom/google/android/gms/location/internal/LocationRequestUpdateData;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/location/internal/zzi;->zza(Lcom/google/android/gms/location/internal/LocationRequestUpdateData;)V

    goto :goto_d

    :catchall_2c
    move-exception v0

    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    :try_start_2e
    throw v0
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_2f} :catch_2f

    :catch_2f
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_36
    :try_start_36
    iget-object v0, p0, Lcom/google/android/gms/location/internal/zzk;->Tx:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_36 .. :try_end_3c} :catchall_2c

    :try_start_3c
    iget-object v2, p0, Lcom/google/android/gms/location/internal/zzk;->ahZ:Ljava/util/Map;

    monitor-enter v2
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_3f} :catch_2f

    :try_start_3f
    iget-object v0, p0, Lcom/google/android/gms/location/internal/zzk;->ahZ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_49
    :goto_49
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/internal/zzk$zza;

    if-eqz v0, :cond_49

    iget-object v1, p0, Lcom/google/android/gms/location/internal/zzk;->ahK:Lcom/google/android/gms/location/internal/zzp;

    invoke-interface {v1}, Lcom/google/android/gms/location/internal/zzp;->zzatx()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/location/internal/zzi;

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;->zza(Lcom/google/android/gms/location/zzf;Lcom/google/android/gms/location/internal/zzg;)Lcom/google/android/gms/location/internal/LocationRequestUpdateData;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/location/internal/zzi;->zza(Lcom/google/android/gms/location/internal/LocationRequestUpdateData;)V

    goto :goto_49

    :catchall_68
    move-exception v0

    monitor-exit v2
    :try_end_6a
    .catchall {:try_start_3f .. :try_end_6a} :catchall_68

    :try_start_6a
    throw v0
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_6a .. :try_end_6b} :catch_2f

    :cond_6b
    :try_start_6b
    iget-object v0, p0, Lcom/google/android/gms/location/internal/zzk;->ahZ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v2
    :try_end_71
    .catchall {:try_start_6b .. :try_end_71} :catchall_68

    return-void
.end method

.method public zza(Landroid/app/PendingIntent;Lcom/google/android/gms/location/internal/zzg;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/internal/zzk;->ahK:Lcom/google/android/gms/location/internal/zzp;

    invoke-interface {v0}, Lcom/google/android/gms/location/internal/zzp;->zzatw()V

    iget-object v0, p0, Lcom/google/android/gms/location/internal/zzk;->ahK:Lcom/google/android/gms/location/internal/zzp;

    invoke-interface {v0}, Lcom/google/android/gms/location/internal/zzp;->zzatx()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/internal/zzi;

    invoke-static {p1, p2}, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;->zzb(Landroid/app/PendingIntent;Lcom/google/android/gms/location/internal/zzg;)Lcom/google/android/gms/location/internal/LocationRequestUpdateData;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/location/internal/zzi;->zza(Lcom/google/android/gms/location/internal/LocationRequestUpdateData;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/location/LocationCallback;Lcom/google/android/gms/location/internal/zzg;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/internal/zzk;->ahK:Lcom/google/android/gms/location/internal/zzp;

    invoke-interface {v0}, Lcom/google/android/gms/location/internal/zzp;->zzatw()V

    const-string/jumbo v0, "Invalid null callback"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/location/internal/zzk;->ahZ:Ljava/util/Map;

    monitor-enter v2

    :try_start_e
    iget-object v0, p0, Lcom/google/android/gms/location/internal/zzk;->ahZ:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/internal/zzk$zza;

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Lcom/google/android/gms/location/internal/zzk$zza;->release()V

    iget-object v1, p0, Lcom/google/android/gms/location/internal/zzk;->ahK:Lcom/google/android/gms/location/internal/zzp;

    invoke-interface {v1}, Lcom/google/android/gms/location/internal/zzp;->zzatx()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/location/internal/zzi;

    invoke-static {v0, p2}, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;->zza(Lcom/google/android/gms/location/zzf;Lcom/google/android/gms/location/internal/zzg;)Lcom/google/android/gms/location/internal/LocationRequestUpdateData;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/location/internal/zzi;->zza(Lcom/google/android/gms/location/internal/LocationRequestUpdateData;)V

    :cond_2a
    monitor-exit v2

    return-void

    :catchall_2c
    move-exception v0

    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_e .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method public zza(Lcom/google/android/gms/location/LocationListener;Lcom/google/android/gms/location/internal/zzg;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/internal/zzk;->ahK:Lcom/google/android/gms/location/internal/zzp;

    invoke-interface {v0}, Lcom/google/android/gms/location/internal/zzp;->zzatw()V

    const-string/jumbo v0, "Invalid null listener"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/location/internal/zzk;->Tx:Ljava/util/Map;

    monitor-enter v2

    :try_start_e
    iget-object v0, p0, Lcom/google/android/gms/location/internal/zzk;->Tx:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/internal/zzk$zzc;

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Lcom/google/android/gms/location/internal/zzk$zzc;->release()V

    iget-object v1, p0, Lcom/google/android/gms/location/internal/zzk;->ahK:Lcom/google/android/gms/location/internal/zzp;

    invoke-interface {v1}, Lcom/google/android/gms/location/internal/zzp;->zzatx()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/location/internal/zzi;

    invoke-static {v0, p2}, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;->zza(Lcom/google/android/gms/location/zzg;Lcom/google/android/gms/location/internal/zzg;)Lcom/google/android/gms/location/internal/LocationRequestUpdateData;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/location/internal/zzi;->zza(Lcom/google/android/gms/location/internal/LocationRequestUpdateData;)V

    :cond_2a
    monitor-exit v2

    return-void

    :catchall_2c
    move-exception v0

    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_e .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method public zza(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;Lcom/google/android/gms/location/internal/zzg;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/internal/zzk;->ahK:Lcom/google/android/gms/location/internal/zzp;

    invoke-interface {v0}, Lcom/google/android/gms/location/internal/zzp;->zzatw()V

    iget-object v0, p0, Lcom/google/android/gms/location/internal/zzk;->ahK:Lcom/google/android/gms/location/internal/zzp;

    invoke-interface {v0}, Lcom/google/android/gms/location/internal/zzp;->zzatx()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/internal/zzi;

    invoke-static {p1}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->zzb(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/location/internal/LocationRequestInternal;

    move-result-object v1

    invoke-static {v1, p2, p3}, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;->zza(Lcom/google/android/gms/location/internal/LocationRequestInternal;Landroid/app/PendingIntent;Lcom/google/android/gms/location/internal/zzg;)Lcom/google/android/gms/location/internal/LocationRequestUpdateData;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/location/internal/zzi;->zza(Lcom/google/android/gms/location/internal/LocationRequestUpdateData;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;Lcom/google/android/gms/location/internal/zzg;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/internal/zzk;->ahK:Lcom/google/android/gms/location/internal/zzp;

    invoke-interface {v0}, Lcom/google/android/gms/location/internal/zzp;->zzatw()V

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/location/internal/zzk;->zza(Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)Lcom/google/android/gms/location/internal/zzk$zzc;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/location/internal/zzk;->ahK:Lcom/google/android/gms/location/internal/zzp;

    invoke-interface {v0}, Lcom/google/android/gms/location/internal/zzp;->zzatx()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/internal/zzi;

    invoke-static {p1}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->zzb(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/location/internal/LocationRequestInternal;

    move-result-object v2

    invoke-static {v2, v1, p4}, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;->zza(Lcom/google/android/gms/location/internal/LocationRequestInternal;Lcom/google/android/gms/location/zzg;Lcom/google/android/gms/location/internal/zzg;)Lcom/google/android/gms/location/internal/LocationRequestUpdateData;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/location/internal/zzi;->zza(Lcom/google/android/gms/location/internal/LocationRequestUpdateData;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/location/internal/LocationRequestInternal;Lcom/google/android/gms/location/LocationCallback;Landroid/os/Looper;Lcom/google/android/gms/location/internal/zzg;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/internal/zzk;->ahK:Lcom/google/android/gms/location/internal/zzp;

    invoke-interface {v0}, Lcom/google/android/gms/location/internal/zzp;->zzatw()V

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/location/internal/zzk;->zza(Lcom/google/android/gms/location/LocationCallback;Landroid/os/Looper;)Lcom/google/android/gms/location/internal/zzk$zza;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/location/internal/zzk;->ahK:Lcom/google/android/gms/location/internal/zzp;

    invoke-interface {v0}, Lcom/google/android/gms/location/internal/zzp;->zzatx()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/internal/zzi;

    invoke-static {p1, v1, p4}, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;->zza(Lcom/google/android/gms/location/internal/LocationRequestInternal;Lcom/google/android/gms/location/zzf;Lcom/google/android/gms/location/internal/zzg;)Lcom/google/android/gms/location/internal/LocationRequestUpdateData;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/location/internal/zzi;->zza(Lcom/google/android/gms/location/internal/LocationRequestUpdateData;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/location/internal/zzg;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/internal/zzk;->ahK:Lcom/google/android/gms/location/internal/zzp;

    invoke-interface {v0}, Lcom/google/android/gms/location/internal/zzp;->zzatw()V

    iget-object v0, p0, Lcom/google/android/gms/location/internal/zzk;->ahK:Lcom/google/android/gms/location/internal/zzp;

    invoke-interface {v0}, Lcom/google/android/gms/location/internal/zzp;->zzatx()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/internal/zzi;

    invoke-interface {v0, p1}, Lcom/google/android/gms/location/internal/zzi;->zza(Lcom/google/android/gms/location/internal/zzg;)V

    return-void
.end method

.method public zzbpl()Lcom/google/android/gms/location/LocationAvailability;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/location/internal/zzk;->ahK:Lcom/google/android/gms/location/internal/zzp;

    invoke-interface {v0}, Lcom/google/android/gms/location/internal/zzp;->zzatw()V

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/location/internal/zzk;->ahK:Lcom/google/android/gms/location/internal/zzp;

    invoke-interface {v0}, Lcom/google/android/gms/location/internal/zzp;->zzatx()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/internal/zzi;

    iget-object v1, p0, Lcom/google/android/gms/location/internal/zzk;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/location/internal/zzi;->zzky(Ljava/lang/String;)Lcom/google/android/gms/location/LocationAvailability;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_16} :catch_18

    move-result-object v0

    return-object v0

    :catch_18
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public zzbpm()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/location/internal/zzk;->ahY:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :try_start_5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/location/internal/zzk;->zzcc(Z)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    :cond_8
    return-void

    :catch_9
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public zzcc(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/internal/zzk;->ahK:Lcom/google/android/gms/location/internal/zzp;

    invoke-interface {v0}, Lcom/google/android/gms/location/internal/zzp;->zzatw()V

    iget-object v0, p0, Lcom/google/android/gms/location/internal/zzk;->ahK:Lcom/google/android/gms/location/internal/zzp;

    invoke-interface {v0}, Lcom/google/android/gms/location/internal/zzp;->zzatx()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/internal/zzi;

    invoke-interface {v0, p1}, Lcom/google/android/gms/location/internal/zzi;->zzcc(Z)V

    iput-boolean p1, p0, Lcom/google/android/gms/location/internal/zzk;->ahY:Z

    return-void
.end method

.method public zzd(Landroid/location/Location;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/internal/zzk;->ahK:Lcom/google/android/gms/location/internal/zzp;

    invoke-interface {v0}, Lcom/google/android/gms/location/internal/zzp;->zzatw()V

    iget-object v0, p0, Lcom/google/android/gms/location/internal/zzk;->ahK:Lcom/google/android/gms/location/internal/zzp;

    invoke-interface {v0}, Lcom/google/android/gms/location/internal/zzp;->zzatx()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/internal/zzi;

    invoke-interface {v0, p1}, Lcom/google/android/gms/location/internal/zzi;->zzd(Landroid/location/Location;)V

    return-void
.end method
