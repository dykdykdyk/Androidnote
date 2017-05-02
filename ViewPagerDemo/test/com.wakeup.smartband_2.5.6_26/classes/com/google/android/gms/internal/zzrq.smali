.class public Lcom/google/android/gms/internal/zzrq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzrq$zza;,
        Lcom/google/android/gms/internal/zzrq$zzc;,
        Lcom/google/android/gms/internal/zzrq$zzb;
    }
.end annotation


# static fields
.field private static final zt:[Lcom/google/android/gms/internal/zzqe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/android/gms/internal/zzqe",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final vC:Lcom/google/android/gms/common/api/Api$zze;

.field private final xW:Ljava/util/Map;
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

.field final zu:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/zzqe",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final zv:Lcom/google/android/gms/internal/zzrq$zzb;

.field private zw:Lcom/google/android/gms/internal/zzrq$zzc;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/zzqe;

    sput-object v0, Lcom/google/android/gms/internal/zzrq;->zt:[Lcom/google/android/gms/internal/zzqe;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/Api$zze;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrq;->zu:Ljava/util/Set;

    new-instance v0, Lcom/google/android/gms/internal/zzrq$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzrq$1;-><init>(Lcom/google/android/gms/internal/zzrq;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrq;->zv:Lcom/google/android/gms/internal/zzrq$zzb;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzrq;->zw:Lcom/google/android/gms/internal/zzrq$zzc;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzrq;->xW:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrq;->vC:Lcom/google/android/gms/common/api/Api$zze;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<*>;",
            "Lcom/google/android/gms/common/api/Api$zze;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrq;->zu:Ljava/util/Set;

    new-instance v0, Lcom/google/android/gms/internal/zzrq$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzrq$1;-><init>(Lcom/google/android/gms/internal/zzrq;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrq;->zv:Lcom/google/android/gms/internal/zzrq$zzb;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzrq;->zw:Lcom/google/android/gms/internal/zzrq$zzc;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrq;->xW:Ljava/util/Map;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzrq;->vC:Lcom/google/android/gms/common/api/Api$zze;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzrq;)Lcom/google/android/gms/common/api/zzf;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method private static zza(Lcom/google/android/gms/internal/zzqe;Lcom/google/android/gms/common/api/zzf;Landroid/os/IBinder;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzqe",
            "<*>;",
            "Lcom/google/android/gms/common/api/zzf;",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqe;->isReady()Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Lcom/google/android/gms/internal/zzrq$zza;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/gms/internal/zzrq$zza;-><init>(Lcom/google/android/gms/internal/zzqe;Lcom/google/android/gms/common/api/zzf;Landroid/os/IBinder;Lcom/google/android/gms/internal/zzrq$1;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzqe;->zza(Lcom/google/android/gms/internal/zzrq$zzb;)V

    :goto_f
    return-void

    :cond_10
    if-eqz p2, :cond_35

    invoke-interface {p2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_35

    new-instance v0, Lcom/google/android/gms/internal/zzrq$zza;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/gms/internal/zzrq$zza;-><init>(Lcom/google/android/gms/internal/zzqe;Lcom/google/android/gms/common/api/zzf;Landroid/os/IBinder;Lcom/google/android/gms/internal/zzrq$1;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzqe;->zza(Lcom/google/android/gms/internal/zzrq$zzb;)V

    const/4 v1, 0x0

    :try_start_21
    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_24} :catch_25

    goto :goto_f

    :catch_25
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqe;->cancel()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqe;->zzaqf()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/zzf;->remove(I)V

    goto :goto_f

    :cond_35
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzqe;->zza(Lcom/google/android/gms/internal/zzrq$zzb;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqe;->cancel()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqe;->zzaqf()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/zzf;->remove(I)V

    goto :goto_f
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzrq;)Lcom/google/android/gms/internal/zzrq$zzc;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrq;->zw:Lcom/google/android/gms/internal/zzrq$zzc;

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    const-string/jumbo v0, " mUnconsumedApiCalls.size()="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrq;->zu:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    return-void
.end method

.method public release()V
    .registers 9

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrq;->zu:Ljava/util/Set;

    sget-object v1, Lcom/google/android/gms/internal/zzrq;->zt:[Lcom/google/android/gms/internal/zzqe;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/zzqe;

    array-length v5, v0

    const/4 v1, 0x0

    move v4, v1

    :goto_e
    if-ge v4, v5, :cond_68

    aget-object v2, v0, v4

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzqe;->zza(Lcom/google/android/gms/internal/zzrq$zzb;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzqe;->zzaqf()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_2a

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzqe;->zzaqq()Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrq;->zu:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_26
    :goto_26
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_e

    :cond_2a
    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzqe;->zzaqs()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrq;->vC:Lcom/google/android/gms/common/api/Api$zze;

    if-eqz v1, :cond_40

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrq;->vC:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/Api$zze;->zzaps()Landroid/os/IBinder;

    move-result-object v1

    :goto_37
    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/zzrq;->zza(Lcom/google/android/gms/internal/zzqe;Lcom/google/android/gms/common/api/zzf;Landroid/os/IBinder;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrq;->zu:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_40
    iget-object v1, p0, Lcom/google/android/gms/internal/zzrq;->xW:Ljava/util/Map;

    if-eqz v1, :cond_58

    iget-object v6, p0, Lcom/google/android/gms/internal/zzrq;->xW:Ljava/util/Map;

    move-object v1, v2

    check-cast v1, Lcom/google/android/gms/internal/zzqc$zza;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzqc$zza;->zzapp()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/Api$zze;->zzaps()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_37

    :cond_58
    const-string/jumbo v1, "UnconsumedApiCalls"

    const-string/jumbo v6, "Could not get service broker binder"

    new-instance v7, Ljava/lang/Exception;

    invoke-direct {v7}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1, v6, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v3

    goto :goto_37

    :cond_68
    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzrq$zzc;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrq;->zu:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzrq$zzc;->zzask()V

    :cond_b
    iput-object p1, p0, Lcom/google/android/gms/internal/zzrq;->zw:Lcom/google/android/gms/internal/zzrq$zzc;

    return-void
.end method

.method public zzasw()V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrq;->zu:Ljava/util/Set;

    sget-object v1, Lcom/google/android/gms/internal/zzrq;->zt:[Lcom/google/android/gms/internal/zzqe;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/zzqe;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v2, :cond_20

    aget-object v3, v0, v1

    new-instance v4, Lcom/google/android/gms/common/api/Status;

    const/16 v5, 0x8

    const-string/jumbo v6, "The connection to Google Play services was lost"

    invoke-direct {v4, v5, v6}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzqe;->zzaa(Lcom/google/android/gms/common/api/Status;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_20
    return-void
.end method

.method public zzasx()Z
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrq;->zu:Ljava/util/Set;

    sget-object v2, Lcom/google/android/gms/internal/zzrq;->zt:[Lcom/google/android/gms/internal/zzqe;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/zzqe;

    array-length v3, v0

    move v2, v1

    :goto_d
    if-ge v2, v3, :cond_1c

    aget-object v4, v0, v2

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzqe;->isReady()Z

    move-result v4

    if-nez v4, :cond_19

    const/4 v0, 0x1

    :goto_18
    return v0

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_1c
    move v0, v1

    goto :goto_18
.end method

.method zzb(Lcom/google/android/gms/internal/zzqe;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzqe",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrq;->zu:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrq;->zv:Lcom/google/android/gms/internal/zzrq$zzb;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzqe;->zza(Lcom/google/android/gms/internal/zzrq$zzb;)V

    return-void
.end method
