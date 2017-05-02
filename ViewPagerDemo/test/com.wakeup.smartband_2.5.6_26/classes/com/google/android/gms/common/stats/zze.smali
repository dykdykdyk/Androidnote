.class public Lcom/google/android/gms/common/stats/zze;
.super Ljava/lang/Object;


# instance fields
.field private final Ev:J

.field private final Ew:I

.field private final Ex:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    const/16 v2, 0xa

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/google/android/gms/common/stats/zze;->Ev:J

    iput v2, p0, Lcom/google/android/gms/common/stats/zze;->Ew:I

    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0, v2}, Landroid/support/v4/util/SimpleArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/stats/zze;->Ex:Landroid/support/v4/util/SimpleArrayMap;

    return-void
.end method

.method public constructor <init>(IJ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/google/android/gms/common/stats/zze;->Ev:J

    iput p1, p0, Lcom/google/android/gms/common/stats/zze;->Ew:I

    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/stats/zze;->Ex:Landroid/support/v4/util/SimpleArrayMap;

    return-void
.end method

.method private zze(JJ)V
    .registers 10

    iget-object v0, p0, Lcom/google/android/gms/common/stats/zze;->Ex:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_9
    if-ltz v1, :cond_26

    iget-object v0, p0, Lcom/google/android/gms/common/stats/zze;->Ex:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, p3, v2

    cmp-long v0, v2, p1

    if-lez v0, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/common/stats/zze;->Ex:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_22
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_9

    :cond_26
    return-void
.end method


# virtual methods
.method public zzif(Ljava/lang/String;)Ljava/lang/Long;
    .registers 10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v0, p0, Lcom/google/android/gms/common/stats/zze;->Ev:J

    monitor-enter p0

    :goto_7
    :try_start_7
    iget-object v4, p0, Lcom/google/android/gms/common/stats/zze;->Ex:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v4}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v4

    iget v5, p0, Lcom/google/android/gms/common/stats/zze;->Ew:I

    if-lt v4, v5, :cond_44

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/common/stats/zze;->zze(JJ)V

    const-wide/16 v4, 0x2

    div-long/2addr v0, v4

    const-string/jumbo v4, "ConnectionTracker"

    iget v5, p0, Lcom/google/android/gms/common/stats/zze;->Ew:I

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x5e

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v7, "The max capacity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is not enough. Current durationThreshold is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :catchall_41
    move-exception v0

    monitor-exit p0
    :try_end_43
    .catchall {:try_start_7 .. :try_end_43} :catchall_41

    throw v0

    :cond_44
    :try_start_44
    iget-object v0, p0, Lcom/google/android/gms/common/stats/zze;->Ex:Landroid/support/v4/util/SimpleArrayMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    monitor-exit p0
    :try_end_51
    .catchall {:try_start_44 .. :try_end_51} :catchall_41

    return-object v0
.end method

.method public zzig(Ljava/lang/String;)Z
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/stats/zze;->Ex:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_a
    monitor-exit p0

    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_a

    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw v0
.end method
