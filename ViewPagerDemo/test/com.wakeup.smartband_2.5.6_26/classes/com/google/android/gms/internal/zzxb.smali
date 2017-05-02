.class public Lcom/google/android/gms/internal/zzxb;
.super Ljava/lang/Object;


# static fields
.field private static DEBUG:Z

.field private static TAG:Ljava/lang/String;

.field private static aAo:Ljava/lang/String;


# instance fields
.field private final EA:Ljava/lang/String;

.field private final Ey:Ljava/lang/String;

.field private final aAp:Landroid/os/PowerManager$WakeLock;

.field private final aAq:I

.field private final aAr:Ljava/lang/String;

.field private aAs:Z

.field private aAt:I

.field private aAu:I

.field private agC:Landroid/os/WorkSource;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "WakeLock"

    sput-object v0, Lcom/google/android/gms/internal/zzxb;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "*gcore*:"

    sput-object v0, Lcom/google/android/gms/internal/zzxb;->aAo:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/internal/zzxb;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .registers 10

    const/4 v4, 0x0

    if-nez p1, :cond_c

    move-object v5, v4

    :goto_4
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzxb;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    goto :goto_4
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnwrappedWakeLock"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzxb;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnwrappedWakeLock"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzxb;->aAs:Z

    const-string/jumbo v0, "Wake lock name can NOT be empty"

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/zzac;->zzh(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/zzxb;->aAq:I

    iput-object p4, p0, Lcom/google/android/gms/internal/zzxb;->aAr:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzxb;->EA:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzxb;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "com.google.android.gms"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6e

    sget-object v0, Lcom/google/android/gms/internal/zzxb;->aAo:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_68

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_39
    iput-object v0, p0, Lcom/google/android/gms/internal/zzxb;->Ey:Ljava/lang/String;

    :goto_3b
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0, p2, p3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzxb;->aAp:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxb;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzz;->zzcp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-static {p5}, Lcom/google/android/gms/common/util/zzw;->zzij(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p5

    :cond_5c
    invoke-static {p1, p5}, Lcom/google/android/gms/common/util/zzz;->zzy(Landroid/content/Context;Ljava/lang/String;)Landroid/os/WorkSource;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzxb;->agC:Landroid/os/WorkSource;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxb;->agC:Landroid/os/WorkSource;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzxb;->zzc(Landroid/os/WorkSource;)V

    :cond_67
    return-void

    :cond_68
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_39

    :cond_6e
    iput-object p3, p0, Lcom/google/android/gms/internal/zzxb;->Ey:Ljava/lang/String;

    goto :goto_3b
.end method

.method private zzd(Landroid/os/WorkSource;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzxb;->aAp:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    sget-object v1, Lcom/google/android/gms/internal/zzxb;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method private zzm(Ljava/lang/String;J)V
    .registers 16

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzxb;->zzop(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzxb;->zzp(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    monitor-enter p0

    :try_start_9
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzxb;->aAs:Z

    if-eqz v1, :cond_17

    iget v1, p0, Lcom/google/android/gms/internal/zzxb;->aAt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/zzxb;->aAt:I

    if-eqz v1, :cond_1f

    if-nez v0, :cond_1f

    :cond_17
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzxb;->aAs:Z

    if-nez v0, :cond_42

    iget v0, p0, Lcom/google/android/gms/internal/zzxb;->aAu:I

    if-nez v0, :cond_42

    :cond_1f
    invoke-static {}, Lcom/google/android/gms/common/stats/zzh;->zzaxf()Lcom/google/android/gms/common/stats/zzh;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzxb;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxb;->aAp:Landroid/os/PowerManager$WakeLock;

    invoke-static {v0, v6}, Lcom/google/android/gms/common/stats/zzf;->zza(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x7

    iget-object v5, p0, Lcom/google/android/gms/internal/zzxb;->Ey:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/internal/zzxb;->EA:Ljava/lang/String;

    iget v8, p0, Lcom/google/android/gms/internal/zzxb;->aAq:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxb;->agC:Landroid/os/WorkSource;

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzz;->zzb(Landroid/os/WorkSource;)Ljava/util/List;

    move-result-object v9

    move-wide v10, p2

    invoke-virtual/range {v1 .. v11}, Lcom/google/android/gms/common/stats/zzh;->zza(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;J)V

    iget v0, p0, Lcom/google/android/gms/internal/zzxb;->aAu:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzxb;->aAu:I

    :cond_42
    monitor-exit p0

    return-void

    :catchall_44
    move-exception v0

    monitor-exit p0
    :try_end_46
    .catchall {:try_start_9 .. :try_end_46} :catchall_44

    throw v0
.end method

.method private zzoo(Ljava/lang/String;)V
    .registers 11

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzxb;->zzop(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzxb;->zzp(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    monitor-enter p0

    :try_start_9
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzxb;->aAs:Z

    if-eqz v1, :cond_17

    iget v1, p0, Lcom/google/android/gms/internal/zzxb;->aAt:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/zzxb;->aAt:I

    if-eqz v1, :cond_20

    if-nez v0, :cond_20

    :cond_17
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzxb;->aAs:Z

    if-nez v0, :cond_43

    iget v0, p0, Lcom/google/android/gms/internal/zzxb;->aAu:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_43

    :cond_20
    invoke-static {}, Lcom/google/android/gms/common/stats/zzh;->zzaxf()Lcom/google/android/gms/common/stats/zzh;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzxb;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzxb;->aAp:Landroid/os/PowerManager$WakeLock;

    invoke-static {v2, v5}, Lcom/google/android/gms/common/stats/zzf;->zza(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    iget-object v4, p0, Lcom/google/android/gms/internal/zzxb;->Ey:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzxb;->EA:Ljava/lang/String;

    iget v7, p0, Lcom/google/android/gms/internal/zzxb;->aAq:I

    iget-object v8, p0, Lcom/google/android/gms/internal/zzxb;->agC:Landroid/os/WorkSource;

    invoke-static {v8}, Lcom/google/android/gms/common/util/zzz;->zzb(Landroid/os/WorkSource;)Ljava/util/List;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gms/common/stats/zzh;->zza(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    iget v0, p0, Lcom/google/android/gms/internal/zzxb;->aAu:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzxb;->aAu:I

    :cond_43
    monitor-exit p0

    return-void

    :catchall_45
    move-exception v0

    monitor-exit p0
    :try_end_47
    .catchall {:try_start_9 .. :try_end_47} :catchall_45

    throw v0
.end method

.method private zzop(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxb;->aAr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private zzp(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzxb;->aAs:Z

    if-eqz v0, :cond_a

    if-eqz p2, :cond_7

    :goto_6
    return-object p1

    :cond_7
    iget-object p1, p0, Lcom/google/android/gms/internal/zzxb;->aAr:Ljava/lang/String;

    goto :goto_6

    :cond_a
    iget-object p1, p0, Lcom/google/android/gms/internal/zzxb;->aAr:Ljava/lang/String;

    goto :goto_6
.end method


# virtual methods
.method public acquire(J)V
    .registers 8

    invoke-static {}, Lcom/google/android/gms/common/util/zzs;->zzaxn()Z

    move-result v0

    if-nez v0, :cond_22

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzxb;->aAs:Z

    if-eqz v0, :cond_22

    sget-object v1, Lcom/google/android/gms/internal/zzxb;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Do not acquire with timeout on reference counted WakeLocks before ICS. wakelock: "

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxb;->Ey:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2c

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1f
    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/zzxb;->zzm(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxb;->aAp:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p1, p2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    return-void

    :cond_2c
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1f
.end method

.method public isHeld()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxb;->aAp:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    return v0
.end method

.method public release()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzxb;->zzoo(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxb;->aAp:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method public setReferenceCounted(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxb;->aAp:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzxb;->aAs:Z

    return-void
.end method

.method public zzc(Landroid/os/WorkSource;)V
    .registers 3

    if-eqz p1, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxb;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzz;->zzcp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxb;->agC:Landroid/os/WorkSource;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxb;->agC:Landroid/os/WorkSource;

    invoke-virtual {v0, p1}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    :goto_13
    iget-object v0, p0, Lcom/google/android/gms/internal/zzxb;->agC:Landroid/os/WorkSource;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzxb;->zzd(Landroid/os/WorkSource;)V

    :cond_18
    return-void

    :cond_19
    iput-object p1, p0, Lcom/google/android/gms/internal/zzxb;->agC:Landroid/os/WorkSource;

    goto :goto_13
.end method
