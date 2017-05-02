.class public Lcom/google/android/gms/internal/zzqt;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzqt$zzb;,
        Lcom/google/android/gms/internal/zzqt$zza;,
        Lcom/google/android/gms/internal/zzqt$zzd;,
        Lcom/google/android/gms/internal/zzqt$zzc;
    }
.end annotation


# static fields
.field private static yu:Lcom/google/android/gms/internal/zzqt;

.field private static final zzaok:Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final vP:Lcom/google/android/gms/common/GoogleApiAvailability;

.field private xS:J

.field private xT:J

.field private final yA:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/zzpz",
            "<*>;>;"
        }
    .end annotation
.end field

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

.field private yD:Lcom/google/android/gms/internal/zzqt$zzb;

.field private yt:J

.field private yv:I

.field private final yw:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final yx:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/gms/internal/zzqt$zzc",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final yy:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/zzpz",
            "<*>;",
            "Lcom/google/android/gms/internal/zzqt$zzc",
            "<*>;>;"
        }
    .end annotation
.end field

.field private yz:Lcom/google/android/gms/internal/zzqi;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzqt;->zzaok:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzqt;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GoogleApiAvailability;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/GoogleApiAvailability;)V
    .registers 7

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzqt;->xT:J

    const-wide/32 v0, 0x1d4c0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzqt;->xS:J

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzqt;->yt:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzqt;->yv:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqt;->yw:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqt;->yx:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x5

    const/high16 v2, 0x3f400000

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqt;->yy:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqt;->yz:Lcom/google/android/gms/internal/zzqi;

    new-instance v0, Lcom/google/android/gms/common/util/zza;

    invoke-direct {v0}, Lcom/google/android/gms/common/util/zza;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqt;->yA:Ljava/util/Set;

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqt;->yB:Ljava/lang/ref/ReferenceQueue;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqt;->yC:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqt;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "GoogleApiHandler"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzqt;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzqt;->vP:Lcom/google/android/gms/common/GoogleApiAvailability;

    return-void
.end method

.method private zza(Lcom/google/android/gms/common/api/zzd;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzd",
            "<*>;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqt;->yw:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqt;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqt;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzqt;I)I
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/zzqt;->yv:I

    return p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzqt;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqt;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/common/api/zzd;)Landroid/util/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/zzd",
            "<*>;)",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/android/gms/internal/zzqt;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object v1, Lcom/google/android/gms/internal/zzqt;->zzaok:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/internal/zzqt;->yu:Lcom/google/android/gms/internal/zzqt;

    if-nez v0, :cond_12

    new-instance v0, Lcom/google/android/gms/internal/zzqt;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/zzqt;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/internal/zzqt;->yu:Lcom/google/android/gms/internal/zzqt;

    :cond_12
    sget-object v0, Lcom/google/android/gms/internal/zzqt;->yu:Lcom/google/android/gms/internal/zzqt;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzqt;->zza(Lcom/google/android/gms/common/api/zzd;)I

    move-result v0

    sget-object v2, Lcom/google/android/gms/internal/zzqt;->yu:Lcom/google/android/gms/internal/zzqt;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_24
    move-exception v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v0
.end method

.method private zza(ILcom/google/android/gms/internal/zzrd$zzb;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/internal/zzrd$zzb",
            "<*>;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqt;->yx:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqt$zzc;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzqt$zzc;->zzb(ILcom/google/android/gms/internal/zzrd$zzb;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method

.method private zza(ILcom/google/android/gms/internal/zzri;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/internal/zzri;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqt;->yx:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqt$zzc;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzqt$zzc;->zzb(ILcom/google/android/gms/internal/zzri;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method

.method private zza(Lcom/google/android/gms/common/api/zzd;I)V
    .registers 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzd",
            "<*>;I)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/zzd;->zzapx()Lcom/google/android/gms/internal/zzpz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqt;->yy:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqt;->yy:Ljava/util/Map;

    new-instance v2, Lcom/google/android/gms/internal/zzqt$zzc;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/zzqt$zzc;-><init>(Lcom/google/android/gms/internal/zzqt;Lcom/google/android/gms/common/api/zzd;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqt;->yy:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqt$zzc;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzqt$zzc;->zzfw(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqt;->yx:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqt$zzc;->zza(Lcom/google/android/gms/internal/zzqt$zzc;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqt;->yC:Landroid/util/SparseArray;

    new-instance v1, Lcom/google/android/gms/internal/zzqt$zza;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqt;->yB:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/google/android/gms/internal/zzqt$zza;-><init>(Lcom/google/android/gms/internal/zzqt;Lcom/google/android/gms/common/api/zzd;ILjava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqt;->yD:Lcom/google/android/gms/internal/zzqt$zzb;

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqt;->yD:Lcom/google/android/gms/internal/zzqt$zzb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqt$zzb;->zza(Lcom/google/android/gms/internal/zzqt$zzb;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_55

    :cond_45
    new-instance v0, Lcom/google/android/gms/internal/zzqt$zzb;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqt;->yB:Ljava/lang/ref/ReferenceQueue;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqt;->yC:Landroid/util/SparseArray;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzqt$zzb;-><init>(Ljava/lang/ref/ReferenceQueue;Landroid/util/SparseArray;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqt;->yD:Lcom/google/android/gms/internal/zzqt$zzb;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqt;->yD:Lcom/google/android/gms/internal/zzqt$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqt$zzb;->start()V

    :cond_55
    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzpy;)V
    .registers 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqt;->yx:Landroid/util/SparseArray;

    iget v1, p1, Lcom/google/android/gms/internal/zzpy;->wf:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqt$zzc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzqt$zzc;->zzb(Lcom/google/android/gms/internal/zzpy;)V

    return-void
.end method

.method public static zzasa()Lcom/google/android/gms/internal/zzqt;
    .registers 2

    sget-object v1, Lcom/google/android/gms/internal/zzqt;->zzaok:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/internal/zzqt;->yu:Lcom/google/android/gms/internal/zzqt;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method private zzasb()V
    .registers 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqt;->yy:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqt$zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqt$zzc;->zzasf()V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqt$zzc;->zza(Lcom/google/android/gms/internal/zzqt$zzc;)V

    goto :goto_a

    :cond_1d
    return-void
.end method

.method static synthetic zzasc()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/zzqt;->zzaok:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzqt;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzqt;->xT:J

    return-wide v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzqt;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzqt;->xS:J

    return-wide v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzqt;)Lcom/google/android/gms/internal/zzqi;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzqt;)Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqt;->yA:Ljava/util/Set;

    return-object v0
.end method

.method private zze(IZ)V
    .registers 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqt;->yx:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqt$zzc;

    if-eqz v0, :cond_15

    if-nez p2, :cond_11

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqt;->yx:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    :cond_11
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzqt$zzc;->zzf(IZ)V

    :goto_14
    return-void

    :cond_15
    const-string/jumbo v0, "GoogleApiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x34

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "onRelease received for unknown instance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/zzqt;)Landroid/util/SparseArray;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqt;->yC:Landroid/util/SparseArray;

    return-object v0
.end method

.method private zzfv(I)V
    .registers 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqt;->yx:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqt$zzc;

    if-eqz v0, :cond_13

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqt;->yx:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzqt$zzc;->zzfx(I)V

    :goto_12
    return-void

    :cond_13
    const-string/jumbo v0, "GoogleApiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "onCleanupLeakInternal received for unknown instance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/zzqt;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqt;->yy:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/zzqt;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqt;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/zzqt;)Lcom/google/android/gms/common/GoogleApiAvailability;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqt;->vP:Lcom/google/android/gms/common/GoogleApiAvailability;

    return-object v0
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/zzqt;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzqt;->yt:J

    return-wide v0
.end method

.method static synthetic zzk(Lcom/google/android/gms/internal/zzqt;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzqt;->yv:I

    return v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x0

    const/4 v2, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_e8

    const-string/jumbo v1, "GoogleApiManager"

    iget v2, p1, Landroid/os/Message;->what:I

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x1f

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "Unknown message id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_25
    return v0

    :pswitch_26
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/zzqb;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzqt;->zza(Lcom/google/android/gms/internal/zzqb;)V

    :cond_2d
    :goto_2d
    move v0, v2

    goto :goto_25

    :pswitch_2f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/api/zzd;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzqt;->zza(Lcom/google/android/gms/common/api/zzd;I)V

    goto :goto_2d

    :pswitch_39
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqt;->zzasb()V

    goto :goto_2d

    :pswitch_3d
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzqt;->zzfv(I)V

    goto :goto_2d

    :pswitch_43
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v2, :cond_4a

    move v0, v2

    :cond_4a
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/zzqt;->zze(IZ)V

    goto :goto_2d

    :pswitch_4e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/zzpy;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzqt;->zza(Lcom/google/android/gms/internal/zzpy;)V

    goto :goto_2d

    :pswitch_56
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqt;->yx:Landroid/util/SparseArray;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqt;->yx:Landroid/util/SparseArray;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqt$zzc;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v3, 0x11

    const-string/jumbo v4, "Error resolution was canceled by the user."

    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzqt$zzc;->zza(Lcom/google/android/gms/internal/zzqt$zzc;Lcom/google/android/gms/common/api/Status;)V

    goto :goto_2d

    :pswitch_78
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqt;->yy:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqt;->yy:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqt$zzc;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqt$zzc;->zzb(Lcom/google/android/gms/internal/zzqt$zzc;)V

    goto :goto_2d

    :pswitch_90
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/zzri;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p0, v3, v1, v0}, Lcom/google/android/gms/internal/zzqt;->zza(ILcom/google/android/gms/internal/zzri;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    goto :goto_2d

    :pswitch_a2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqt;->yy:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqt;->yy:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqt$zzc;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqt$zzc;->zzc(Lcom/google/android/gms/internal/zzqt$zzc;)V

    goto/16 :goto_2d

    :pswitch_bb
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqt;->yy:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqt;->yy:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqt$zzc;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqt$zzc;->zzd(Lcom/google/android/gms/internal/zzqt$zzc;)V

    goto/16 :goto_2d

    :pswitch_d4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/zzrd$zzb;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p0, v3, v1, v0}, Lcom/google/android/gms/internal/zzqt;->zza(ILcom/google/android/gms/internal/zzrd$zzb;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    goto/16 :goto_2d

    nop

    :pswitch_data_e8
    .packed-switch 0x1
        :pswitch_26
        :pswitch_3d
        :pswitch_39
        :pswitch_4e
        :pswitch_56
        :pswitch_2f
        :pswitch_90
        :pswitch_43
        :pswitch_78
        :pswitch_a2
        :pswitch_bb
        :pswitch_d4
    .end packed-switch
.end method

.method public zza(Lcom/google/android/gms/common/ConnectionResult;I)V
    .registers 7

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzqt;->zzc(Lcom/google/android/gms/common/ConnectionResult;I)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqt;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqt;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_13
    return-void
.end method

.method public zza(Lcom/google/android/gms/common/api/zzd;ILcom/google/android/gms/internal/zzqc$zza;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lcom/google/android/gms/common/api/Api$ApiOptions;",
            ">(",
            "Lcom/google/android/gms/common/api/zzd",
            "<TO;>;I",
            "Lcom/google/android/gms/internal/zzqc$zza",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzpy$zzb;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/zzd;->getInstanceId()I

    move-result v1

    invoke-direct {v0, v1, p2, p3}, Lcom/google/android/gms/internal/zzpy$zzb;-><init>(IILcom/google/android/gms/internal/zzqc$zza;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqt;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqt;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public zza(Lcom/google/android/gms/common/api/zzd;ILcom/google/android/gms/internal/zzro;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lcom/google/android/gms/common/api/Api$ApiOptions;",
            "TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/api/zzd",
            "<TO;>;I",
            "Lcom/google/android/gms/internal/zzro",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "TTResult;>;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource",
            "<TTResult;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzpy$zzd;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/zzd;->getInstanceId()I

    move-result v1

    invoke-direct {v0, v1, p2, p3, p4}, Lcom/google/android/gms/internal/zzpy$zzd;-><init>(IILcom/google/android/gms/internal/zzro;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqt;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqt;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzqb;)V
    .registers 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzqb;->zzaqm()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpz;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqt;->yy:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzqt$zzc;

    if-nez v1, :cond_22

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzqb;->cancel()V

    :cond_21
    return-void

    :cond_22
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzqt$zzc;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2e

    sget-object v1, Lcom/google/android/gms/common/ConnectionResult;->uJ:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzqb;->zza(Lcom/google/android/gms/internal/zzpz;Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_8

    :cond_2e
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzqt$zzc;->zzasg()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v3

    if-eqz v3, :cond_3c

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzqt$zzc;->zzasg()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzqb;->zza(Lcom/google/android/gms/internal/zzpz;Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_8

    :cond_3c
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzqt$zzc;->zzb(Lcom/google/android/gms/internal/zzqb;)V

    goto :goto_8
.end method

.method public zza(Lcom/google/android/gms/internal/zzqi;)V
    .registers 4

    sget-object v1, Lcom/google/android/gms/internal/zzqt;->zzaok:Ljava/lang/Object;

    monitor-enter v1

    if-nez p1, :cond_d

    const/4 v0, 0x0

    :try_start_6
    iput-object v0, p0, Lcom/google/android/gms/internal/zzqt;->yz:Lcom/google/android/gms/internal/zzqi;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqt;->yA:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :cond_d
    monitor-exit v1

    return-void

    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public zzaqk()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqt;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqt;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method zzc(Lcom/google/android/gms/common/ConnectionResult;I)Z
    .registers 5

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqt;->vP:Lcom/google/android/gms/common/GoogleApiAvailability;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isUserResolvableError(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqt;->vP:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqt;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/common/GoogleApiAvailability;->zza(Landroid/content/Context;Lcom/google/android/gms/common/ConnectionResult;I)V

    const/4 v0, 0x1

    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public zzd(IZ)V
    .registers 7

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqt;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqt;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    if-eqz p2, :cond_11

    const/4 v0, 0x1

    :goto_9
    invoke-virtual {v2, v3, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_11
    const/4 v0, 0x2

    goto :goto_9
.end method
