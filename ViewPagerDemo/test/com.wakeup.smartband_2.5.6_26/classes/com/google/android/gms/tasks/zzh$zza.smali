.class Lcom/google/android/gms/tasks/zzh$zza;
.super Lcom/google/android/gms/internal/zzra;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/tasks/zzh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zza"
.end annotation


# instance fields
.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/tasks/zzf",
            "<*>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzrb;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzra;-><init>(Lcom/google/android/gms/internal/zzrb;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tasks/zzh$zza;->mListeners:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzh$zza;->yY:Lcom/google/android/gms/internal/zzrb;

    const-string/jumbo v1, "TaskOnStopCallback"

    invoke-interface {v0, v1, p0}, Lcom/google/android/gms/internal/zzrb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzra;)V

    return-void
.end method

.method public static zzv(Landroid/app/Activity;)Lcom/google/android/gms/tasks/zzh$zza;
    .registers 4

    invoke-static {p0}, Lcom/google/android/gms/tasks/zzh$zza;->zzs(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzrb;

    move-result-object v1

    const-string/jumbo v0, "TaskOnStopCallback"

    const-class v2, Lcom/google/android/gms/tasks/zzh$zza;

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/zzrb;->zza(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/internal/zzra;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tasks/zzh$zza;

    if-nez v0, :cond_16

    new-instance v0, Lcom/google/android/gms/tasks/zzh$zza;

    invoke-direct {v0, v1}, Lcom/google/android/gms/tasks/zzh$zza;-><init>(Lcom/google/android/gms/internal/zzrb;)V

    :cond_16
    return-object v0
.end method


# virtual methods
.method public onStop()V
    .registers 4
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/tasks/zzh$zza;->mListeners:Ljava/util/List;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzh$zza;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tasks/zzf;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/google/android/gms/tasks/zzf;->cancel()V

    goto :goto_9

    :catchall_21
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v0

    :cond_24
    :try_start_24
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzh$zza;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_24 .. :try_end_2a} :catchall_21

    return-void
.end method

.method public zzb(Lcom/google/android/gms/tasks/zzf;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/zzf",
            "<TT;>;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/tasks/zzh$zza;->mListeners:Ljava/util/List;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzh$zza;->mListeners:Ljava/util/List;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method
