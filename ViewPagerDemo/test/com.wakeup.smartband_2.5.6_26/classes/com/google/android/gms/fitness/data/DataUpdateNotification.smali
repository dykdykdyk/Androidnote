.class public Lcom/google/android/gms/fitness/data/DataUpdateNotification;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.google.android.gms.fitness.DATA_UPDATE_NOTIFICATION"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/data/DataUpdateNotification;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_DATA_UPDATE_NOTIFICATION:Ljava/lang/String; = "vnd.google.fitness.data_udpate_notification"

.field public static final OPERATION_DELETE:I = 0x2

.field public static final OPERATION_INSERT:I = 0x1

.field public static final OPERATION_UPDATE:I = 0x3


# instance fields
.field private final OM:Lcom/google/android/gms/fitness/data/DataType;

.field private final ON:Lcom/google/android/gms/fitness/data/DataSource;

.field private final PI:J

.field private final PJ:J

.field private final PK:I

.field final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/fitness/data/zzl;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/zzl;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataUpdateNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IJJILcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/data/DataType;)V
    .registers 9

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/data/DataUpdateNotification;->mVersionCode:I

    iput-wide p2, p0, Lcom/google/android/gms/fitness/data/DataUpdateNotification;->PI:J

    iput-wide p4, p0, Lcom/google/android/gms/fitness/data/DataUpdateNotification;->PJ:J

    iput p6, p0, Lcom/google/android/gms/fitness/data/DataUpdateNotification;->PK:I

    iput-object p7, p0, Lcom/google/android/gms/fitness/data/DataUpdateNotification;->ON:Lcom/google/android/gms/fitness/data/DataSource;

    iput-object p8, p0, Lcom/google/android/gms/fitness/data/DataUpdateNotification;->OM:Lcom/google/android/gms/fitness/data/DataType;

    return-void
.end method

.method public static getDataUpdateNotification(Landroid/content/Intent;)Lcom/google/android/gms/fitness/data/DataUpdateNotification;
    .registers 3

    const-string/jumbo v0, "vnd.google.fitness.data_udpate_notification"

    sget-object v1, Lcom/google/android/gms/fitness/data/DataUpdateNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/zzc;->zza(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataUpdateNotification;

    return-object v0
.end method

.method private zza(Lcom/google/android/gms/fitness/data/DataUpdateNotification;)Z
    .registers 6

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/DataUpdateNotification;->PI:J

    iget-wide v2, p1, Lcom/google/android/gms/fitness/data/DataUpdateNotification;->PI:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2c

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/DataUpdateNotification;->PJ:J

    iget-wide v2, p1, Lcom/google/android/gms/fitness/data/DataUpdateNotification;->PJ:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2c

    iget v0, p0, Lcom/google/android/gms/fitness/data/DataUpdateNotification;->PK:I

    iget v1, p1, Lcom/google/android/gms/fitness/data/DataUpdateNotification;->PK:I

    if-ne v0, v1, :cond_2c

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataUpdateNotification;->ON:Lcom/google/android/gms/fitness/data/DataSource;

    iget-object v1, p1, Lcom/google/android/gms/fitness/data/DataUpdateNotification;->ON:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataUpdateNotification;->OM:Lcom/google/android/gms/fitness/data/DataType;

    iget-object v1, p1, Lcom/google/android/gms/fitness/data/DataUpdateNotification;->OM:Lcom/google/android/gms/fitness/data/DataType;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v0, 0x1

    :goto_2b
    return v0

    :cond_2c
    const/4 v0, 0x0

    goto :goto_2b
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-eq p1, p0, :cond_e

    instance-of v0, p1, Lcom/google/android/gms/fitness/data/DataUpdateNotification;

    if-eqz v0, :cond_10

    check-cast p1, Lcom/google/android/gms/fitness/data/DataUpdateNotification;

    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/data/DataUpdateNotification;->zza(Lcom/google/android/gms/fitness/data/DataUpdateNotification;)Z

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

.method public getDataSource()Lcom/google/android/gms/fitness/data/DataSource;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataUpdateNotification;->ON:Lcom/google/android/gms/fitness/data/DataSource;

    return-object v0
.end method

.method public getDataType()Lcom/google/android/gms/fitness/data/DataType;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataUpdateNotification;->OM:Lcom/google/android/gms/fitness/data/DataType;

    return-object v0
.end method

.method public getOperationType()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/fitness/data/DataUpdateNotification;->PK:I

    return v0
.end method

.method public getUpdateEndTime(Ljava/util/concurrent/TimeUnit;)J
    .registers 5

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/DataUpdateNotification;->PJ:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUpdateStartTime(Ljava/util/concurrent/TimeUnit;)J
    .registers 5

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/DataUpdateNotification;->PI:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .registers 5

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/DataUpdateNotification;->PI:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/DataUpdateNotification;->PJ:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/fitness/data/DataUpdateNotification;->PK:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataUpdateNotification;->ON:Lcom/google/android/gms/fitness/data/DataSource;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataUpdateNotification;->OM:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzab;->zzx(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    const-string/jumbo v1, "updateStartTimeNanos"

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/DataUpdateNotification;->PI:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzab$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    const-string/jumbo v1, "updateEndTimeNanos"

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/DataUpdateNotification;->PJ:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzab$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    const-string/jumbo v1, "operationType"

    iget v2, p0, Lcom/google/android/gms/fitness/data/DataUpdateNotification;->PK:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzab$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    const-string/jumbo v1, "dataSource"

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataUpdateNotification;->ON:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzab$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    const-string/jumbo v1, "dataType"

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataUpdateNotification;->OM:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzab$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzab$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/data/zzl;->zza(Lcom/google/android/gms/fitness/data/DataUpdateNotification;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzber()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/DataUpdateNotification;->PI:J

    return-wide v0
.end method

.method public zzbes()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/DataUpdateNotification;->PJ:J

    return-wide v0
.end method
