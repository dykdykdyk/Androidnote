.class public Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fitness/request/DataDeleteRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private GX:J

.field private OX:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;"
        }
    .end annotation
.end field

.field private SS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;"
        }
    .end annotation
.end field

.field private ST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/Session;",
            ">;"
        }
    .end annotation
.end field

.field private SU:Z

.field private SV:Z

.field private bZ:J


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->SS:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->OX:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->ST:Ljava/util/List;

    iput-boolean v1, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->SU:Z

    iput-boolean v1, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->SV:Z

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->bZ:J

    return-wide v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->GX:J

    return-wide v0
.end method

.method private zzbgc()V
    .registers 11

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->ST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->ST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/Session;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/data/Session;->getStartTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    iget-wide v8, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->bZ:J

    cmp-long v1, v6, v8

    if-ltz v1, :cond_53

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/data/Session;->getEndTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    iget-wide v8, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->GX:J

    cmp-long v1, v6, v8

    if-gtz v1, :cond_53

    move v1, v2

    :goto_36
    const-string/jumbo v5, "Session %s is outside the time interval [%d, %d]"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v3

    iget-wide v8, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->bZ:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v2

    const/4 v0, 0x2

    iget-wide v8, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->GX:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-static {v1, v5, v6}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_11

    :cond_53
    move v1, v3

    goto :goto_36
.end method

.method static synthetic zzc(Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->SS:Ljava/util/List;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->OX:Ljava/util/List;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->ST:Ljava/util/List;

    return-object v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->SU:Z

    return v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->SV:Z

    return v0
.end method


# virtual methods
.method public addDataSource(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->SU:Z

    if-nez v0, :cond_23

    move v0, v1

    :goto_7
    const-string/jumbo v3, "All data is already marked for deletion.  addDataSource() cannot be combined with deleteAllData()"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    if-eqz p1, :cond_25

    :goto_f
    const-string/jumbo v0, "Must specify a valid data source"

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->SS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->SS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_22
    return-object p0

    :cond_23
    move v0, v2

    goto :goto_7

    :cond_25
    move v1, v2

    goto :goto_f
.end method

.method public addDataType(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->SU:Z

    if-nez v0, :cond_23

    move v0, v1

    :goto_7
    const-string/jumbo v3, "All data is already marked for deletion.  addDataType() cannot be combined with deleteAllData()"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    if-eqz p1, :cond_25

    :goto_f
    const-string/jumbo v0, "Must specify a valid data type"

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->OX:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->OX:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_22
    return-object p0

    :cond_23
    move v0, v2

    goto :goto_7

    :cond_25
    move v1, v2

    goto :goto_f
.end method

.method public addSession(Lcom/google/android/gms/fitness/data/Session;)Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;
    .registers 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->SV:Z

    if-nez v0, :cond_2e

    move v0, v1

    :goto_7
    const-string/jumbo v3, "All sessions already marked for deletion.  addSession() cannot be combined with deleteAllSessions()"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    if-eqz p1, :cond_30

    move v0, v1

    :goto_10
    const-string/jumbo v3, "Must specify a valid session"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/fitness/data/Session;->getEndTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_32

    :goto_22
    const-string/jumbo v0, "Cannot delete an ongoing session. Please stop the session prior to deleting it"

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->ST:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_2e
    move v0, v2

    goto :goto_7

    :cond_30
    move v0, v2

    goto :goto_10

    :cond_32
    move v1, v2

    goto :goto_22
.end method

.method public build()Lcom/google/android/gms/fitness/request/DataDeleteRequest;
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->bZ:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_50

    iget-wide v4, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->GX:J

    iget-wide v6, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->bZ:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_50

    move v0, v1

    :goto_13
    const-string/jumbo v3, "Must specify a valid time interval"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->SU:Z

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->SS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->OX:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_52

    :cond_2d
    move v0, v1

    :goto_2e
    iget-boolean v3, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->SV:Z

    if-nez v3, :cond_3a

    iget-object v3, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->ST:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_54

    :cond_3a
    move v3, v1

    :goto_3b
    if-nez v0, :cond_3f

    if-eqz v3, :cond_40

    :cond_3f
    move v2, v1

    :cond_40
    const-string/jumbo v0, "No data or session marked for deletion"

    invoke-static {v2, v0}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->zzbgc()V

    new-instance v0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/fitness/request/DataDeleteRequest;-><init>(Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;Lcom/google/android/gms/fitness/request/DataDeleteRequest$1;)V

    return-object v0

    :cond_50
    move v0, v2

    goto :goto_13

    :cond_52
    move v0, v2

    goto :goto_2e

    :cond_54
    move v3, v2

    goto :goto_3b
.end method

.method public deleteAllData()Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->OX:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string/jumbo v1, "Specific data type already added for deletion. deleteAllData() will delete all data types and cannot be combined with addDataType()"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->SS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string/jumbo v1, "Specific data source already added for deletion. deleteAllData() will delete all data sources and cannot be combined with addDataSource()"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->SU:Z

    return-object p0
.end method

.method public deleteAllSessions()Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->ST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string/jumbo v1, "Specific session already added for deletion. deleteAllData() will delete all sessions and cannot be combined with addSession()"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->SV:Z

    return-object p0
.end method

.method public setTimeInterval(JJLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;
    .registers 13

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-lez v0, :cond_37

    move v0, v1

    :goto_9
    const-string/jumbo v3, "Invalid start time :%d"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/String;[Ljava/lang/Object;)V

    cmp-long v0, p3, p1

    if-lez v0, :cond_39

    move v0, v1

    :goto_1c
    const-string/jumbo v3, "Invalid end time :%d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p5, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->bZ:J

    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->GX:J

    return-object p0

    :cond_37
    move v0, v2

    goto :goto_9

    :cond_39
    move v0, v2

    goto :goto_1c
.end method
