.class final Lcom/google/android/gms/internal/zzqt$zzb;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzqt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "zzb"
.end annotation


# instance fields
.field private final yB:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lcom/google/android/gms/common/api/zzd",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final yC:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/gms/internal/zzqt$zza;",
            ">;"
        }
    .end annotation
.end field

.field private final yF:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Ljava/lang/ref/ReferenceQueue;Landroid/util/SparseArray;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lcom/google/android/gms/common/api/zzd",
            "<*>;>;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/gms/internal/zzqt$zza;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "GoogleApiCleanup"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqt$zzb;->yF:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqt$zzb;->yB:Ljava/lang/ref/ReferenceQueue;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzqt$zzb;->yC:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzqt$zzb;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqt$zzb;->yF:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqt$zzb;->yF:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :goto_c
    :try_start_c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqt$zzb;->yF:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqt$zzb;->yB:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqt$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqt$zzb;->yC:Landroid/util/SparseArray;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqt$zza;->zza(Lcom/google/android/gms/internal/zzqt$zza;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqt$zza;->zzasd()V
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_28} :catch_29
    .catchall {:try_start_c .. :try_end_28} :catchall_36

    goto :goto_c

    :catch_29
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqt$zzb;->yF:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_2f
    return-void

    :cond_30
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqt$zzb;->yF:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_2f

    :catchall_36
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqt$zzb;->yF:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
.end method
