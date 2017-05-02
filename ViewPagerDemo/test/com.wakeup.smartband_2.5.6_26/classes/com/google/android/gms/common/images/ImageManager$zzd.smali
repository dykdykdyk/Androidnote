.class final Lcom/google/android/gms/common/images/ImageManager$zzd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/images/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "zzd"
.end annotation


# instance fields
.field final synthetic Ap:Lcom/google/android/gms/common/images/ImageManager;

.field private final Ar:Lcom/google/android/gms/common/images/zza;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/images/ImageManager;Lcom/google/android/gms/common/images/zza;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/common/images/ImageManager$zzd;->Ap:Lcom/google/android/gms/common/images/ImageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/common/images/ImageManager$zzd;->Ar:Lcom/google/android/gms/common/images/zza;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    const/4 v6, 0x1

    const-string/jumbo v0, "LoadImageRunnable must be executed on the main thread"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzc;->zzhq(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$zzd;->Ap:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v0}, Lcom/google/android/gms/common/images/ImageManager;->zza(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/images/ImageManager$zzd;->Ar:Lcom/google/android/gms/common/images/zza;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;

    if-eqz v0, :cond_27

    iget-object v1, p0, Lcom/google/android/gms/common/images/ImageManager$zzd;->Ap:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v1}, Lcom/google/android/gms/common/images/ImageManager;->zza(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$zzd;->Ar:Lcom/google/android/gms/common/images/zza;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/common/images/ImageManager$zzd;->Ar:Lcom/google/android/gms/common/images/zza;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->zzc(Lcom/google/android/gms/common/images/zza;)V

    :cond_27
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$zzd;->Ar:Lcom/google/android/gms/common/images/zza;

    iget-object v1, v0, Lcom/google/android/gms/common/images/zza;->At:Lcom/google/android/gms/common/images/zza$zza;

    iget-object v0, v1, Lcom/google/android/gms/common/images/zza$zza;->uri:Landroid/net/Uri;

    if-nez v0, :cond_41

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$zzd;->Ar:Lcom/google/android/gms/common/images/zza;

    iget-object v1, p0, Lcom/google/android/gms/common/images/ImageManager$zzd;->Ap:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v1}, Lcom/google/android/gms/common/images/ImageManager;->zzb(Lcom/google/android/gms/common/images/ImageManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$zzd;->Ap:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v2}, Lcom/google/android/gms/common/images/ImageManager;->zzc(Lcom/google/android/gms/common/images/ImageManager;)Lcom/google/android/gms/internal/zzrv;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/android/gms/common/images/zza;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzrv;Z)V

    :goto_40
    return-void

    :cond_41
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$zzd;->Ap:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/images/ImageManager;->zza(Lcom/google/android/gms/common/images/ImageManager;Lcom/google/android/gms/common/images/zza$zza;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_55

    iget-object v1, p0, Lcom/google/android/gms/common/images/ImageManager$zzd;->Ar:Lcom/google/android/gms/common/images/zza;

    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$zzd;->Ap:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v2}, Lcom/google/android/gms/common/images/ImageManager;->zzb(Lcom/google/android/gms/common/images/ImageManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v6}, Lcom/google/android/gms/common/images/zza;->zza(Landroid/content/Context;Landroid/graphics/Bitmap;Z)V

    goto :goto_40

    :cond_55
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$zzd;->Ap:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v0}, Lcom/google/android/gms/common/images/ImageManager;->zzd(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, v1, Lcom/google/android/gms/common/images/zza$zza;->uri:Landroid/net/Uri;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_92

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x36ee80

    cmp-long v0, v2, v4

    if-gez v0, :cond_87

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$zzd;->Ar:Lcom/google/android/gms/common/images/zza;

    iget-object v1, p0, Lcom/google/android/gms/common/images/ImageManager$zzd;->Ap:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v1}, Lcom/google/android/gms/common/images/ImageManager;->zzb(Lcom/google/android/gms/common/images/ImageManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$zzd;->Ap:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v2}, Lcom/google/android/gms/common/images/ImageManager;->zzc(Lcom/google/android/gms/common/images/ImageManager;)Lcom/google/android/gms/internal/zzrv;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/android/gms/common/images/zza;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzrv;Z)V

    goto :goto_40

    :cond_87
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$zzd;->Ap:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v0}, Lcom/google/android/gms/common/images/ImageManager;->zzd(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, v1, Lcom/google/android/gms/common/images/zza$zza;->uri:Landroid/net/Uri;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_92
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$zzd;->Ar:Lcom/google/android/gms/common/images/zza;

    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$zzd;->Ap:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v2}, Lcom/google/android/gms/common/images/ImageManager;->zzb(Lcom/google/android/gms/common/images/ImageManager;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/images/ImageManager$zzd;->Ap:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v3}, Lcom/google/android/gms/common/images/ImageManager;->zzc(Lcom/google/android/gms/common/images/ImageManager;)Lcom/google/android/gms/internal/zzrv;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/common/images/zza;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzrv;)V

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$zzd;->Ap:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v0}, Lcom/google/android/gms/common/images/ImageManager;->zze(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, v1, Lcom/google/android/gms/common/images/zza$zza;->uri:Landroid/net/Uri;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;

    if-nez v0, :cond_c7

    new-instance v0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;

    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$zzd;->Ap:Lcom/google/android/gms/common/images/ImageManager;

    iget-object v3, v1, Lcom/google/android/gms/common/images/zza$zza;->uri:Landroid/net/Uri;

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;-><init>(Lcom/google/android/gms/common/images/ImageManager;Landroid/net/Uri;)V

    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$zzd;->Ap:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v2}, Lcom/google/android/gms/common/images/ImageManager;->zze(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/common/images/zza$zza;->uri:Landroid/net/Uri;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c7
    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$zzd;->Ar:Lcom/google/android/gms/common/images/zza;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->zzb(Lcom/google/android/gms/common/images/zza;)V

    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$zzd;->Ar:Lcom/google/android/gms/common/images/zza;

    instance-of v2, v2, Lcom/google/android/gms/common/images/zza$zzc;

    if-nez v2, :cond_dd

    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$zzd;->Ap:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v2}, Lcom/google/android/gms/common/images/ImageManager;->zza(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/images/ImageManager$zzd;->Ar:Lcom/google/android/gms/common/images/zza;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_dd
    invoke-static {}, Lcom/google/android/gms/common/images/ImageManager;->zzaoj()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_e2
    invoke-static {}, Lcom/google/android/gms/common/images/ImageManager;->zzatl()Ljava/util/HashSet;

    move-result-object v3

    iget-object v4, v1, Lcom/google/android/gms/common/images/zza$zza;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_fa

    invoke-static {}, Lcom/google/android/gms/common/images/ImageManager;->zzatl()Ljava/util/HashSet;

    move-result-object v3

    iget-object v1, v1, Lcom/google/android/gms/common/images/zza$zza;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->zzatm()V

    :cond_fa
    monitor-exit v2

    goto/16 :goto_40

    :catchall_fd
    move-exception v0

    monitor-exit v2
    :try_end_ff
    .catchall {:try_start_e2 .. :try_end_ff} :catchall_fd

    throw v0
.end method
