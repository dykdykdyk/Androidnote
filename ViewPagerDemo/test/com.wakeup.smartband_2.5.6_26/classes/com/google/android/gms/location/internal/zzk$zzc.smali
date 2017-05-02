.class Lcom/google/android/gms/location/internal/zzk$zzc;
.super Lcom/google/android/gms/location/zzg$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/internal/zzk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zzc"
.end annotation


# instance fields
.field private aia:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/location/zzg$zza;-><init>()V

    if-nez p2, :cond_12

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    :goto_c
    const-string/jumbo v1, "Can\'t create handler inside thread that has not called Looper.prepare()"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    :cond_12
    if-nez p2, :cond_1e

    new-instance v0, Lcom/google/android/gms/location/internal/zzk$zzb;

    invoke-direct {v0, p1}, Lcom/google/android/gms/location/internal/zzk$zzb;-><init>(Lcom/google/android/gms/location/LocationListener;)V

    :goto_19
    iput-object v0, p0, Lcom/google/android/gms/location/internal/zzk$zzc;->aia:Landroid/os/Handler;

    return-void

    :cond_1c
    const/4 v0, 0x0

    goto :goto_c

    :cond_1e
    new-instance v0, Lcom/google/android/gms/location/internal/zzk$zzb;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/location/internal/zzk$zzb;-><init>(Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)V

    goto :goto_19
.end method


# virtual methods
.method public declared-synchronized onLocationChanged(Landroid/location/Location;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/location/internal/zzk$zzc;->aia:Landroid/os/Handler;

    if-nez v0, :cond_10

    const-string/jumbo v0, "LocationClientHelper"

    const-string/jumbo v1, "Received a location in client after calling removeLocationUpdates."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_1f

    :goto_e
    monitor-exit p0

    return-void

    :cond_10
    :try_start_10
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/location/internal/zzk$zzc;->aia:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_1f

    goto :goto_e

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/google/android/gms/location/internal/zzk$zzc;->aia:Landroid/os/Handler;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method
