.class Lcom/google/android/gms/tasks/zze;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/zzf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/zzf",
        "<TTResult;>;"
    }
.end annotation


# instance fields
.field private final aBG:Ljava/util/concurrent/Executor;

.field private aJD:Lcom/google/android/gms/tasks/OnSuccessListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/OnSuccessListener",
            "<-TTResult;>;"
        }
    .end annotation
.end field

.field private final zzakd:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)V
    .registers 4
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/OnSuccessListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/OnSuccessListener",
            "<-TTResult;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tasks/zze;->zzakd:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/tasks/zze;->aBG:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/gms/tasks/zze;->aJD:Lcom/google/android/gms/tasks/OnSuccessListener;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/tasks/zze;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tasks/zze;->zzakd:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/tasks/zze;)Lcom/google/android/gms/tasks/OnSuccessListener;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tasks/zze;->aJD:Lcom/google/android/gms/tasks/OnSuccessListener;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/tasks/zze;->zzakd:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/google/android/gms/tasks/zze;->aJD:Lcom/google/android/gms/tasks/OnSuccessListener;

    monitor-exit v1

    return-void

    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
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

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/google/android/gms/tasks/zze;->zzakd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/tasks/zze;->aJD:Lcom/google/android/gms/tasks/OnSuccessListener;

    if-nez v0, :cond_f

    monitor-exit v1

    :cond_e
    :goto_e
    return-void

    :cond_f
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_1b

    iget-object v0, p0, Lcom/google/android/gms/tasks/zze;->aBG:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/tasks/zze$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/tasks/zze$1;-><init>(Lcom/google/android/gms/tasks/zze;Lcom/google/android/gms/tasks/Task;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_e

    :catchall_1b
    move-exception v0

    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v0
.end method
