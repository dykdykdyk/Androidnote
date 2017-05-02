.class public final Lcom/google/android/gms/fitness/data/RawDataPoint;
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
            "Lcom/google/android/gms/fitness/data/RawDataPoint;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final RA:J

.field public final Ru:J

.field public final Rv:J

.field public final Rw:[Lcom/google/android/gms/fitness/data/Value;

.field public final Rx:I

.field public final Ry:I

.field public final Rz:J

.field final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/fitness/data/zzx;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/zzx;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/RawDataPoint;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IJJ[Lcom/google/android/gms/fitness/data/Value;IIJJ)V
    .registers 13

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/data/RawDataPoint;->versionCode:I

    iput-wide p2, p0, Lcom/google/android/gms/fitness/data/RawDataPoint;->Ru:J

    iput-wide p4, p0, Lcom/google/android/gms/fitness/data/RawDataPoint;->Rv:J

    iput p7, p0, Lcom/google/android/gms/fitness/data/RawDataPoint;->Rx:I

    iput p8, p0, Lcom/google/android/gms/fitness/data/RawDataPoint;->Ry:I

    iput-wide p9, p0, Lcom/google/android/gms/fitness/data/RawDataPoint;->Rz:J

    iput-wide p11, p0, Lcom/google/android/gms/fitness/data/RawDataPoint;->RA:J

    iput-object p6, p0, Lcom/google/android/gms/fitness/data/RawDataPoint;->Rw:[Lcom/google/android/gms/fitness/data/Value;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/fitness/data/DataPoint;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/fitness/data/DataPoint;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/fitness/data/RawDataPoint;->versionCode:I

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/fitness/data/DataPoint;->getTimestamp(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/data/RawDataPoint;->Ru:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/fitness/data/DataPoint;->getStartTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/data/RawDataPoint;->Rv:J

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->zzbef()[Lcom/google/android/gms/fitness/data/Value;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/RawDataPoint;->Rw:[Lcom/google/android/gms/fitness/data/Value;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->getDataSource()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/zzsy;->zza(Ljava/lang/Object;Ljava/util/List;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/fitness/data/RawDataPoint;->Rx:I

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->zzbeg()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/zzsy;->zza(Ljava/lang/Object;Ljava/util/List;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/fitness/data/RawDataPoint;->Ry:I

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->zzbeh()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/data/RawDataPoint;->Rz:J

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->zzbei()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/data/RawDataPoint;->RA:J

    return-void
.end method

.method private zza(Lcom/google/android/gms/fitness/data/RawDataPoint;)Z
    .registers 6

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/RawDataPoint;->Ru:J

    iget-wide v2, p1, Lcom/google/android/gms/fitness/data/RawDataPoint;->Ru:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_30

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/RawDataPoint;->Rv:J

    iget-wide v2, p1, Lcom/google/android/gms/fitness/data/RawDataPoint;->Rv:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/RawDataPoint;->Rw:[Lcom/google/android/gms/fitness/data/Value;

    iget-object v1, p1, Lcom/google/android/gms/fitness/data/RawDataPoint;->Rw:[Lcom/google/android/gms/fitness/data/Value;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    iget v0, p0, Lcom/google/android/gms/fitness/data/RawDataPoint;->Rx:I

    iget v1, p1, Lcom/google/android/gms/fitness/data/RawDataPoint;->Rx:I

    if-ne v0, v1, :cond_30

    iget v0, p0, Lcom/google/android/gms/fitness/data/RawDataPoint;->Ry:I

    iget v1, p1, Lcom/google/android/gms/fitness/data/RawDataPoint;->Ry:I

    if-ne v0, v1, :cond_30

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/RawDataPoint;->Rz:J

    iget-wide v2, p1, Lcom/google/android/gms/fitness/data/RawDataPoint;->Rz:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_30

    const/4 v0, 0x1

    :goto_2f
    return v0

    :cond_30
    const/4 v0, 0x0

    goto :goto_2f
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-eq p0, p1, :cond_e

    instance-of v0, p1, Lcom/google/android/gms/fitness/data/RawDataPoint;

    if-eqz v0, :cond_10

    check-cast p1, Lcom/google/android/gms/fitness/data/RawDataPoint;

    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/data/RawDataPoint;->zza(Lcom/google/android/gms/fitness/data/RawDataPoint;)Z

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

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/RawDataPoint;->Ru:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/RawDataPoint;->Rv:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    const-string/jumbo v0, "RawDataPoint{%s@[%s, %s](%d,%d)}"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/fitness/data/RawDataPoint;->Rw:[Lcom/google/android/gms/fitness/data/Value;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/google/android/gms/fitness/data/RawDataPoint;->Rv:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-wide v4, p0, Lcom/google/android/gms/fitness/data/RawDataPoint;->Ru:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/google/android/gms/fitness/data/RawDataPoint;->Rx:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/google/android/gms/fitness/data/RawDataPoint;->Ry:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/data/zzx;->zza(Lcom/google/android/gms/fitness/data/RawDataPoint;Landroid/os/Parcel;I)V

    return-void
.end method
