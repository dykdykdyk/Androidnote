.class public Lcom/google/android/gms/internal/zzuy;
.super Ljava/lang/Object;


# instance fields
.field private Uv:Lcom/google/android/gms/internal/zzuz;

.field private zzaom:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzuy;->zzaom:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzuy;->Uv:Lcom/google/android/gms/internal/zzuz;

    return-void
.end method


# virtual methods
.method public initialize(Landroid/content/Context;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzuy;->zzaom:Z

    if-eqz v0, :cond_7

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_2b

    :goto_6
    return-void

    :cond_7
    :try_start_7
    sget-object v0, Lcom/google/android/gms/internal/zzsu;->Oy:Lcom/google/android/gms/internal/zzsu$zzb;

    const-string/jumbo v1, "com.google.android.gms.flags"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/zzsu;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzsu$zzb;Ljava/lang/String;)Lcom/google/android/gms/internal/zzsu;

    move-result-object v0

    const-string/jumbo v1, "com.google.android.gms.flags.impl.FlagProviderImpl"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzsu;->zzjd(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzuz$zza;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzuz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzuy;->Uv:Lcom/google/android/gms/internal/zzuz;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzuy;->Uv:Lcom/google/android/gms/internal/zzuz;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzac(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzuz;->init(Lcom/google/android/gms/dynamic/zzd;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzuy;->zzaom:Z
    :try_end_29
    .catch Lcom/google/android/gms/internal/zzsu$zza; {:try_start_7 .. :try_end_29} :catch_39
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_29} :catch_2e
    .catchall {:try_start_7 .. :try_end_29} :catchall_2b

    :goto_29
    :try_start_29
    monitor-exit p0

    goto :goto_6

    :catchall_2b
    move-exception v0

    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_2b

    throw v0

    :catch_2e
    move-exception v0

    :goto_2f
    :try_start_2f
    const-string/jumbo v1, "FlagValueProvider"

    const-string/jumbo v2, "Failed to initialize flags module."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_38
    .catchall {:try_start_2f .. :try_end_38} :catchall_2b

    goto :goto_29

    :catch_39
    move-exception v0

    goto :goto_2f
.end method

.method public zzb(Lcom/google/android/gms/internal/zzuw;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzuw",
            "<TT;>;)TT;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzuy;->zzaom:Z

    if-nez v0, :cond_b

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzuw;->zzkq()Ljava/lang/Object;

    move-result-object v0

    monitor-exit p0

    :goto_a
    return-object v0

    :cond_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_13

    iget-object v0, p0, Lcom/google/android/gms/internal/zzuy;->Uv:Lcom/google/android/gms/internal/zzuz;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzuw;->zza(Lcom/google/android/gms/internal/zzuz;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_a

    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method
