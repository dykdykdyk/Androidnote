.class public final Lcom/google/android/gms/internal/zzqp;
.super Lcom/google/android/gms/common/api/GoogleApiClient;

# interfaces
.implements Lcom/google/android/gms/internal/zzqy$zza;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzqp$zza;,
        Lcom/google/android/gms/internal/zzqp$zzb;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final vN:I

.field private final vP:Lcom/google/android/gms/common/GoogleApiAvailability;

.field final vQ:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza",
            "<+",
            "Lcom/google/android/gms/internal/zzwz;",
            "Lcom/google/android/gms/internal/zzxa;",
            ">;"
        }
    .end annotation
.end field

.field final xB:Lcom/google/android/gms/common/internal/zzh;

.field final xC:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final xO:Lcom/google/android/gms/common/internal/zzm;

.field private xP:Lcom/google/android/gms/internal/zzqy;

.field final xQ:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/android/gms/internal/zzqc$zza",
            "<**>;>;"
        }
    .end annotation
.end field

.field private volatile xR:Z

.field private xS:J

.field private xT:J

.field private final xU:Lcom/google/android/gms/internal/zzqp$zza;

.field xV:Lcom/google/android/gms/internal/zzqv;

.field final xW:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<*>;",
            "Lcom/google/android/gms/common/api/Api$zze;",
            ">;"
        }
    .end annotation
.end field

.field xX:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private final xY:Lcom/google/android/gms/internal/zzre;

.field private final xZ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/zzqf;",
            ">;"
        }
    .end annotation
.end field

.field private final xf:Ljava/util/concurrent/locks/Lock;

.field private ya:Ljava/lang/Integer;

.field yb:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/zzrp;",
            ">;"
        }
    .end annotation
.end field

.field final yc:Lcom/google/android/gms/internal/zzrq;

.field private final yd:Lcom/google/android/gms/common/internal/zzm$zza;

.field private final zzajn:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzh;Lcom/google/android/gms/common/GoogleApiAvailability;Lcom/google/android/gms/common/api/Api$zza;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/Map;IILjava/util/ArrayList;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/locks/Lock;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/internal/zzh;",
            "Lcom/google/android/gms/common/GoogleApiAvailability;",
            "Lcom/google/android/gms/common/api/Api$zza",
            "<+",
            "Lcom/google/android/gms/internal/zzwz;",
            "Lcom/google/android/gms/internal/zzxa;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<*>;",
            "Lcom/google/android/gms/common/api/Api$zze;",
            ">;II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/zzqf;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/api/GoogleApiClient;-><init>()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzqp;->xP:Lcom/google/android/gms/internal/zzqy;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzqp;->xQ:Ljava/util/Queue;

    const-wide/32 v2, 0x1d4c0

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzqp;->xS:J

    const-wide/16 v2, 0x1388

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzqp;->xT:J

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzqp;->xX:Ljava/util/Set;

    new-instance v2, Lcom/google/android/gms/internal/zzre;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzre;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzqp;->xY:Lcom/google/android/gms/internal/zzre;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzqp;->ya:Ljava/lang/Integer;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzqp;->yb:Ljava/util/Set;

    new-instance v2, Lcom/google/android/gms/internal/zzqp$1;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzqp$1;-><init>(Lcom/google/android/gms/internal/zzqp;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzqp;->yd:Lcom/google/android/gms/common/internal/zzm$zza;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqp;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzqp;->xf:Ljava/util/concurrent/locks/Lock;

    new-instance v2, Lcom/google/android/gms/common/internal/zzm;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzqp;->yd:Lcom/google/android/gms/common/internal/zzm$zza;

    invoke-direct {v2, p3, v3}, Lcom/google/android/gms/common/internal/zzm;-><init>(Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzm$zza;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzqp;->xO:Lcom/google/android/gms/common/internal/zzm;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzqp;->zzajn:Landroid/os/Looper;

    new-instance v2, Lcom/google/android/gms/internal/zzqp$zza;

    invoke-direct {v2, p0, p3}, Lcom/google/android/gms/internal/zzqp$zza;-><init>(Lcom/google/android/gms/internal/zzqp;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzqp;->xU:Lcom/google/android/gms/internal/zzqp$zza;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzqp;->vP:Lcom/google/android/gms/common/GoogleApiAvailability;

    move/from16 v0, p11

    iput v0, p0, Lcom/google/android/gms/internal/zzqp;->vN:I

    iget v2, p0, Lcom/google/android/gms/internal/zzqp;->vN:I

    if-ltz v2, :cond_57

    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzqp;->ya:Ljava/lang/Integer;

    :cond_57
    iput-object p7, p0, Lcom/google/android/gms/internal/zzqp;->xC:Ljava/util/Map;

    iput-object p10, p0, Lcom/google/android/gms/internal/zzqp;->xW:Ljava/util/Map;

    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xZ:Ljava/util/ArrayList;

    new-instance v2, Lcom/google/android/gms/internal/zzrq;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzqp;->xW:Ljava/util/Map;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzrq;-><init>(Ljava/util/Map;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzqp;->yc:Lcom/google/android/gms/internal/zzrq;

    invoke-interface {p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzqp;->xO:Lcom/google/android/gms/common/internal/zzm;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/common/internal/zzm;->registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    goto :goto_6c

    :cond_7e
    invoke-interface {p9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_82
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_94

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzqp;->xO:Lcom/google/android/gms/common/internal/zzm;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/common/internal/zzm;->registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    goto :goto_82

    :cond_94
    iput-object p4, p0, Lcom/google/android/gms/internal/zzqp;->xB:Lcom/google/android/gms/common/internal/zzh;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzqp;->vQ:Lcom/google/android/gms/common/api/Api$zza;

    return-void
.end method

.method private resume()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqp;->isResuming()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqp;->zzarq()V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_14

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_14
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqp;->xf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public static zza(Ljava/lang/Iterable;Z)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/android/gms/common/api/Api$zze;",
            ">;Z)I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v3, 0x1

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    move v2, v0

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->zzahd()Z

    move-result v5

    if-eqz v5, :cond_1b

    move v2, v3

    :cond_1b
    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->zzahs()Z

    move-result v0

    if-eqz v0, :cond_2e

    move v0, v3

    :goto_22
    move v1, v0

    goto :goto_8

    :cond_24
    if-eqz v2, :cond_2c

    if-eqz v1, :cond_2b

    if-eqz p1, :cond_2b

    const/4 v3, 0x2

    :cond_2b
    :goto_2b
    return v3

    :cond_2c
    const/4 v3, 0x3

    goto :goto_2b

    :cond_2e
    move v0, v1

    goto :goto_22
.end method

.method private zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzrm;Z)V
    .registers 6

    sget-object v0, Lcom/google/android/gms/internal/zzrx;->Dh:Lcom/google/android/gms/internal/zzry;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzry;->zzg(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzqp$4;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/google/android/gms/internal/zzqp$4;-><init>(Lcom/google/android/gms/internal/zzqp;Lcom/google/android/gms/internal/zzrm;ZLcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzqp;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqp;->resume()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzqp;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzrm;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzqp;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzrm;Z)V

    return-void
.end method

.method private zzarq()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xO:Lcom/google/android/gms/common/internal/zzm;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzm;->zzauu()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xP:Lcom/google/android/gms/internal/zzqy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqy;->connect()V

    return-void
.end method

.method private zzarr()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqp;->zzart()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqp;->zzarq()V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_14

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_14
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqp;->xf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzqp;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqp;->zzarr()V

    return-void
.end method

.method private zzb(Lcom/google/android/gms/internal/zzqz;)V
    .registers 4
    .param p1    # Lcom/google/android/gms/internal/zzqz;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, Lcom/google/android/gms/internal/zzqp;->vN:I

    if-ltz v0, :cond_e

    invoke-static {p1}, Lcom/google/android/gms/internal/zzqa;->zza(Lcom/google/android/gms/internal/zzqz;)Lcom/google/android/gms/internal/zzqa;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/zzqp;->vN:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzqa;->zzfq(I)V

    return-void

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Called stopAutoManage but automatic lifecycle management is not enabled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzqp;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private zzft(I)V
    .registers 14

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqp;->ya:Ljava/lang/Integer;

    if-nez v1, :cond_11

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzqp;->ya:Ljava/lang/Integer;

    :cond_c
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqp;->xP:Lcom/google/android/gms/internal/zzqy;

    if-eqz v1, :cond_67

    :goto_10
    return-void

    :cond_11
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqp;->ya:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, p1, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzqp;->zzfu(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqp;->ya:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzqp;->zzfu(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x33

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "Cannot use sign-in mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ". Mode was already set to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_67
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqp;->xW:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    move v2, v0

    :goto_73
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->zzahd()Z

    move-result v5

    if-eqz v5, :cond_86

    move v2, v3

    :cond_86
    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->zzahs()Z

    move-result v0

    if-eqz v0, :cond_e8

    move v0, v3

    :goto_8d
    move v1, v0

    goto :goto_73

    :cond_8f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->ya:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_ea

    :cond_98
    :pswitch_98
    new-instance v0, Lcom/google/android/gms/internal/zzqr;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqp;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzqp;->xf:Ljava/util/concurrent/locks/Lock;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzqp;->zzajn:Landroid/os/Looper;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzqp;->vP:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzqp;->xW:Ljava/util/Map;

    iget-object v7, p0, Lcom/google/android/gms/internal/zzqp;->xB:Lcom/google/android/gms/common/internal/zzh;

    iget-object v8, p0, Lcom/google/android/gms/internal/zzqp;->xC:Ljava/util/Map;

    iget-object v9, p0, Lcom/google/android/gms/internal/zzqp;->vQ:Lcom/google/android/gms/common/api/Api$zza;

    iget-object v10, p0, Lcom/google/android/gms/internal/zzqp;->xZ:Ljava/util/ArrayList;

    move-object v2, p0

    move-object v11, p0

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/internal/zzqr;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzqp;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/zzc;Ljava/util/Map;Lcom/google/android/gms/common/internal/zzh;Ljava/util/Map;Lcom/google/android/gms/common/api/Api$zza;Ljava/util/ArrayList;Lcom/google/android/gms/internal/zzqy$zza;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xP:Lcom/google/android/gms/internal/zzqy;

    goto/16 :goto_10

    :pswitch_b5
    if-nez v2, :cond_c0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "SIGN_IN_MODE_REQUIRED cannot be used on a GoogleApiClient that does not contain any authenticated APIs. Use connect() instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c0
    if-eqz v1, :cond_98

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot use SIGN_IN_MODE_REQUIRED with GOOGLE_SIGN_IN_API. Use connect(SIGN_IN_MODE_OPTIONAL) instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_cb
    if-eqz v2, :cond_98

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqp;->xf:Ljava/util/concurrent/locks/Lock;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzqp;->zzajn:Landroid/os/Looper;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzqp;->vP:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzqp;->xW:Ljava/util/Map;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzqp;->xB:Lcom/google/android/gms/common/internal/zzh;

    iget-object v7, p0, Lcom/google/android/gms/internal/zzqp;->xC:Ljava/util/Map;

    iget-object v8, p0, Lcom/google/android/gms/internal/zzqp;->vQ:Lcom/google/android/gms/common/api/Api$zza;

    iget-object v9, p0, Lcom/google/android/gms/internal/zzqp;->xZ:Ljava/util/ArrayList;

    move-object v1, p0

    invoke-static/range {v0 .. v9}, Lcom/google/android/gms/internal/zzqh;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzqp;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/zzc;Ljava/util/Map;Lcom/google/android/gms/common/internal/zzh;Ljava/util/Map;Lcom/google/android/gms/common/api/Api$zza;Ljava/util/ArrayList;)Lcom/google/android/gms/internal/zzqh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xP:Lcom/google/android/gms/internal/zzqy;

    goto/16 :goto_10

    :cond_e8
    move v0, v1

    goto :goto_8d

    :pswitch_data_ea
    .packed-switch 0x1
        :pswitch_b5
        :pswitch_cb
        :pswitch_98
    .end packed-switch
.end method

.method static zzfu(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_14

    const-string/jumbo v0, "UNKNOWN"

    :goto_6
    return-object v0

    :pswitch_7
    const-string/jumbo v0, "SIGN_IN_MODE_NONE"

    goto :goto_6

    :pswitch_b
    const-string/jumbo v0, "SIGN_IN_MODE_REQUIRED"

    goto :goto_6

    :pswitch_f
    const-string/jumbo v0, "SIGN_IN_MODE_OPTIONAL"

    goto :goto_6

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_b
        :pswitch_f
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public blockingConnect()Lcom/google/android/gms/common/ConnectionResult;
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v0, v3, :cond_40

    move v0, v1

    :goto_d
    const-string/jumbo v3, "blockingConnect must not be called on the UI thread"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_18
    iget v0, p0, Lcom/google/android/gms/internal/zzqp;->vN:I

    if-ltz v0, :cond_44

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->ya:Ljava/lang/Integer;

    if-eqz v0, :cond_42

    :goto_20
    const-string/jumbo v0, "Sign-in mode should have been set explicitly by auto-manage."

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    :cond_26
    :goto_26
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->ya:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzqp;->zzft(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xO:Lcom/google/android/gms/common/internal/zzm;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzm;->zzauu()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xP:Lcom/google/android/gms/internal/zzqy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqy;->blockingConnect()Lcom/google/android/gms/common/ConnectionResult;
    :try_end_39
    .catchall {:try_start_18 .. :try_end_39} :catchall_5a

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqp;->xf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :cond_40
    move v0, v2

    goto :goto_d

    :cond_42
    move v1, v2

    goto :goto_20

    :cond_44
    :try_start_44
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->ya:Ljava/lang/Integer;

    if-nez v0, :cond_61

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xW:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzqp;->zza(Ljava/lang/Iterable;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqp;->ya:Ljava/lang/Integer;
    :try_end_59
    .catchall {:try_start_44 .. :try_end_59} :catchall_5a

    goto :goto_26

    :catchall_5a
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqp;->xf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_61
    :try_start_61
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->ya:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot call blockingConnect() when sign-in mode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_73
    .catchall {:try_start_61 .. :try_end_73} :catchall_5a
.end method

.method public blockingConnect(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/ConnectionResult;
    .registers 7
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_c

    const/4 v0, 0x1

    :cond_c
    const-string/jumbo v1, "blockingConnect must not be called on the UI thread"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    const-string/jumbo v0, "TimeUnit must not be null"

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_1d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->ya:Ljava/lang/Integer;

    if-nez v0, :cond_4c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xW:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzqp;->zza(Ljava/lang/Iterable;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqp;->ya:Ljava/lang/Integer;

    :cond_32
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->ya:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzqp;->zzft(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xO:Lcom/google/android/gms/common/internal/zzm;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzm;->zzauu()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xP:Lcom/google/android/gms/internal/zzqy;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzqy;->blockingConnect(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/ConnectionResult;
    :try_end_45
    .catchall {:try_start_1d .. :try_end_45} :catchall_5e

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqp;->xf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :cond_4c
    :try_start_4c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->ya:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_32

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot call blockingConnect() when sign-in mode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5e
    .catchall {:try_start_4c .. :try_end_5e} :catchall_5e

    :catchall_5e
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqp;->xf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public clearDefaultAccountAndReconnect()Lcom/google/android/gms/common/api/PendingResult;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqp;->isConnected()Z

    move-result v0

    const-string/jumbo v2, "GoogleApiClient is not connected yet."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->ya:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2e

    const/4 v0, 0x1

    :goto_15
    const-string/jumbo v2, "Cannot use clearDefaultAccountAndReconnect with GOOGLE_SIGN_IN_API"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/internal/zzrm;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzrm;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqp;->xW:Ljava/util/Map;

    sget-object v3, Lcom/google/android/gms/internal/zzrx;->fa:Lcom/google/android/gms/common/api/Api$zzf;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-direct {p0, p0, v0, v1}, Lcom/google/android/gms/internal/zzqp;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzrm;Z)V

    :goto_2d
    return-object v0

    :cond_2e
    move v0, v1

    goto :goto_15

    :cond_30
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/zzqp$2;

    invoke-direct {v2, p0, v1, v0}, Lcom/google/android/gms/internal/zzqp$2;-><init>(Lcom/google/android/gms/internal/zzqp;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/zzrm;)V

    new-instance v3, Lcom/google/android/gms/internal/zzqp$3;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/zzqp$3;-><init>(Lcom/google/android/gms/internal/zzqp;Lcom/google/android/gms/internal/zzrm;)V

    new-instance v4, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzqp;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v5, Lcom/google/android/gms/internal/zzrx;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzqp;->xU:Lcom/google/android/gms/internal/zzqp$zza;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->setHandler(Landroid/os/Handler;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    goto :goto_2d
.end method

.method public connect()V
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqp;->xf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_6
    iget v1, p0, Lcom/google/android/gms/internal/zzqp;->vN:I

    if-ltz v1, :cond_24

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqp;->ya:Ljava/lang/Integer;

    if-eqz v1, :cond_f

    const/4 v0, 0x1

    :cond_f
    const-string/jumbo v1, "Sign-in mode should have been set explicitly by auto-manage."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    :cond_15
    :goto_15
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->ya:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzqp;->connect(I)V
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_3a

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_24
    :try_start_24
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->ya:Ljava/lang/Integer;

    if-nez v0, :cond_41

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xW:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzqp;->zza(Ljava/lang/Iterable;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqp;->ya:Ljava/lang/Integer;
    :try_end_39
    .catchall {:try_start_24 .. :try_end_39} :catchall_3a

    goto :goto_15

    :catchall_3a
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqp;->xf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_41
    :try_start_41
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->ya:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_15

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot call connect() when SignInMode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_53
    .catchall {:try_start_41 .. :try_end_53} :catchall_3a
.end method

.method public connect(I)V
    .registers 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqp;->xf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v1, 0x3

    if-eq p1, v1, :cond_e

    if-eq p1, v0, :cond_e

    const/4 v1, 0x2

    if-ne p1, v1, :cond_33

    :cond_e
    :goto_e
    :try_start_e
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x21

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Illegal sign-in mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzqp;->zzft(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqp;->zzarq()V
    :try_end_2d
    .catchall {:try_start_e .. :try_end_2d} :catchall_35

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_33
    const/4 v0, 0x0

    goto :goto_e

    :catchall_35
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqp;->xf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public disconnect()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->yc:Lcom/google/android/gms/internal/zzrq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrq;->release()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xP:Lcom/google/android/gms/internal/zzqy;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xP:Lcom/google/android/gms/internal/zzqy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqy;->disconnect()V

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xY:Lcom/google/android/gms/internal/zzre;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzre;->release()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xQ:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqc$zza;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzqc$zza;->zza(Lcom/google/android/gms/internal/zzrq$zzb;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqc$zza;->cancel()V
    :try_end_31
    .catchall {:try_start_5 .. :try_end_31} :catchall_32

    goto :goto_1e

    :catchall_32
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqp;->xf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_39
    :try_start_39
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xQ:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xP:Lcom/google/android/gms/internal/zzqy;
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_32

    if-nez v0, :cond_48

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_47
    return-void

    :cond_48
    :try_start_48
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqp;->zzart()Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xO:Lcom/google/android/gms/common/internal/zzm;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzm;->zzaut()V
    :try_end_50
    .catchall {:try_start_48 .. :try_end_50} :catchall_32

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_47
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v1, "mContext="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqp;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v1, "mResuming="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzqp;->xR:Z

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mWorkQueue.size()="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqp;->xQ:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->yc:Lcom/google/android/gms/internal/zzrq;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/zzrq;->dump(Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xP:Lcom/google/android/gms/internal/zzqy;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xP:Lcom/google/android/gms/internal/zzqy;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzqy;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_3e
    return-void
.end method

.method public getConnectionResult(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/ConnectionResult;
    .registers 5
    .param p1    # Lcom/google/android/gms/common/api/Api;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;)",
            "Lcom/google/android/gms/common/ConnectionResult;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqp;->isConnected()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqp;->isResuming()Z

    move-result v0

    if-nez v0, :cond_21

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot invoke getConnectionResult unless GoogleApiClient is connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1a

    :catchall_1a
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqp;->xf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_21
    :try_start_21
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xW:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->zzapp()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xP:Lcom/google/android/gms/internal/zzqy;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzqy;->getConnectionResult(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    if-nez v0, :cond_75

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqp;->isResuming()Z

    move-result v0

    if-eqz v0, :cond_43

    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->uJ:Lcom/google/android/gms/common/ConnectionResult;
    :try_end_3d
    .catchall {:try_start_21 .. :try_end_3d} :catchall_1a

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqp;->xf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_42
    return-object v0

    :cond_43
    :try_start_43
    const-string/jumbo v0, "GoogleApiClientImpl"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqp;->zzarv()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "GoogleApiClientImpl"

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, " requested in getConnectionResult is not connected but is not present in the failed  connections map"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V
    :try_end_6f
    .catchall {:try_start_43 .. :try_end_6f} :catchall_1a

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqp;->xf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_42

    :cond_75
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqp;->xf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_42

    :cond_7b
    :try_start_7b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, " was never registered with GoogleApiClient"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_90
    .catchall {:try_start_7b .. :try_end_90} :catchall_1a
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getLooper()Landroid/os/Looper;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->zzajn:Landroid/os/Looper;

    return-object v0
.end method

.method public getSessionId()I
    .registers 2

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public hasConnectedApi(Lcom/google/android/gms/common/api/Api;)Z
    .registers 4
    .param p1    # Lcom/google/android/gms/common/api/Api;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xW:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->zzapp()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zze;

    if-eqz v0, :cond_16

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public isConnected()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xP:Lcom/google/android/gms/internal/zzqy;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xP:Lcom/google/android/gms/internal/zzqy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqy;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isConnecting()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xP:Lcom/google/android/gms/internal/zzqy;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xP:Lcom/google/android/gms/internal/zzqy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqy;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isConnectionCallbacksRegistered(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Z
    .registers 3
    .param p1    # Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xO:Lcom/google/android/gms/common/internal/zzm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zzm;->isConnectionCallbacksRegistered(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Z

    move-result v0

    return v0
.end method

.method public isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Z
    .registers 3
    .param p1    # Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xO:Lcom/google/android/gms/common/internal/zzm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zzm;->isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Z

    move-result v0

    return v0
.end method

.method isResuming()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzqp;->xR:Z

    return v0
.end method

.method public reconnect()V
    .registers 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqp;->disconnect()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqp;->connect()V

    return-void
.end method

.method public registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V
    .registers 3
    .param p1    # Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xO:Lcom/google/android/gms/common/internal/zzm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zzm;->registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    return-void
.end method

.method public registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .registers 3
    .param p1    # Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xO:Lcom/google/android/gms/common/internal/zzm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zzm;->registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-void
.end method

.method public stopAutoManage(Landroid/support/v4/app/FragmentActivity;)V
    .registers 3
    .param p1    # Landroid/support/v4/app/FragmentActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/google/android/gms/internal/zzqz;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzqz;-><init>(Landroid/app/Activity;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzqp;->zzb(Lcom/google/android/gms/internal/zzqz;)V

    return-void
.end method

.method public unregisterConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V
    .registers 3
    .param p1    # Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xO:Lcom/google/android/gms/common/internal/zzm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zzm;->unregisterConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    return-void
.end method

.method public unregisterConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .registers 3
    .param p1    # Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xO:Lcom/google/android/gms/common/internal/zzm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zzm;->unregisterConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/common/api/Api$zzc;)Lcom/google/android/gms/common/api/Api$zze;
    .registers 4
    .param p1    # Lcom/google/android/gms/common/api/Api$zzc;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/google/android/gms/common/api/Api$zze;",
            ">(",
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<TC;>;)TC;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xW:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zze;

    const-string/jumbo v1, "Appropriate Api was not requested."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzrp;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->yb:Ljava/util/Set;

    if-nez v0, :cond_10

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqp;->yb:Ljava/util/Set;

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->yb:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_1b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_1b
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqp;->xf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public zza(Lcom/google/android/gms/common/api/Api;)Z
    .registers 4
    .param p1    # Lcom/google/android/gms/common/api/Api;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xW:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->zzapp()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzrl;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xP:Lcom/google/android/gms/internal/zzqy;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xP:Lcom/google/android/gms/internal/zzqy;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzqy;->zza(Lcom/google/android/gms/internal/zzrl;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public zzaqb()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xP:Lcom/google/android/gms/internal/zzqy;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xP:Lcom/google/android/gms/internal/zzqy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqy;->zzaqb()V

    :cond_9
    return-void
.end method

.method zzars()V
    .registers 5

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqp;->isResuming()Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_7
    return-void

    :cond_8
    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzqp;->xR:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xV:Lcom/google/android/gms/internal/zzqv;

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->vP:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqp;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzqp$zzb;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzqp$zzb;-><init>(Lcom/google/android/gms/internal/zzqp;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzqv$zza;)Lcom/google/android/gms/internal/zzqv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xV:Lcom/google/android/gms/internal/zzqv;

    :cond_21
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xU:Lcom/google/android/gms/internal/zzqp$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqp;->xU:Lcom/google/android/gms/internal/zzqp$zza;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzqp$zza;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzqp;->xS:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzqp$zza;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xU:Lcom/google/android/gms/internal/zzqp$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqp;->xU:Lcom/google/android/gms/internal/zzqp$zza;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzqp$zza;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzqp;->xT:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzqp$zza;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_7
.end method

.method zzart()Z
    .registers 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqp;->isResuming()Z

    move-result v2

    if-nez v2, :cond_9

    :goto_8
    return v0

    :cond_9
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzqp;->xR:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xU:Lcom/google/android/gms/internal/zzqp$zza;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzqp$zza;->removeMessages(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xU:Lcom/google/android/gms/internal/zzqp$zza;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzqp$zza;->removeMessages(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xV:Lcom/google/android/gms/internal/zzqv;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xV:Lcom/google/android/gms/internal/zzqv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqv;->unregister()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xV:Lcom/google/android/gms/internal/zzqv;

    :cond_22
    move v0, v1

    goto :goto_8
.end method

.method zzaru()Z
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqp;->xf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_6
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqp;->yb:Ljava/util/Set;
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_1f

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqp;->xf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_f
    return v0

    :cond_10
    :try_start_10
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqp;->yb:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_1f

    move-result v1

    if-nez v1, :cond_19

    const/4 v0, 0x1

    :cond_19
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqp;->xf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_f

    :catchall_1f
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqp;->xf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method zzarv()Ljava/lang/String;
    .registers 5

    const/4 v3, 0x0

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    const-string/jumbo v1, ""

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1, v3, v2, v3}, Lcom/google/android/gms/internal/zzqp;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method zzb(Lcom/google/android/gms/common/api/Api$zzc;)Lcom/google/android/gms/common/api/Api$zze;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/google/android/gms/common/api/Api$zze;",
            ">(",
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<*>;)TC;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xW:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zze;

    const-string/jumbo v1, "Appropriate Api was not requested."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public zzb(Lcom/google/android/gms/internal/zzrp;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->yb:Ljava/util/Set;

    if-nez v0, :cond_1d

    const-string/jumbo v0, "GoogleApiClientImpl"

    const-string/jumbo v1, "Attempted to remove pending transform when no transforms are registered."

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_34

    :cond_17
    :goto_17
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_1d
    :try_start_1d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->yb:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    const-string/jumbo v0, "GoogleApiClientImpl"

    const-string/jumbo v1, "Failed to remove pending transform - this may lead to memory leaks!"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_33
    .catchall {:try_start_1d .. :try_end_33} :catchall_34

    goto :goto_17

    :catchall_34
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqp;->xf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_3b
    :try_start_3b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqp;->zzaru()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xP:Lcom/google/android/gms/internal/zzqy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqy;->zzaqy()V
    :try_end_46
    .catchall {:try_start_3b .. :try_end_46} :catchall_34

    goto :goto_17
.end method

.method public zzc(Lcom/google/android/gms/internal/zzqc$zza;)Lcom/google/android/gms/internal/zzqc$zza;
    .registers 6
    .param p1    # Lcom/google/android/gms/internal/zzqc$zza;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "R::",
            "Lcom/google/android/gms/common/api/Result;",
            "T:",
            "Lcom/google/android/gms/internal/zzqc$zza",
            "<TR;TA;>;>(TT;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzqc$zza;->zzapp()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v0

    if-eqz v0, :cond_61

    const/4 v0, 0x1

    :goto_7
    const-string/jumbo v1, "This task can not be enqueued (it\'s probably a Batch or malformed)"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xW:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzqc$zza;->zzapp()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzqc$zza;->zzaqn()Lcom/google/android/gms/common/api/Api;

    move-result-object v0

    if-eqz v0, :cond_63

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzqc$zza;->zzaqn()Lcom/google/android/gms/common/api/Api;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x41

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "GoogleApiClient is not configured to use "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " required for this call."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_52
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xP:Lcom/google/android/gms/internal/zzqy;

    if-nez v0, :cond_67

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xQ:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_5b
    .catchall {:try_start_52 .. :try_end_5b} :catchall_73

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_60
    return-object p1

    :cond_61
    const/4 v0, 0x0

    goto :goto_7

    :cond_63
    const-string/jumbo v0, "the API"

    goto :goto_25

    :cond_67
    :try_start_67
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xP:Lcom/google/android/gms/internal/zzqy;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzqy;->zzc(Lcom/google/android/gms/internal/zzqc$zza;)Lcom/google/android/gms/internal/zzqc$zza;
    :try_end_6c
    .catchall {:try_start_67 .. :try_end_6c} :catchall_73

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_60

    :catchall_73
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqp;->xf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public zzc(IZ)V
    .registers 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    if-nez p2, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqp;->zzars()V

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->yc:Lcom/google/android/gms/internal/zzrq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrq;->zzasw()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xO:Lcom/google/android/gms/common/internal/zzm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zzm;->zzgo(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xO:Lcom/google/android/gms/common/internal/zzm;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzm;->zzaut()V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1d

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqp;->zzarq()V

    :cond_1d
    return-void
.end method

.method public zzd(Lcom/google/android/gms/internal/zzqc$zza;)Lcom/google/android/gms/internal/zzqc$zza;
    .registers 6
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

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzqc$zza;->zzapp()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v0

    if-eqz v0, :cond_66

    const/4 v0, 0x1

    :goto_7
    const-string/jumbo v1, "This task can not be executed (it\'s probably a Batch or malformed)"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xW:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzqc$zza;->zzapp()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzqc$zza;->zzaqn()Lcom/google/android/gms/common/api/Api;

    move-result-object v0

    if-eqz v0, :cond_68

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzqc$zza;->zzaqn()Lcom/google/android/gms/common/api/Api;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x41

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "GoogleApiClient is not configured to use "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " required for this call."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_52
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xP:Lcom/google/android/gms/internal/zzqy;

    if-nez v0, :cond_6c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "GoogleApiClient is not connected yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5f
    .catchall {:try_start_52 .. :try_end_5f} :catchall_5f

    :catchall_5f
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqp;->xf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_66
    const/4 v0, 0x0

    goto :goto_7

    :cond_68
    const-string/jumbo v0, "the API"

    goto :goto_25

    :cond_6c
    :try_start_6c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqp;->isResuming()Z

    move-result v0

    if-eqz v0, :cond_98

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xQ:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :goto_77
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xQ:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_92

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xQ:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqc$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqp;->yc:Lcom/google/android/gms/internal/zzrq;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzrq;->zzb(Lcom/google/android/gms/internal/zzqe;)V

    sget-object v1, Lcom/google/android/gms/common/api/Status;->wa:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzqc$zza;->zzz(Lcom/google/android/gms/common/api/Status;)V
    :try_end_91
    .catchall {:try_start_6c .. :try_end_91} :catchall_5f

    goto :goto_77

    :cond_92
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_97
    return-object p1

    :cond_98
    :try_start_98
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xP:Lcom/google/android/gms/internal/zzqy;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzqy;->zzd(Lcom/google/android/gms/internal/zzqc$zza;)Lcom/google/android/gms/internal/zzqc$zza;
    :try_end_9d
    .catchall {:try_start_98 .. :try_end_9d} :catchall_5f

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_97
.end method

.method public zzd(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->vP:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqp;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->zzd(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqp;->zzart()Z

    :cond_11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqp;->isResuming()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xO:Lcom/google/android/gms/common/internal/zzm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zzm;->zzn(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xO:Lcom/google/android/gms/common/internal/zzm;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzm;->zzaut()V

    :cond_21
    return-void
.end method

.method public zzn(Landroid/os/Bundle;)V
    .registers 3

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xQ:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xQ:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqc$zza;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzqp;->zzd(Lcom/google/android/gms/internal/zzqc$zza;)Lcom/google/android/gms/internal/zzqc$zza;

    goto :goto_0

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xO:Lcom/google/android/gms/common/internal/zzm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zzm;->zzp(Landroid/os/Bundle;)V

    return-void
.end method

.method public zzs(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzrd;
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(T",
            "L;",
            ")",
            "Lcom/google/android/gms/internal/zzrd",
            "<T",
            "L;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->xY:Lcom/google/android/gms/internal/zzre;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqp;->zzajn:Landroid/os/Looper;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzre;->zzb(Ljava/lang/Object;Landroid/os/Looper;)Lcom/google/android/gms/internal/zzrd;
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_13

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqp;->xf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_13
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqp;->xf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
