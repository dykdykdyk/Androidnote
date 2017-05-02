.class public final Lcom/google/android/gms/fitness/data/RawBucket;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepName;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/data/RawBucket;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final GX:J

.field public final OP:Lcom/google/android/gms/fitness/data/Session;

.field public final OZ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/RawDataSet;",
            ">;"
        }
    .end annotation
.end field

.field public final Pa:I

.field public final Pb:Z

.field public final Rt:I

.field public final bZ:J

.field final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/fitness/data/zzw;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/zzw;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/RawBucket;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IJJLcom/google/android/gms/fitness/data/Session;ILjava/util/List;IZ)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Lcom/google/android/gms/fitness/data/Session;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/RawDataSet;",
            ">;IZ)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/data/RawBucket;->mVersionCode:I

    iput-wide p2, p0, Lcom/google/android/gms/fitness/data/RawBucket;->bZ:J

    iput-wide p4, p0, Lcom/google/android/gms/fitness/data/RawBucket;->GX:J

    iput-object p6, p0, Lcom/google/android/gms/fitness/data/RawBucket;->OP:Lcom/google/android/gms/fitness/data/Session;

    iput p7, p0, Lcom/google/android/gms/fitness/data/RawBucket;->Rt:I

    iput-object p8, p0, Lcom/google/android/gms/fitness/data/RawBucket;->OZ:Ljava/util/List;

    iput p9, p0, Lcom/google/android/gms/fitness/data/RawBucket;->Pa:I

    iput-boolean p10, p0, Lcom/google/android/gms/fitness/data/RawBucket;->Pb:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/data/Bucket;Ljava/util/List;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/fitness/data/Bucket;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/fitness/data/RawBucket;->mVersionCode:I

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/fitness/data/Bucket;->getStartTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/data/RawBucket;->bZ:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/fitness/data/Bucket;->getEndTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/data/RawBucket;->GX:J

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Bucket;->getSession()Lcom/google/android/gms/fitness/data/Session;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/RawBucket;->OP:Lcom/google/android/gms/fitness/data/Session;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Bucket;->zzbeb()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/fitness/data/RawBucket;->Rt:I

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Bucket;->getBucketType()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/fitness/data/RawBucket;->Pa:I

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Bucket;->zzbec()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/data/RawBucket;->Pb:Z

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Bucket;->getDataSets()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/fitness/data/RawBucket;->OZ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_41
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSet;

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/RawBucket;->OZ:Ljava/util/List;

    new-instance v3, Lcom/google/android/gms/fitness/data/RawDataSet;

    invoke-direct {v3, v0, p2, p3}, Lcom/google/android/gms/fitness/data/RawDataSet;-><init>(Lcom/google/android/gms/fitness/data/DataSet;Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_41

    :cond_58
    return-void
.end method

.method private zza(Lcom/google/android/gms/fitness/data/RawBucket;)Z
    .registers 6

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/RawBucket;->bZ:J

    iget-wide v2, p1, Lcom/google/android/gms/fitness/data/RawBucket;->bZ:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2e

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/RawBucket;->GX:J

    iget-wide v2, p1, Lcom/google/android/gms/fitness/data/RawBucket;->GX:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2e

    iget v0, p0, Lcom/google/android/gms/fitness/data/RawBucket;->Rt:I

    iget v1, p1, Lcom/google/android/gms/fitness/data/RawBucket;->Rt:I

    if-ne v0, v1, :cond_2e

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/RawBucket;->OZ:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gms/fitness/data/RawBucket;->OZ:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget v0, p0, Lcom/google/android/gms/fitness/data/RawBucket;->Pa:I

    iget v1, p1, Lcom/google/android/gms/fitness/data/RawBucket;->Pa:I

    if-ne v0, v1, :cond_2e

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/data/RawBucket;->Pb:Z

    iget-boolean v1, p1, Lcom/google/android/gms/fitness/data/RawBucket;->Pb:Z

    if-ne v0, v1, :cond_2e

    const/4 v0, 0x1

    :goto_2d
    return v0

    :cond_2e
    const/4 v0, 0x0

    goto :goto_2d
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-eq p0, p1, :cond_e

    instance-of v0, p1, Lcom/google/android/gms/fitness/data/RawBucket;

    if-eqz v0, :cond_10

    check-cast p1, Lcom/google/android/gms/fitness/data/RawBucket;

    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/data/RawBucket;->zza(Lcom/google/android/gms/fitness/data/RawBucket;)Z

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

.method public hashCode()I
    .registers 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/RawBucket;->bZ:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/RawBucket;->GX:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/fitness/data/RawBucket;->Pa:I

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

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/RawBucket;->bZ:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzab$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    const-string/jumbo v1, "endTime"

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/RawBucket;->GX:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzab$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    const-string/jumbo v1, "activity"

    iget v2, p0, Lcom/google/android/gms/fitness/data/RawBucket;->Rt:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzab$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    const-string/jumbo v1, "dataSets"

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/RawBucket;->OZ:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzab$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    const-string/jumbo v1, "bucketType"

    iget v2, p0, Lcom/google/android/gms/fitness/data/RawBucket;->Pa:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzab$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    const-string/jumbo v1, "serverHasMoreData"

    iget-boolean v2, p0, Lcom/google/android/gms/fitness/data/RawBucket;->Pb:Z

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/data/zzw;->zza(Lcom/google/android/gms/fitness/data/RawBucket;Landroid/os/Parcel;I)V

    return-void
.end method
