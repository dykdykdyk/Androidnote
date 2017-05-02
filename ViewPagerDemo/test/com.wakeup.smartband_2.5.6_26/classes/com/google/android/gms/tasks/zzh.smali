.class final Lcom/google/android/gms/tasks/zzh;
.super Lcom/google/android/gms/tasks/Task;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tasks/zzh$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/tasks/Task",
        "<TTResult;>;"
    }
.end annotation


# instance fields
.field private final aJJ:Lcom/google/android/gms/tasks/zzg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/zzg",
            "<TTResult;>;"
        }
    .end annotation
.end field

.field private aJK:Z

.field private aJL:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTResult;"
        }
    .end annotation
.end field

.field private aJM:Ljava/lang/Exception;

.field private final zzakd:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/tasks/Task;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tasks/zzh;->zzakd:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/tasks/zzg;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/zzg;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tasks/zzh;->aJJ:Lcom/google/android/gms/tasks/zzg;

    return-void
.end method

.method private zzclh()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/tasks/zzh;->aJK:Z

    const-string/jumbo v1, "Task is not yet complete"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    return-void
.end method

.method private zzcli()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/tasks/zzh;->aJK:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_5
    const-string/jumbo v1, "Task is already complete"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private zzclj()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/tasks/zzh;->zzakd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/tasks/zzh;->aJK:Z

    if-nez v0, :cond_9

    monitor-exit v1

    :goto_8
    return-void

    :cond_9
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_10

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzh;->aJJ:Lcom/google/android/gms/tasks/zzg;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/tasks/zzg;->zza(Lcom/google/android/gms/tasks/Task;)V

    goto :goto_8

    :catchall_10
    move-exception v0

    :try_start_11
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v0
.end method


# virtual methods
.method public addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/OnCompleteListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/tasks/OnCompleteListener",
            "<TTResult;>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<TTResult;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/tasks/zzc;

    sget-object v1, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/tasks/zzc;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)V

    iget-object v1, p0, Lcom/google/android/gms/tasks/zzh;->aJJ:Lcom/google/android/gms/tasks/zzg;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/zzg;->zza(Lcom/google/android/gms/tasks/zzf;)V

    invoke-static {p1}, Lcom/google/android/gms/tasks/zzh$zza;->zzv(Landroid/app/Activity;)Lcom/google/android/gms/tasks/zzh$zza;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/zzh$zza;->zzb(Lcom/google/android/gms/tasks/zzf;)V

    invoke-direct {p0}, Lcom/google/android/gms/tasks/zzh;->zzclj()V

    return-object p0
.end method

.method public addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    .registers 3
    .param p1    # Lcom/google/android/gms/tasks/OnCompleteListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/OnCompleteListener",
            "<TTResult;>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<TTResult;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/tasks/zzh;->addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/OnCompleteListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/OnCompleteListener",
            "<TTResult;>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<TTResult;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzh;->aJJ:Lcom/google/android/gms/tasks/zzg;

    new-instance v1, Lcom/google/android/gms/tasks/zzc;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/tasks/zzc;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/zzg;->zza(Lcom/google/android/gms/tasks/zzf;)V

    invoke-direct {p0}, Lcom/google/android/gms/tasks/zzh;->zzclj()V

    return-object p0
.end method

.method public addOnFailureListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/OnFailureListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/tasks/OnFailureListener;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<TTResult;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/tasks/zzd;

    sget-object v1, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/tasks/zzd;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)V

    iget-object v1, p0, Lcom/google/android/gms/tasks/zzh;->aJJ:Lcom/google/android/gms/tasks/zzg;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/zzg;->zza(Lcom/google/android/gms/tasks/zzf;)V

    invoke-static {p1}, Lcom/google/android/gms/tasks/zzh$zza;->zzv(Landroid/app/Activity;)Lcom/google/android/gms/tasks/zzh$zza;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/zzh$zza;->zzb(Lcom/google/android/gms/tasks/zzf;)V

    invoke-direct {p0}, Lcom/google/android/gms/tasks/zzh;->zzclj()V

    return-object p0
.end method

.method public addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;
    .registers 3
    .param p1    # Lcom/google/android/gms/tasks/OnFailureListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/OnFailureListener;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<TTResult;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/tasks/zzh;->addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/OnFailureListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/OnFailureListener;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<TTResult;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzh;->aJJ:Lcom/google/android/gms/tasks/zzg;

    new-instance v1, Lcom/google/android/gms/tasks/zzd;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/tasks/zzd;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/zzg;->zza(Lcom/google/android/gms/tasks/zzf;)V

    invoke-direct {p0}, Lcom/google/android/gms/tasks/zzh;->zzclj()V

    return-object p0
.end method

.method public addOnSuccessListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/OnSuccessListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/tasks/OnSuccessListener",
            "<-TTResult;>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<TTResult;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/tasks/zze;

    sget-object v1, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/tasks/zze;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)V

    iget-object v1, p0, Lcom/google/android/gms/tasks/zzh;->aJJ:Lcom/google/android/gms/tasks/zzg;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/zzg;->zza(Lcom/google/android/gms/tasks/zzf;)V

    invoke-static {p1}, Lcom/google/android/gms/tasks/zzh$zza;->zzv(Landroid/app/Activity;)Lcom/google/android/gms/tasks/zzh$zza;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/zzh$zza;->zzb(Lcom/google/android/gms/tasks/zzf;)V

    invoke-direct {p0}, Lcom/google/android/gms/tasks/zzh;->zzclj()V

    return-object p0
.end method

.method public addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;
    .registers 3
    .param p1    # Lcom/google/android/gms/tasks/OnSuccessListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/OnSuccessListener",
            "<-TTResult;>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<TTResult;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/tasks/zzh;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/OnSuccessListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/OnSuccessListener",
            "<-TTResult;>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<TTResult;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzh;->aJJ:Lcom/google/android/gms/tasks/zzg;

    new-instance v1, Lcom/google/android/gms/tasks/zze;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/tasks/zze;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/zzg;->zza(Lcom/google/android/gms/tasks/zzf;)V

    invoke-direct {p0}, Lcom/google/android/gms/tasks/zzh;->zzclj()V

    return-object p0
.end method

.method public continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;
    .registers 3
    .param p1    # Lcom/google/android/gms/tasks/Continuation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/Continuation",
            "<TTResult;TTContinuationResult;>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/tasks/zzh;->continueWith(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public continueWith(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;
    .registers 6
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/Continuation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/Continuation",
            "<TTResult;TTContinuationResult;>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/tasks/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/zzh;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/tasks/zzh;->aJJ:Lcom/google/android/gms/tasks/zzg;

    new-instance v2, Lcom/google/android/gms/tasks/zza;

    invoke-direct {v2, p1, p2, v0}, Lcom/google/android/gms/tasks/zza;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;Lcom/google/android/gms/tasks/zzh;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/zzg;->zza(Lcom/google/android/gms/tasks/zzf;)V

    invoke-direct {p0}, Lcom/google/android/gms/tasks/zzh;->zzclj()V

    return-object v0
.end method

.method public continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;
    .registers 3
    .param p1    # Lcom/google/android/gms/tasks/Continuation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/Continuation",
            "<TTResult;",
            "Lcom/google/android/gms/tasks/Task",
            "<TTContinuationResult;>;>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/tasks/zzh;->continueWithTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public continueWithTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;
    .registers 6
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/Continuation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/Continuation",
            "<TTResult;",
            "Lcom/google/android/gms/tasks/Task",
            "<TTContinuationResult;>;>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/tasks/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/zzh;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/tasks/zzh;->aJJ:Lcom/google/android/gms/tasks/zzg;

    new-instance v2, Lcom/google/android/gms/tasks/zzb;

    invoke-direct {v2, p1, p2, v0}, Lcom/google/android/gms/tasks/zzb;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;Lcom/google/android/gms/tasks/zzh;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/zzg;->zza(Lcom/google/android/gms/tasks/zzf;)V

    invoke-direct {p0}, Lcom/google/android/gms/tasks/zzh;->zzclj()V

    return-object v0
.end method

.method public getException()Ljava/lang/Exception;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/tasks/zzh;->zzakd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzh;->aJM:Ljava/lang/Exception;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public getResult()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTResult;"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/tasks/zzh;->zzakd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0}, Lcom/google/android/gms/tasks/zzh;->zzclh()V

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzh;->aJM:Ljava/lang/Exception;

    if-eqz v0, :cond_15

    new-instance v0, Lcom/google/android/gms/tasks/RuntimeExecutionException;

    iget-object v2, p0, Lcom/google/android/gms/tasks/zzh;->aJM:Ljava/lang/Exception;

    invoke-direct {v0, v2}, Lcom/google/android/gms/tasks/RuntimeExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0

    :cond_15
    :try_start_15
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzh;->aJL:Ljava/lang/Object;

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_12

    return-object v0
.end method

.method public getResult(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class",
            "<TX;>;)TTResult;^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/tasks/zzh;->zzakd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0}, Lcom/google/android/gms/tasks/zzh;->zzclh()V

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzh;->aJM:Ljava/lang/Exception;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzh;->aJM:Ljava/lang/Exception;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v0

    :cond_1a
    :try_start_1a
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzh;->aJM:Ljava/lang/Exception;

    if-eqz v0, :cond_26

    new-instance v0, Lcom/google/android/gms/tasks/RuntimeExecutionException;

    iget-object v2, p0, Lcom/google/android/gms/tasks/zzh;->aJM:Ljava/lang/Exception;

    invoke-direct {v0, v2}, Lcom/google/android/gms/tasks/RuntimeExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_26
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzh;->aJL:Ljava/lang/Object;

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_1a .. :try_end_29} :catchall_17

    return-object v0
.end method

.method public isComplete()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/tasks/zzh;->zzakd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/tasks/zzh;->aJK:Z

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public isSuccessful()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/tasks/zzh;->zzakd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/tasks/zzh;->aJK:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzh;->aJM:Ljava/lang/Exception;

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_c
    monitor-exit v1

    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_c

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public setException(Ljava/lang/Exception;)V
    .registers 4
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string/jumbo v0, "Exception must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/tasks/zzh;->zzakd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_9
    invoke-direct {p0}, Lcom/google/android/gms/tasks/zzh;->zzcli()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/tasks/zzh;->aJK:Z

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzh;->aJM:Ljava/lang/Exception;

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_18

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzh;->aJJ:Lcom/google/android/gms/tasks/zzg;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/tasks/zzg;->zza(Lcom/google/android/gms/tasks/Task;)V

    return-void

    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public setResult(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/tasks/zzh;->zzakd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0}, Lcom/google/android/gms/tasks/zzh;->zzcli()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/tasks/zzh;->aJK:Z

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzh;->aJL:Ljava/lang/Object;

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_12

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzh;->aJJ:Lcom/google/android/gms/tasks/zzg;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/tasks/zzg;->zza(Lcom/google/android/gms/tasks/Task;)V

    return-void

    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method
