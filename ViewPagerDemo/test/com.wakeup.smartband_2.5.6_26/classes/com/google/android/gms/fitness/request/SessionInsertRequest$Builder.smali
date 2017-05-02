.class public Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fitness/request/SessionInsertRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private TO:Lcom/google/android/gms/fitness/data/Session;

.field private TP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSet;",
            ">;"
        }
    .end annotation
.end field

.field private TQ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataPoint;",
            ">;"
        }
    .end annotation
.end field

.field private TS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->TP:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->TQ:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->TS:Ljava/util/List;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;)Lcom/google/android/gms/fitness/data/Session;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->TO:Lcom/google/android/gms/fitness/data/Session;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->TP:Ljava/util/List;

    return-object v0
.end method

.method private zzbgu()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->TP:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSet;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSet;->getDataPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zzg(Lcom/google/android/gms/fitness/data/DataPoint;)V

    goto :goto_1a

    :cond_2a
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->TQ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zzg(Lcom/google/android/gms/fitness/data/DataPoint;)V

    goto :goto_30

    :cond_40
    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->TQ:Ljava/util/List;

    return-object v0
.end method

.method private zzg(Lcom/google/android/gms/fitness/data/DataPoint;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zzi(Lcom/google/android/gms/fitness/data/DataPoint;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zzh(Lcom/google/android/gms/fitness/data/DataPoint;)V

    return-void
.end method

.method private zzh(Lcom/google/android/gms/fitness/data/DataPoint;)V
    .registers 15

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->TO:Lcom/google/android/gms/fitness/data/Session;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/data/Session;->getStartTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->TO:Lcom/google/android/gms/fitness/data/Session;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/data/Session;->getEndTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v8

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/fitness/data/DataPoint;->getStartTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/fitness/data/DataPoint;->getEndTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_8e

    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-eqz v0, :cond_8e

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    cmp-long v0, v4, v8

    if-lez v0, :cond_34

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v4, v5, v0, v1}, Lcom/google/android/gms/internal/zzsx;->zza(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    :cond_34
    cmp-long v0, v2, v6

    if-ltz v0, :cond_8f

    cmp-long v0, v4, v8

    if-gtz v0, :cond_8f

    const/4 v0, 0x1

    :goto_3d
    const-string/jumbo v10, "Data point %s has start and end times outside session interval [%d, %d]"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p1, v11, v12

    const/4 v12, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v11, v12

    const/4 v6, 0x2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v11, v6

    invoke-static {v0, v10, v11}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/fitness/data/DataPoint;->getEndTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-eqz v0, :cond_8e

    const-string/jumbo v0, "Fitness"

    const-string/jumbo v6, "Data point end time [%d] is truncated to [%d] to match the precision [%s] of the session start and end time"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    sget-object v9, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v9}, Lcom/google/android/gms/fitness/data/DataPoint;->getEndTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    aput-object v1, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/fitness/data/DataPoint;->setTimeInterval(JJLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/data/DataPoint;

    :cond_8e
    return-void

    :cond_8f
    const/4 v0, 0x0

    goto :goto_3d
.end method

.method private zzi(Lcom/google/android/gms/fitness/data/DataPoint;)V
    .registers 16

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->TO:Lcom/google/android/gms/fitness/data/Session;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/fitness/data/Session;->getStartTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->TO:Lcom/google/android/gms/fitness/data/Session;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/fitness/data/Session;->getEndTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v8

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/fitness/data/DataPoint;->getTimestamp(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    const-wide/16 v10, 0x0

    cmp-long v0, v4, v10

    if-eqz v0, :cond_81

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    cmp-long v0, v4, v6

    if-ltz v0, :cond_2a

    cmp-long v0, v4, v8

    if-lez v0, :cond_30

    :cond_2a
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v4, v5, v0, v3}, Lcom/google/android/gms/internal/zzsx;->zza(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    :cond_30
    cmp-long v0, v4, v6

    if-ltz v0, :cond_82

    cmp-long v0, v4, v8

    if-gtz v0, :cond_82

    move v0, v1

    :goto_39
    const-string/jumbo v10, "Data point %s has time stamp outside session interval [%d, %d]"

    new-array v11, v13, [Ljava/lang/Object;

    aput-object p1, v11, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v11, v1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v11, v12

    invoke-static {v0, v10, v11}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/fitness/data/DataPoint;->getTimestamp(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-eqz v0, :cond_81

    const-string/jumbo v0, "Fitness"

    const-string/jumbo v6, "Data point timestamp [%d] is truncated to [%d] to match the precision [%s] of the session start and end time"

    new-array v7, v13, [Ljava/lang/Object;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v8}, Lcom/google/android/gms/fitness/data/DataPoint;->getTimestamp(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v1

    aput-object v3, v7, v12

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v4, v5, v0}, Lcom/google/android/gms/fitness/data/DataPoint;->setTimestamp(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/data/DataPoint;

    :cond_81
    return-void

    :cond_82
    move v0, v2

    goto :goto_39
.end method


# virtual methods
.method public addAggregateDataPoint(Lcom/google/android/gms/fitness/data/DataPoint;)Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_30

    move v0, v1

    :goto_5
    const-string/jumbo v3, "Must specify a valid aggregate data point."

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->getDataSource()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->TS:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    move v0, v1

    :goto_18
    const-string/jumbo v4, "Data set/Aggregate data point for this data source %s is already added."

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-static {v0, v4, v1}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/google/android/gms/fitness/data/DataSet;->zze(Lcom/google/android/gms/fitness/data/DataPoint;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->TS:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->TQ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_30
    move v0, v2

    goto :goto_5

    :cond_32
    move v0, v2

    goto :goto_18
.end method

.method public addDataSet(Lcom/google/android/gms/fitness/data/DataSet;)Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_3d

    move v0, v1

    :goto_5
    const-string/jumbo v3, "Must specify a valid data set."

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSet;->getDataSource()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->TS:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    move v0, v1

    :goto_18
    const-string/jumbo v4, "Data set for this data source %s is already added."

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v3, v5, v2

    invoke-static {v0, v4, v5}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSet;->getDataPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_41

    :goto_2c
    const-string/jumbo v0, "No data points specified in the input data set."

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->TS:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->TP:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_3d
    move v0, v2

    goto :goto_5

    :cond_3f
    move v0, v2

    goto :goto_18

    :cond_41
    move v1, v2

    goto :goto_2c
.end method

.method public build()Lcom/google/android/gms/fitness/request/SessionInsertRequest;
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->TO:Lcom/google/android/gms/fitness/data/Session;

    if-eqz v0, :cond_2b

    move v0, v1

    :goto_7
    const-string/jumbo v3, "Must specify a valid session."

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->TO:Lcom/google/android/gms/fitness/data/Session;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/fitness/data/Session;->getEndTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_2d

    :goto_1b
    const-string/jumbo v0, "Must specify a valid end time, cannot insert a continuing session."

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zzbgu()V

    new-instance v0, Lcom/google/android/gms/fitness/request/SessionInsertRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/fitness/request/SessionInsertRequest;-><init>(Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;Lcom/google/android/gms/fitness/request/SessionInsertRequest$1;)V

    return-object v0

    :cond_2b
    move v0, v2

    goto :goto_7

    :cond_2d
    move v1, v2

    goto :goto_1b
.end method

.method public setSession(Lcom/google/android/gms/fitness/data/Session;)Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->TO:Lcom/google/android/gms/fitness/data/Session;

    return-object p0
.end method
