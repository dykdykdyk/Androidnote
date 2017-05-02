.class public Lcom/google/android/gms/fitness/data/Bucket;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/data/Bucket;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_ACTIVITY_SEGMENT:I = 0x4

.field public static final TYPE_ACTIVITY_TYPE:I = 0x3

.field public static final TYPE_SESSION:I = 0x2

.field public static final TYPE_TIME:I = 0x1


# instance fields
.field private final GX:J

.field private final OP:Lcom/google/android/gms/fitness/data/Session;

.field private final OY:I

.field private final OZ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSet;",
            ">;"
        }
    .end annotation
.end field

.field private final Pa:I

.field private Pb:Z

.field private final bZ:J

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/fitness/data/zzd;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/Bucket;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IJJLcom/google/android/gms/fitness/data/Session;ILjava/util/List;IZ)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Lcom/google/android/gms/fitness/data/Session;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSet;",
            ">;IZ)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->Pb:Z

    iput p1, p0, Lcom/google/android/gms/fitness/data/Bucket;->mVersionCode:I

    iput-wide p2, p0, Lcom/google/android/gms/fitness/data/Bucket;->bZ:J

    iput-wide p4, p0, Lcom/google/android/gms/fitness/data/Bucket;->GX:J

    iput-object p6, p0, Lcom/google/android/gms/fitness/data/Bucket;->OP:Lcom/google/android/gms/fitness/data/Session;

    iput p7, p0, Lcom/google/android/gms/fitness/data/Bucket;->OY:I

    iput-object p8, p0, Lcom/google/android/gms/fitness/data/Bucket;->OZ:Ljava/util/List;

    iput p9, p0, Lcom/google/android/gms/fitness/data/Bucket;->Pa:I

    iput-boolean p10, p0, Lcom/google/android/gms/fitness/data/Bucket;->Pb:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/data/RawBucket;Ljava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/fitness/data/RawBucket;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x2

    iget-wide v2, p1, Lcom/google/android/gms/fitness/data/RawBucket;->bZ:J

    iget-wide v4, p1, Lcom/google/android/gms/fitness/data/RawBucket;->GX:J

    iget-object v6, p1, Lcom/google/android/gms/fitness/data/RawBucket;->OP:Lcom/google/android/gms/fitness/data/Session;

    iget v7, p1, Lcom/google/android/gms/fitness/data/RawBucket;->Rt:I

    iget-object v0, p1, Lcom/google/android/gms/fitness/data/RawBucket;->OZ:Ljava/util/List;

    invoke-static {v0, p2}, Lcom/google/android/gms/fitness/data/Bucket;->zza(Ljava/util/Collection;Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    iget v9, p1, Lcom/google/android/gms/fitness/data/RawBucket;->Pa:I

    iget-boolean v10, p1, Lcom/google/android/gms/fitness/data/RawBucket;->Pb:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/fitness/data/Bucket;-><init>(IJJLcom/google/android/gms/fitness/data/Session;ILjava/util/List;IZ)V

    return-void
.end method

.method private static zza(Ljava/util/Collection;Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/fitness/data/RawDataSet;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSet;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/RawDataSet;

    new-instance v3, Lcom/google/android/gms/fitness/data/DataSet;

    invoke-direct {v3, v0, p1}, Lcom/google/android/gms/fitness/data/DataSet;-><init>(Lcom/google/android/gms/fitness/data/RawDataSet;Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_22
    return-object v1
.end method

.method private zza(Lcom/google/android/gms/fitness/data/Bucket;)Z
    .registers 6

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->bZ:J

    iget-wide v2, p1, Lcom/google/android/gms/fitness/data/Bucket;->bZ:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2e

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->GX:J

    iget-wide v2, p1, Lcom/google/android/gms/fitness/data/Bucket;->GX:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2e

    iget v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->OY:I

    iget v1, p1, Lcom/google/android/gms/fitness/data/Bucket;->OY:I

    if-ne v0, v1, :cond_2e

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->OZ:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gms/fitness/data/Bucket;->OZ:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->Pa:I

    iget v1, p1, Lcom/google/android/gms/fitness/data/Bucket;->Pa:I

    if-ne v0, v1, :cond_2e

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->Pb:Z

    iget-boolean v1, p1, Lcom/google/android/gms/fitness/data/Bucket;->Pb:Z

    if-ne v0, v1, :cond_2e

    const/4 v0, 0x1

    :goto_2d
    return v0

    :cond_2e
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method public static zznr(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_1c

    const-string/jumbo v0, "bug"

    :goto_6
    return-object v0

    :pswitch_7
    const-string/jumbo v0, "time"

    goto :goto_6

    :pswitch_b
    const-string/jumbo v0, "type"

    goto :goto_6

    :pswitch_f
    const-string/jumbo v0, "segment"

    goto :goto_6

    :pswitch_13
    const-string/jumbo v0, "session"

    goto :goto_6

    :pswitch_17
    const-string/jumbo v0, "unknown"

    goto :goto_6

    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_17
        :pswitch_7
        :pswitch_13
        :pswitch_b
        :pswitch_f
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-eq p1, p0, :cond_e

    instance-of v0, p1, Lcom/google/android/gms/fitness/data/Bucket;

    if-eqz v0, :cond_10

    check-cast p1, Lcom/google/android/gms/fitness/data/Bucket;

    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/data/Bucket;->zza(Lcom/google/android/gms/fitness/data/Bucket;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public getActivity()Ljava/lang/String;
    .registers 2

    iget v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->OY:I

    invoke-static {v0}, Lcom/google/android/gms/fitness/FitnessActivities;->getName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBucketType()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->Pa:I

    return v0
.end method

.method public getDataSet(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/data/DataSet;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->OZ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSet;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSet;->getDataType()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/fitness/data/DataType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :goto_1c
    return-object v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public getDataSets()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSet;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->OZ:Ljava/util/List;

    return-object v0
.end method

.method public getEndTime(Ljava/util/concurrent/TimeUnit;)J
    .registers 5

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->GX:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSession()Lcom/google/android/gms/fitness/data/Session;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->OP:Lcom/google/android/gms/fitness/data/Session;

    return-object v0
.end method

.method public getStartTime(Ljava/util/concurrent/TimeUnit;)J
    .registers 5

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->bZ:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .registers 5

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/Bucket;->bZ:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/Bucket;->GX:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/fitness/data/Bucket;->OY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/fitness/data/Bucket;->Pa:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzab;->zzx(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    const-string/jumbo v1, "startTime"

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/Bucket;->bZ:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzab$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    const-string/jumbo v1, "endTime"

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/Bucket;->GX:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzab$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    const-string/jumbo v1, "activity"

    iget v2, p0, Lcom/google/android/gms/fitness/data/Bucket;->OY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzab$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    const-string/jumbo v1, "dataSets"

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Bucket;->OZ:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzab$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    const-string/jumbo v1, "bucketType"

    iget v2, p0, Lcom/google/android/gms/fitness/data/Bucket;->Pa:I

    invoke-static {v2}, Lcom/google/android/gms/fitness/data/Bucket;->zznr(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzab$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    const-string/jumbo v1, "serverHasMoreData"

    iget-boolean v2, p0, Lcom/google/android/gms/fitness/data/Bucket;->Pb:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzab$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzab$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/data/zzd;->zza(Lcom/google/android/gms/fitness/data/Bucket;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzafn()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->bZ:J

    return-wide v0
.end method

.method public zzb(Lcom/google/android/gms/fitness/data/Bucket;)Z
    .registers 6

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->bZ:J

    iget-wide v2, p1, Lcom/google/android/gms/fitness/data/Bucket;->bZ:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1e

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->GX:J

    iget-wide v2, p1, Lcom/google/android/gms/fitness/data/Bucket;->GX:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1e

    iget v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->OY:I

    iget v1, p1, Lcom/google/android/gms/fitness/data/Bucket;->OY:I

    if-ne v0, v1, :cond_1e

    iget v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->Pa:I

    iget v1, p1, Lcom/google/android/gms/fitness/data/Bucket;->Pa:I

    if-ne v0, v1, :cond_1e

    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public zzbao()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->GX:J

    return-wide v0
.end method

.method public zzbeb()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->OY:I

    return v0
.end method

.method public zzbec()Z
    .registers 4

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->Pb:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->OZ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSet;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSet;->zzbec()Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v1

    goto :goto_6

    :cond_21
    const/4 v0, 0x0

    goto :goto_6
.end method
