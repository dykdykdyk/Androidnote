.class Lcom/google/android/gms/tasks/zzg;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private aJF:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/android/gms/tasks/zzf",
            "<TTResult;>;>;"
        }
    .end annotation
.end field

.field private aJG:Z

.field private final zzakd:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tasks/zzg;->zzakd:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/tasks/Task;)V
    .registers 4
    .param p1    # Lcom/google/android/gms/tasks/Task;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task",
            "<TTResult;>;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/tasks/zzg;->zzakd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzg;->aJF:Ljava/util/Queue;

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/google/android/gms/tasks/zzg;->aJG:Z

    if-eqz v0, :cond_d

    :cond_b
    monitor-exit v1

    :goto_c
    return-void

    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/tasks/zzg;->aJG:Z

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_26

    :goto_11
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzg;->zzakd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_14
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzg;->aJF:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tasks/zzf;

    if-nez v0, :cond_29

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/tasks/zzg;->aJG:Z

    monitor-exit v1

    goto :goto_c

    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_14 .. :try_end_25} :catchall_23

    throw v0

    :catchall_26
    move-exception v0

    :try_start_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v0

    :cond_29
    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_23

    invoke-interface {v0, p1}, Lcom/google/android/gms/tasks/zzf;->onComplete(Lcom/google/android/gms/tasks/Task;)V

    goto :goto_11
.end method

.method public zza(Lcom/google/android/gms/tasks/zzf;)V
    .registers 4
    .param p1    # Lcom/google/android/gms/tasks/zzf;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/zzf",
            "<TTResult;>;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/tasks/zzg;->zzakd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzg;->aJF:Ljava/util/Queue;

    if-nez v0, :cond_e

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tasks/zzg;->aJF:Ljava/util/Queue;

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzg;->aJF:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v0
.end method
