.class public Lcom/google/android/gms/fitness/request/SensorRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fitness/request/SensorRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private OM:Lcom/google/android/gms/fitness/data/DataType;

.field private ON:Lcom/google/android/gms/fitness/data/DataSource;

.field private RH:J

.field private RI:I

.field private TG:J

.field private TH:J

.field private TM:J

.field private TN:Z


# direct methods
.method public constructor <init>()V
    .registers 5

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/fitness/request/SensorRequest$Builder;->RH:J

    iput-wide v2, p0, Lcom/google/android/gms/fitness/request/SensorRequest$Builder;->TH:J

    iput-wide v2, p0, Lcom/google/android/gms/fitness/request/SensorRequest$Builder;->TG:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/request/SensorRequest$Builder;->TN:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/fitness/request/SensorRequest$Builder;->RI:I

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/android/gms/fitness/request/SensorRequest$Builder;->TM:J

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/fitness/request/SensorRequest$Builder;)Lcom/google/android/gms/fitness/data/DataSource;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SensorRequest$Builder;->ON:Lcom/google/android/gms/fitness/data/DataSource;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/fitness/request/SensorRequest$Builder;)Lcom/google/android/gms/fitness/data/DataType;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SensorRequest$Builder;->OM:Lcom/google/android/gms/fitness/data/DataType;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/fitness/request/SensorRequest$Builder;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/SensorRequest$Builder;->RH:J

    return-wide v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/fitness/request/SensorRequest$Builder;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/SensorRequest$Builder;->TH:J

    return-wide v0
.end method

.method static synthetic zze(Lcom/google/android/gms/fitness/request/SensorRequest$Builder;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/SensorRequest$Builder;->TG:J

    return-wide v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/fitness/request/SensorRequest$Builder;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/fitness/request/SensorRequest$Builder;->RI:I

    return v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/fitness/request/SensorRequest$Builder;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/SensorRequest$Builder;->TM:J

    return-wide v0
.end method


# virtual methods
.method public build()Lcom/google/android/gms/fitness/request/SensorRequest;
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SensorRequest$Builder;->ON:Lcom/google/android/gms/fitness/data/DataSource;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SensorRequest$Builder;->OM:Lcom/google/android/gms/fitness/data/DataType;

    if-eqz v0, :cond_35

    :cond_a
    move v0, v2

    :goto_b
    const-string/jumbo v3, "Must call setDataSource() or setDataType()"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SensorRequest$Builder;->OM:Lcom/google/android/gms/fitness/data/DataType;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SensorRequest$Builder;->ON:Lcom/google/android/gms/fitness/data/DataSource;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SensorRequest$Builder;->OM:Lcom/google/android/gms/fitness/data/DataType;

    iget-object v3, p0, Lcom/google/android/gms/fitness/request/SensorRequest$Builder;->ON:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/DataSource;->getDataType()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/fitness/data/DataType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    :cond_27
    move v1, v2

    :cond_28
    const-string/jumbo v0, "Specified data type is incompatible with specified data source"

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/fitness/request/SensorRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/fitness/request/SensorRequest;-><init>(Lcom/google/android/gms/fitness/request/SensorRequest$Builder;Lcom/google/android/gms/fitness/request/SensorRequest$1;)V

    return-object v0

    :cond_35
    move v0, v1

    goto :goto_b
.end method

.method public setAccuracyMode(I)Lcom/google/android/gms/fitness/request/SensorRequest$Builder;
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/internal/zztb;->zzou(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/fitness/request/SensorRequest$Builder;->RI:I

    return-object p0
.end method

.method public setDataSource(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/request/SensorRequest$Builder;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/SensorRequest$Builder;->ON:Lcom/google/android/gms/fitness/data/DataSource;

    return-object p0
.end method

.method public setDataType(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/request/SensorRequest$Builder;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/SensorRequest$Builder;->OM:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0
.end method

.method public setFastestRate(ILjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/request/SensorRequest$Builder;
    .registers 6

    const/4 v1, 0x1

    if-ltz p1, :cond_14

    move v0, v1

    :goto_4
    const-string/jumbo v2, "Cannot use a negative interval"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    iput-boolean v1, p0, Lcom/google/android/gms/fitness/request/SensorRequest$Builder;->TN:Z

    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/request/SensorRequest$Builder;->TH:J

    return-object p0

    :cond_14
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public setMaxDeliveryLatency(ILjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/request/SensorRequest$Builder;
    .registers 5

    if-ltz p1, :cond_11

    const/4 v0, 0x1

    :goto_3
    const-string/jumbo v1, "Cannot use a negative delivery interval"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/request/SensorRequest$Builder;->TG:J

    return-object p0

    :cond_11
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public setSamplingRate(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/request/SensorRequest$Builder;
    .registers 9

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1f

    const/4 v0, 0x1

    :goto_7
    const-string/jumbo v1, "Cannot use a negative sampling interval"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/request/SensorRequest$Builder;->RH:J

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/request/SensorRequest$Builder;->TN:Z

    if-nez v0, :cond_1e

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/SensorRequest$Builder;->RH:J

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/fitness/request/SensorRequest$Builder;->TH:J

    :cond_1e
    return-object p0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/request/SensorRequest$Builder;
    .registers 11

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-lez v0, :cond_26

    move v0, v1

    :goto_9
    const-string/jumbo v3, "Invalid time out value specified: %d"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-eqz p3, :cond_28

    :goto_19
    const-string/jumbo v0, "Invalid time unit specified"

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/request/SensorRequest$Builder;->TM:J

    return-object p0

    :cond_26
    move v0, v2

    goto :goto_9

    :cond_28
    move v1, v2

    goto :goto_19
.end method
