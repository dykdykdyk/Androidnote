.class Lcom/google/android/gms/location/internal/zzk$zza;
.super Lcom/google/android/gms/location/zzf$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/internal/zzk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zza"
.end annotation


# instance fields
.field private aia:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/LocationCallback;Landroid/os/Looper;)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/location/zzf$zza;-><init>()V

    if-nez p2, :cond_12

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    if-eqz p2, :cond_1a

    const/4 v0, 0x1

    :goto_c
    const-string/jumbo v1, "Can\'t create handler inside thread that has not called Looper.prepare()"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    :cond_12
    new-instance v0, Lcom/google/android/gms/location/internal/zzk$zza$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/gms/location/internal/zzk$zza$1;-><init>(Lcom/google/android/gms/location/internal/zzk$zza;Landroid/os/Looper;Lcom/google/android/gms/location/LocationCallback;)V

    iput-object v0, p0, Lcom/google/android/gms/location/internal/zzk$zza;->aia:Landroid/os/Handler;

    return-void

    :cond_1a
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private declared-synchronized zzb(ILjava/lang/Object;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/location/internal/zzk$zza;->aia:Landroid/os/Handler;

    if-nez v0, :cond_10

    const-string/jumbo v0, "LocationClientHelper"

    const-string/jumbo v1, "Received a data in client after calling removeLocationUpdates."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_1e

    :goto_e
    monitor-exit p0

    return-void

    :cond_10
    :try_start_10
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/location/internal/zzk$zza;->aia:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_1e

    goto :goto_e

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onLocationAvailability(Lcom/google/android/gms/location/LocationAvailability;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/location/internal/zzk$zza;->zzb(ILjava/lang/Object;)V

    return-void
.end method

.method public onLocationResult(Lcom/google/android/gms/location/LocationResult;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/location/internal/zzk$zza;->zzb(ILjava/lang/Object;)V

    return-void
.end method

.method public declared-synchronized release()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/google/android/gms/location/internal/zzk$zza;->aia:Landroid/os/Handler;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method
