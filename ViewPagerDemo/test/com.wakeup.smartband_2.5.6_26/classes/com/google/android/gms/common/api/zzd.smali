.class public abstract Lcom/google/android/gms/common/api/zzd;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/google/android/gms/common/api/Api$ApiOptions;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mId:I

.field private final tv:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<TO;>;"
        }
    .end annotation
.end field

.field private final vA:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final vB:Ljava/util/concurrent/atomic/AtomicInteger;

.field private vC:Lcom/google/android/gms/common/api/Api$zze;

.field private final vv:Lcom/google/android/gms/internal/zzre;

.field private final vw:Lcom/google/android/gms/common/api/Api$ApiOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field

.field private final vx:Lcom/google/android/gms/internal/zzpz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpz",
            "<TO;>;"
        }
    .end annotation
.end field

.field private final vy:Lcom/google/android/gms/internal/zzqt;

.field private final vz:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private final zzajn:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;)V
    .registers 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/Api",
            "<TO;>;TO;)V"
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_a
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/common/api/zzd;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Landroid/os/Looper;)V

    return-void

    :cond_e
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_a
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Landroid/os/Looper;)V
    .registers 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/Api",
            "<TO;>;TO;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzd;->vA:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzd;->vB:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string/jumbo v0, "Null context is not permitted."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Api must not be null."

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Looper must not be null."

    invoke-static {p4, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzd;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/common/api/zzd;->tv:Lcom/google/android/gms/common/api/Api;

    iput-object p3, p0, Lcom/google/android/gms/common/api/zzd;->vw:Lcom/google/android/gms/common/api/Api$ApiOptions;

    iput-object p4, p0, Lcom/google/android/gms/common/api/zzd;->zzajn:Landroid/os/Looper;

    new-instance v0, Lcom/google/android/gms/internal/zzre;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzre;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzd;->vv:Lcom/google/android/gms/internal/zzre;

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->tv:Lcom/google/android/gms/common/api/Api;

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzd;->vw:Lcom/google/android/gms/common/api/Api$ApiOptions;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzpz;->zza(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;)Lcom/google/android/gms/internal/zzpz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzd;->vx:Lcom/google/android/gms/internal/zzpz;

    new-instance v0, Lcom/google/android/gms/internal/zzqu;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzqu;-><init>(Lcom/google/android/gms/common/api/zzd;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzd;->vz:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/zzqt;->zza(Landroid/content/Context;Lcom/google/android/gms/common/api/zzd;)Landroid/util/Pair;

    move-result-object v1

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/zzqt;

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzd;->vy:Lcom/google/android/gms/internal/zzqt;

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/api/zzd;->mId:I

    return-void
.end method

.method private zza(ILcom/google/android/gms/internal/zzqc$zza;)Lcom/google/android/gms/internal/zzqc$zza;
    .registers 4
    .param p2    # Lcom/google/android/gms/internal/zzqc$zza;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "T:",
            "Lcom/google/android/gms/internal/zzqc$zza",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            "TA;>;>(ITT;)TT;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzqc$zza;->zzaqt()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->vy:Lcom/google/android/gms/internal/zzqt;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzqt;->zza(Lcom/google/android/gms/common/api/zzd;ILcom/google/android/gms/internal/zzqc$zza;)V

    return-object p2
.end method

.method private zza(ILcom/google/android/gms/internal/zzro;)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .param p2    # Lcom/google/android/gms/internal/zzro;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            "A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            ">(I",
            "Lcom/google/android/gms/internal/zzro",
            "<TA;TTResult;>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<TTResult;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzd;->vy:Lcom/google/android/gms/internal/zzqt;

    invoke-virtual {v1, p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzqt;->zza(Lcom/google/android/gms/common/api/zzd;ILcom/google/android/gms/internal/zzro;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getInstanceId()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/api/zzd;->mId:I

    return v0
.end method

.method public getLooper()Landroid/os/Looper;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzajn:Landroid/os/Looper;

    return-object v0
.end method

.method public release()V
    .registers 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzd;->vA:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_a

    :goto_9
    return-void

    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/common/api/zzd;->vv:Lcom/google/android/gms/internal/zzre;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzre;->release()V

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzd;->vy:Lcom/google/android/gms/internal/zzqt;

    iget v2, p0, Lcom/google/android/gms/common/api/zzd;->mId:I

    iget-object v3, p0, Lcom/google/android/gms/common/api/zzd;->vB:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-lez v3, :cond_1f

    :goto_1b
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzqt;->zzd(IZ)V

    goto :goto_9

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public zza(Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$zze;
    .registers 12
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/zzd;->zzapw()Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->tv:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->zzapq()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->tv:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->zzapo()Lcom/google/android/gms/common/api/Api$zzh;

    move-result-object v2

    new-instance v0, Lcom/google/android/gms/common/internal/zzai;

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzd;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Api$zzh;->zzapt()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/common/api/zzd;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/gms/common/internal/zzh;->zzcd(Landroid/content/Context;)Lcom/google/android/gms/common/internal/zzh;

    move-result-object v6

    iget-object v4, p0, Lcom/google/android/gms/common/api/zzd;->vw:Lcom/google/android/gms/common/api/Api$ApiOptions;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/common/api/Api$zzh;->zzr(Ljava/lang/Object;)Lcom/google/android/gms/common/api/Api$zzg;

    move-result-object v7

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/common/internal/zzai;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Lcom/google/android/gms/common/internal/zzh;Lcom/google/android/gms/common/api/Api$zzg;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzd;->vC:Lcom/google/android/gms/common/api/Api$zze;

    :cond_30
    :goto_30
    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->vC:Lcom/google/android/gms/common/api/Api$zze;

    return-object v0

    :cond_33
    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->tv:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->zzapn()Lcom/google/android/gms/common/api/Api$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzd;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/common/api/zzd;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzh;->zzcd(Landroid/content/Context;)Lcom/google/android/gms/common/internal/zzh;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/common/api/zzd;->vw:Lcom/google/android/gms/common/api/Api$ApiOptions;

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/common/api/Api$zza;->zza(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzh;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$zze;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzd;->vC:Lcom/google/android/gms/common/api/Api$zze;

    goto :goto_30
.end method

.method public zza(Lcom/google/android/gms/internal/zzqc$zza;)Lcom/google/android/gms/internal/zzqc$zza;
    .registers 3
    .param p1    # Lcom/google/android/gms/internal/zzqc$zza;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "T:",
            "Lcom/google/android/gms/internal/zzqc$zza",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/zzd;->zza(ILcom/google/android/gms/internal/zzqc$zza;)Lcom/google/android/gms/internal/zzqc$zza;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzro;)Lcom/google/android/gms/tasks/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            "A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            ">(",
            "Lcom/google/android/gms/internal/zzro",
            "<TA;TTResult;>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<TTResult;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/zzd;->zza(ILcom/google/android/gms/internal/zzro;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public zzapu()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->vB:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public zzapv()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->vB:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->vA:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->vy:Lcom/google/android/gms/internal/zzqt;

    iget v1, p0, Lcom/google/android/gms/common/api/zzd;->mId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzqt;->zzd(IZ)V

    :cond_18
    return-void
.end method

.method public zzapw()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->vC:Lcom/google/android/gms/common/api/Api$zze;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public zzapx()Lcom/google/android/gms/internal/zzpz;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzpz",
            "<TO;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->vx:Lcom/google/android/gms/internal/zzpz;

    return-object v0
.end method

.method public zzapy()Lcom/google/android/gms/common/api/GoogleApiClient;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->vz:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method public zzb(Lcom/google/android/gms/internal/zzqc$zza;)Lcom/google/android/gms/internal/zzqc$zza;
    .registers 3
    .param p1    # Lcom/google/android/gms/internal/zzqc$zza;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "T:",
            "Lcom/google/android/gms/internal/zzqc$zza",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/zzd;->zza(ILcom/google/android/gms/internal/zzqc$zza;)Lcom/google/android/gms/internal/zzqc$zza;

    move-result-object v0

    return-object v0
.end method

.method public zzb(Lcom/google/android/gms/internal/zzro;)Lcom/google/android/gms/tasks/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            "A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            ">(",
            "Lcom/google/android/gms/internal/zzro",
            "<TA;TTResult;>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<TTResult;>;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/zzd;->zza(ILcom/google/android/gms/internal/zzro;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method
