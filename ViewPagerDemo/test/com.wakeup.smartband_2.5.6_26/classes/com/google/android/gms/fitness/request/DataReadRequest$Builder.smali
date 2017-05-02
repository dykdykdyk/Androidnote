.class public Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fitness/request/DataReadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private GT:I

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

.field private Pa:I

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

.field private SX:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;"
        }
    .end annotation
.end field

.field private SY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;"
        }
    .end annotation
.end field

.field private SZ:J

.field private Ta:Lcom/google/android/gms/fitness/data/DataSource;

.field private Tb:Z

.field private Tc:Z

.field private final Te:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/Device;",
            ">;"
        }
    .end annotation
.end field

.field private final Tf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private bZ:J


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->OX:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->SS:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->SX:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->SY:Ljava/util/List;

    iput v2, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->Pa:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->SZ:J

    iput v2, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->GT:I

    iput-boolean v2, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->Tb:Z

    iput-boolean v2, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->Tc:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->Te:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->Tf:Ljava/util/List;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->OX:Ljava/util/List;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->SS:Ljava/util/List;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->bZ:J

    return-wide v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->GX:J

    return-wide v0
.end method

.method static synthetic zze(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->SX:Ljava/util/List;

    return-object v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->SY:Ljava/util/List;

    return-object v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->Pa:I

    return v0
.end method

.method static synthetic zzh(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->SZ:J

    return-wide v0
.end method

.method static synthetic zzi(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;)Lcom/google/android/gms/fitness/data/DataSource;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->Ta:Lcom/google/android/gms/fitness/data/DataSource;

    return-object v0
.end method

.method static synthetic zzj(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->GT:I

    return v0
.end method

.method static synthetic zzk(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;)Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic zzl(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->Tc:Z

    return v0
.end method

.method static synthetic zzm(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->Te:Ljava/util/List;

    return-object v0
.end method

.method static synthetic zzn(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->Tf:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public aggregate(Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "Attempting to add a null data source"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->SS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e

    move v0, v1

    :goto_11
    const-string/jumbo v3, "Cannot add the same data source for aggregated and detailed"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSource;->getDataType()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_INPUT_TYPES:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    const-string/jumbo v4, "Unsupported input data type specified for aggregation: %s"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/DataType;->getAggregatesForInput(Lcom/google/android/gms/fitness/data/DataType;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    const-string/jumbo v4, "Invalid output aggregate data type specified: %s -> %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v2

    aput-object p2, v5, v1

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->SY:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->SY:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4d
    return-object p0

    :cond_4e
    move v0, v2

    goto :goto_11
.end method

.method public aggregate(Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "Attempting to use a null data type"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->OX:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    move v0, v1

    :goto_11
    const-string/jumbo v3, "Cannot add the same data type as aggregated and detailed"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_INPUT_TYPES:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v3, "Unsupported input data type specified for aggregation: %s"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/google/android/gms/fitness/data/DataType;->getAggregatesForInput(Lcom/google/android/gms/fitness/data/DataType;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v3, "Invalid output aggregate data type specified: %s -> %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    aput-object p2, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->SX:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->SX:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_49
    return-object p0

    :cond_4a
    move v0, v2

    goto :goto_11
.end method

.method public bucketByActivitySegment(ILjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->Pa:I

    if-nez v0, :cond_33

    move v0, v1

    :goto_7
    const-string/jumbo v3, "Bucketing strategy already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget v5, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->Pa:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-lez p1, :cond_35

    move v0, v1

    :goto_1a
    const-string/jumbo v3, "Must specify a valid minimum duration for an activity segment: %d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->Pa:I

    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->SZ:J

    return-object p0

    :cond_33
    move v0, v2

    goto :goto_7

    :cond_35
    move v0, v2

    goto :goto_1a
.end method

.method public bucketByActivitySegment(ILjava/util/concurrent/TimeUnit;Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;
    .registers 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->Pa:I

    if-nez v0, :cond_52

    move v0, v1

    :goto_7
    const-string/jumbo v3, "Bucketing strategy already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget v5, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->Pa:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-lez p1, :cond_54

    move v0, v1

    :goto_1a
    const-string/jumbo v3, "Must specify a valid minimum duration for an activity segment: %d"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-eqz p3, :cond_56

    move v0, v1

    :goto_2b
    const-string/jumbo v3, "Invalid activity data source specified"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    invoke-virtual {p3}, Lcom/google/android/gms/fitness/data/DataSource;->getDataType()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/fitness/data/DataType;->TYPE_ACTIVITY_SEGMENT:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/fitness/data/DataType;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v3, "Invalid activity data source specified: %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p3, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->Ta:Lcom/google/android/gms/fitness/data/DataSource;

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->Pa:I

    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->SZ:J

    return-object p0

    :cond_52
    move v0, v2

    goto :goto_7

    :cond_54
    move v0, v2

    goto :goto_1a

    :cond_56
    move v0, v2

    goto :goto_2b
.end method

.method public bucketByActivityType(ILjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->Pa:I

    if-nez v0, :cond_33

    move v0, v1

    :goto_7
    const-string/jumbo v3, "Bucketing strategy already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget v5, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->Pa:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-lez p1, :cond_35

    move v0, v1

    :goto_1a
    const-string/jumbo v3, "Must specify a valid minimum duration for an activity segment: %d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->Pa:I

    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->SZ:J

    return-object p0

    :cond_33
    move v0, v2

    goto :goto_7

    :cond_35
    move v0, v2

    goto :goto_1a
.end method

.method public bucketByActivityType(ILjava/util/concurrent/TimeUnit;Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;
    .registers 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->Pa:I

    if-nez v0, :cond_52

    move v0, v1

    :goto_7
    const-string/jumbo v3, "Bucketing strategy already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget v5, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->Pa:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-lez p1, :cond_54

    move v0, v1

    :goto_1a
    const-string/jumbo v3, "Must specify a valid minimum duration for an activity segment: %d"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-eqz p3, :cond_56

    move v0, v1

    :goto_2b
    const-string/jumbo v3, "Invalid activity data source specified"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    invoke-virtual {p3}, Lcom/google/android/gms/fitness/data/DataSource;->getDataType()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/fitness/data/DataType;->TYPE_ACTIVITY_SEGMENT:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/fitness/data/DataType;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v3, "Invalid activity data source specified: %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p3, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->Ta:Lcom/google/android/gms/fitness/data/DataSource;

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->Pa:I

    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->SZ:J

    return-object p0

    :cond_52
    move v0, v2

    goto :goto_7

    :cond_54
    move v0, v2

    goto :goto_1a

    :cond_56
    move v0, v2

    goto :goto_2b
.end method

.method public bucketBySession(ILjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->Pa:I

    if-nez v0, :cond_33

    move v0, v1

    :goto_7
    const-string/jumbo v3, "Bucketing strategy already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget v5, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->Pa:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-lez p1, :cond_35

    move v0, v1

    :goto_1a
    const-string/jumbo v3, "Must specify a valid minimum duration for an activity segment: %d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->Pa:I

    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->SZ:J

    return-object p0

    :cond_33
    move v0, v2

    goto :goto_7

    :cond_35
    move v0, v2

    goto :goto_1a
.end method

.method public bucketByTime(ILjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;
    .registers 9

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->Pa:I

    if-nez v0, :cond_32

    move v0, v1

    :goto_7
    const-string/jumbo v3, "Bucketing strategy already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget v5, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->Pa:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-lez p1, :cond_34

    move v0, v1

    :goto_1a
    const-string/jumbo v3, "Must specify a valid minimum duration for an activity segment: %d"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput v1, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->Pa:I

    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->SZ:J

    return-object p0

    :cond_32
    move v0, v2

    goto :goto_7

    :cond_34
    move v0, v2

    goto :goto_1a
.end method

.method public build()Lcom/google/android/gms/fitness/request/DataReadRequest;
    .registers 11

    const-wide/16 v8, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->SS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->OX:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->SY:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->SX:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8b

    :cond_24
    move v0, v2

    :goto_25
    const-string/jumbo v3, "Must add at least one data source (aggregated or detailed)"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    iget-wide v4, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->bZ:J

    cmp-long v0, v4, v8

    if-lez v0, :cond_8d

    move v0, v2

    :goto_32
    const-string/jumbo v3, "Invalid start time: %s"

    new-array v4, v2, [Ljava/lang/Object;

    iget-wide v6, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->bZ:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-wide v4, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->GX:J

    cmp-long v0, v4, v8

    if-lez v0, :cond_8f

    iget-wide v4, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->GX:J

    iget-wide v6, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->bZ:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_8f

    move v0, v2

    :goto_51
    const-string/jumbo v3, "Invalid end time: %s"

    new-array v4, v2, [Ljava/lang/Object;

    iget-wide v6, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->GX:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->SY:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_91

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->SX:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_91

    move v0, v2

    :goto_72
    if-eqz v0, :cond_78

    iget v3, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->Pa:I

    if-eqz v3, :cond_7e

    :cond_78
    if-nez v0, :cond_93

    iget v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->Pa:I

    if-eqz v0, :cond_93

    :cond_7e
    :goto_7e
    const-string/jumbo v0, "Must specify a valid bucketing strategy while requesting aggregation"

    invoke-static {v2, v0}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/fitness/request/DataReadRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/fitness/request/DataReadRequest;-><init>(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;Lcom/google/android/gms/fitness/request/DataReadRequest$1;)V

    return-object v0

    :cond_8b
    move v0, v1

    goto :goto_25

    :cond_8d
    move v0, v1

    goto :goto_32

    :cond_8f
    move v0, v1

    goto :goto_51

    :cond_91
    move v0, v1

    goto :goto_72

    :cond_93
    move v2, v1

    goto :goto_7e
.end method

.method public enableServerQueries()Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->Tc:Z

    return-object p0
.end method

.method public read(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;
    .registers 4

    const-string/jumbo v0, "Attempting to add a null data source"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->SY:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    const/4 v0, 0x1

    :goto_f
    const-string/jumbo v1, "Cannot add the same data source as aggregated and detailed"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->SS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->SS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_22
    return-object p0

    :cond_23
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public read(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;
    .registers 4

    const-string/jumbo v0, "Attempting to use a null data type"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->SX:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    const/4 v0, 0x1

    :goto_f
    const-string/jumbo v1, "Cannot add the same data type as aggregated and detailed"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->OX:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->OX:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_22
    return-object p0

    :cond_23
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public setLimit(I)Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez p1, :cond_16

    move v0, v1

    :goto_5
    const-string/jumbo v3, "Invalid limit %d is specified"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->GT:I

    return-object p0

    :cond_16
    move v0, v2

    goto :goto_5
.end method

.method public setTimeRange(JJLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;
    .registers 9

    invoke-virtual {p5, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->bZ:J

    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->GX:J

    return-object p0
.end method
