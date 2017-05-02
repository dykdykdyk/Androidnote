.class Lcom/google/android/gms/internal/zzqh$zza;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzqy$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzqh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zza"
.end annotation


# instance fields
.field final synthetic xh:Lcom/google/android/gms/internal/zzqh;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzqh;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqh$zza;->xh:Lcom/google/android/gms/internal/zzqh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/internal/zzqh$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzqh$zza;-><init>(Lcom/google/android/gms/internal/zzqh;)V

    return-void
.end method


# virtual methods
.method public zzc(IZ)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zza;->xh:Lcom/google/android/gms/internal/zzqh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqh;->zza(Lcom/google/android/gms/internal/zzqh;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zza;->xh:Lcom/google/android/gms/internal/zzqh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqh;->zzc(Lcom/google/android/gms/internal/zzqh;)Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zza;->xh:Lcom/google/android/gms/internal/zzqh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqh;->zzd(Lcom/google/android/gms/internal/zzqh;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zza;->xh:Lcom/google/android/gms/internal/zzqh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqh;->zzd(Lcom/google/android/gms/internal/zzqh;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_3a

    :cond_25
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zza;->xh:Lcom/google/android/gms/internal/zzqh;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzqh;->zza(Lcom/google/android/gms/internal/zzqh;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zza;->xh:Lcom/google/android/gms/internal/zzqh;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/zzqh;->zza(Lcom/google/android/gms/internal/zzqh;IZ)V
    :try_end_30
    .catchall {:try_start_9 .. :try_end_30} :catchall_53

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zza;->xh:Lcom/google/android/gms/internal/zzqh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqh;->zza(Lcom/google/android/gms/internal/zzqh;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_39
    return-void

    :cond_3a
    :try_start_3a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zza;->xh:Lcom/google/android/gms/internal/zzqh;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzqh;->zza(Lcom/google/android/gms/internal/zzqh;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zza;->xh:Lcom/google/android/gms/internal/zzqh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqh;->zze(Lcom/google/android/gms/internal/zzqh;)Lcom/google/android/gms/internal/zzqr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzqr;->onConnectionSuspended(I)V
    :try_end_49
    .catchall {:try_start_3a .. :try_end_49} :catchall_53

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zza;->xh:Lcom/google/android/gms/internal/zzqh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqh;->zza(Lcom/google/android/gms/internal/zzqh;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_39

    :catchall_53
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqh$zza;->xh:Lcom/google/android/gms/internal/zzqh;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzqh;->zza(Lcom/google/android/gms/internal/zzqh;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public zzd(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 4
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zza;->xh:Lcom/google/android/gms/internal/zzqh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqh;->zza(Lcom/google/android/gms/internal/zzqh;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zza;->xh:Lcom/google/android/gms/internal/zzqh;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzqh;->zza(Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zza;->xh:Lcom/google/android/gms/internal/zzqh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqh;->zzb(Lcom/google/android/gms/internal/zzqh;)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_1d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zza;->xh:Lcom/google/android/gms/internal/zzqh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqh;->zza(Lcom/google/android/gms/internal/zzqh;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_1d
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqh$zza;->xh:Lcom/google/android/gms/internal/zzqh;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzqh;->zza(Lcom/google/android/gms/internal/zzqh;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public zzn(Landroid/os/Bundle;)V
    .registers 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zza;->xh:Lcom/google/android/gms/internal/zzqh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqh;->zza(Lcom/google/android/gms/internal/zzqh;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zza;->xh:Lcom/google/android/gms/internal/zzqh;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzqh;->zza(Lcom/google/android/gms/internal/zzqh;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zza;->xh:Lcom/google/android/gms/internal/zzqh;

    sget-object v1, Lcom/google/android/gms/common/ConnectionResult;->uJ:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzqh;->zza(Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zza;->xh:Lcom/google/android/gms/internal/zzqh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqh;->zzb(Lcom/google/android/gms/internal/zzqh;)V
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_24

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zza;->xh:Lcom/google/android/gms/internal/zzqh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqh;->zza(Lcom/google/android/gms/internal/zzqh;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_24
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqh$zza;->xh:Lcom/google/android/gms/internal/zzqh;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzqh;->zza(Lcom/google/android/gms/internal/zzqh;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
