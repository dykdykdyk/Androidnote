.class Lcom/google/android/gms/tasks/zzb$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tasks/zzb;->onComplete(Lcom/google/android/gms/tasks/Task;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aJw:Lcom/google/android/gms/tasks/Task;

.field final synthetic aJy:Lcom/google/android/gms/tasks/zzb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/zzb;Lcom/google/android/gms/tasks/Task;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzb$1;->aJy:Lcom/google/android/gms/tasks/zzb;

    iput-object p2, p0, Lcom/google/android/gms/tasks/zzb$1;->aJw:Lcom/google/android/gms/tasks/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzb$1;->aJy:Lcom/google/android/gms/tasks/zzb;

    invoke-static {v0}, Lcom/google/android/gms/tasks/zzb;->zza(Lcom/google/android/gms/tasks/zzb;)Lcom/google/android/gms/tasks/Continuation;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/tasks/zzb$1;->aJw:Lcom/google/android/gms/tasks/Task;

    invoke-interface {v0, v1}, Lcom/google/android/gms/tasks/Continuation;->then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tasks/Task;
    :try_end_e
    .catch Lcom/google/android/gms/tasks/RuntimeExecutionException; {:try_start_0 .. :try_end_e} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_41

    if-nez v0, :cond_4c

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzb$1;->aJy:Lcom/google/android/gms/tasks/zzb;

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "Continuation returned null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/zzb;->onFailure(Ljava/lang/Exception;)V

    :goto_1d
    return-void

    :catch_1e
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/RuntimeExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Exception;

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/google/android/gms/tasks/zzb$1;->aJy:Lcom/google/android/gms/tasks/zzb;

    invoke-static {v1}, Lcom/google/android/gms/tasks/zzb;->zzb(Lcom/google/android/gms/tasks/zzb;)Lcom/google/android/gms/tasks/zzh;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/RuntimeExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/zzh;->setException(Ljava/lang/Exception;)V

    goto :goto_1d

    :cond_37
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzb$1;->aJy:Lcom/google/android/gms/tasks/zzb;

    invoke-static {v1}, Lcom/google/android/gms/tasks/zzb;->zzb(Lcom/google/android/gms/tasks/zzb;)Lcom/google/android/gms/tasks/zzh;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/zzh;->setException(Ljava/lang/Exception;)V

    goto :goto_1d

    :catch_41
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/tasks/zzb$1;->aJy:Lcom/google/android/gms/tasks/zzb;

    invoke-static {v1}, Lcom/google/android/gms/tasks/zzb;->zzb(Lcom/google/android/gms/tasks/zzb;)Lcom/google/android/gms/tasks/zzh;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/zzh;->setException(Ljava/lang/Exception;)V

    goto :goto_1d

    :cond_4c
    sget-object v1, Lcom/google/android/gms/tasks/TaskExecutors;->aJI:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/google/android/gms/tasks/zzb$1;->aJy:Lcom/google/android/gms/tasks/zzb;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    sget-object v1, Lcom/google/android/gms/tasks/TaskExecutors;->aJI:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/google/android/gms/tasks/zzb$1;->aJy:Lcom/google/android/gms/tasks/zzb;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    goto :goto_1d
.end method
