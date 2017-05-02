.class public Lcom/google/android/gms/fitness/data/Goal;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/fitness/data/Goal$FrequencyObjective;,
        Lcom/google/android/gms/fitness/data/Goal$DurationObjective;,
        Lcom/google/android/gms/fitness/data/Goal$MetricObjective;,
        Lcom/google/android/gms/fitness/data/Goal$Recurrence;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/data/Goal;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final Pg:J

.field private final Qj:J

.field private final Qk:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final Ql:Lcom/google/android/gms/fitness/data/Goal$Recurrence;

.field private final Qm:I

.field private final Qn:Lcom/google/android/gms/fitness/data/Goal$MetricObjective;

.field private final Qo:Lcom/google/android/gms/fitness/data/Goal$DurationObjective;

.field private final Qp:Lcom/google/android/gms/fitness/data/Goal$FrequencyObjective;

.field private final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/fitness/data/zzq;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/zzq;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/Goal;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IJJLjava/util/List;Lcom/google/android/gms/fitness/data/Goal$Recurrence;ILcom/google/android/gms/fitness/data/Goal$MetricObjective;Lcom/google/android/gms/fitness/data/Goal$DurationObjective;Lcom/google/android/gms/fitness/data/Goal$FrequencyObjective;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/fitness/data/Goal$Recurrence;",
            "I",
            "Lcom/google/android/gms/fitness/data/Goal$MetricObjective;",
            "Lcom/google/android/gms/fitness/data/Goal$DurationObjective;",
            "Lcom/google/android/gms/fitness/data/Goal$FrequencyObjective;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/data/Goal;->versionCode:I

    iput-wide p2, p0, Lcom/google/android/gms/fitness/data/Goal;->Pg:J

    iput-wide p4, p0, Lcom/google/android/gms/fitness/data/Goal;->Qj:J

    if-nez p6, :cond_f

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p6

    :cond_f
    iput-object p6, p0, Lcom/google/android/gms/fitness/data/Goal;->Qk:Ljava/util/List;

    iput-object p7, p0, Lcom/google/android/gms/fitness/data/Goal;->Ql:Lcom/google/android/gms/fitness/data/Goal$Recurrence;

    iput p8, p0, Lcom/google/android/gms/fitness/data/Goal;->Qm:I

    iput-object p9, p0, Lcom/google/android/gms/fitness/data/Goal;->Qn:Lcom/google/android/gms/fitness/data/Goal$MetricObjective;

    iput-object p10, p0, Lcom/google/android/gms/fitness/data/Goal;->Qo:Lcom/google/android/gms/fitness/data/Goal$DurationObjective;

    iput-object p11, p0, Lcom/google/android/gms/fitness/data/Goal;->Qp:Lcom/google/android/gms/fitness/data/Goal$FrequencyObjective;

    return-void
.end method

.method private zza(Lcom/google/android/gms/fitness/data/Goal;)Z
    .registers 6

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/Goal;->Pg:J

    iget-wide v2, p1, Lcom/google/android/gms/fitness/data/Goal;->Pg:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_4a

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/Goal;->Qj:J

    iget-wide v2, p1, Lcom/google/android/gms/fitness/data/Goal;->Qj:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_4a

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Goal;->Qk:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gms/fitness/data/Goal;->Qk:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Goal;->Ql:Lcom/google/android/gms/fitness/data/Goal$Recurrence;

    iget-object v1, p1, Lcom/google/android/gms/fitness/data/Goal;->Ql:Lcom/google/android/gms/fitness/data/Goal$Recurrence;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    iget v0, p0, Lcom/google/android/gms/fitness/data/Goal;->Qm:I

    iget v1, p1, Lcom/google/android/gms/fitness/data/Goal;->Qm:I

    if-ne v0, v1, :cond_4a

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Goal;->Qn:Lcom/google/android/gms/fitness/data/Goal$MetricObjective;

    iget-object v1, p1, Lcom/google/android/gms/fitness/data/Goal;->Qn:Lcom/google/android/gms/fitness/data/Goal$MetricObjective;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Goal;->Qo:Lcom/google/android/gms/fitness/data/Goal$DurationObjective;

    iget-object v1, p1, Lcom/google/android/gms/fitness/data/Goal;->Qo:Lcom/google/android/gms/fitness/data/Goal$DurationObjective;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Goal;->Qp:Lcom/google/android/gms/fitness/data/Goal$FrequencyObjective;

    iget-object v1, p1, Lcom/google/android/gms/fitness/data/Goal;->Qp:Lcom/google/android/gms/fitness/data/Goal$FrequencyObjective;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    const/4 v0, 0x1

    :goto_49
    return v0

    :cond_4a
    const/4 v0, 0x0

    goto :goto_49
.end method

.method private static zzog(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_1c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid objective type value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_c
    const-string/jumbo v0, "metric"

    :goto_f
    return-object v0

    :pswitch_10
    const-string/jumbo v0, "duration"

    goto :goto_f

    :pswitch_14
    const-string/jumbo v0, "frequency"

    goto :goto_f

    :pswitch_18
    const-string/jumbo v0, "unknown"

    goto :goto_f

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_18
        :pswitch_c
        :pswitch_10
        :pswitch_14
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-eq p0, p1, :cond_e

    instance-of v0, p1, Lcom/google/android/gms/fitness/data/Goal;

    if-eqz v0, :cond_10

    check-cast p1, Lcom/google/android/gms/fitness/data/Goal;

    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/data/Goal;->zza(Lcom/google/android/gms/fitness/data/Goal;)Z

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

.method getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/fitness/data/Goal;->versionCode:I

    return v0
.end method

.method public hashCode()I
    .registers 5

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/Goal;->Pg:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/Goal;->Qj:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/Goal;->zzbew()Ljava/util/Set;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Goal;->Ql:Lcom/google/android/gms/fitness/data/Goal$Recurrence;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/fitness/data/Goal;->Qm:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Goal;->Qn:Lcom/google/android/gms/fitness/data/Goal$MetricObjective;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Goal;->Qo:Lcom/google/android/gms/fitness/data/Goal$DurationObjective;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Goal;->Qp:Lcom/google/android/gms/fitness/data/Goal$FrequencyObjective;

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

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/Goal;->Pg:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzab$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    const-string/jumbo v1, "endTime"

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/Goal;->Qj:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzab$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    const-string/jumbo v1, "activities"

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/Goal;->zzbew()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzab$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    const-string/jumbo v1, "recurrence"

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Goal;->Ql:Lcom/google/android/gms/fitness/data/Goal$Recurrence;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzab$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    const-string/jumbo v1, "objectiveType"

    iget v2, p0, Lcom/google/android/gms/fitness/data/Goal;->Qm:I

    invoke-static {v2}, Lcom/google/android/gms/fitness/data/Goal;->zzog(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzab$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    const-string/jumbo v1, "metricObjective"

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Goal;->Qn:Lcom/google/android/gms/fitness/data/Goal$MetricObjective;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzab$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    const-string/jumbo v1, "durationObjective"

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Goal;->Qo:Lcom/google/android/gms/fitness/data/Goal$DurationObjective;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzab$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    const-string/jumbo v1, "frequencyObjective"

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Goal;->Qp:Lcom/google/android/gms/fitness/data/Goal$FrequencyObjective;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzab$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzab$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/data/zzq;->zza(Lcom/google/android/gms/fitness/data/Goal;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzbek()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/Goal;->Pg:J

    return-wide v0
.end method

.method public zzbew()Ljava/util/Set;
    .registers 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Goal;->Qk:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Goal;->Qk:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/fitness/FitnessActivities;->getName(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_2d
    move-object v0, v1

    goto :goto_9
.end method

.method public zzbex()Lcom/google/android/gms/fitness/data/Goal$Recurrence;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Goal;->Ql:Lcom/google/android/gms/fitness/data/Goal$Recurrence;

    return-object v0
.end method

.method public zzbey()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/fitness/data/Goal;->Qm:I

    return v0
.end method

.method public zzbez()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/Goal;->Qj:J

    return-wide v0
.end method

.method public zzbfa()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Goal;->Qk:Ljava/util/List;

    return-object v0
.end method

.method public zzbfb()Lcom/google/android/gms/fitness/data/Goal$MetricObjective;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Goal;->Qn:Lcom/google/android/gms/fitness/data/Goal$MetricObjective;

    return-object v0
.end method

.method public zzbfc()Lcom/google/android/gms/fitness/data/Goal$DurationObjective;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Goal;->Qo:Lcom/google/android/gms/fitness/data/Goal$DurationObjective;

    return-object v0
.end method

.method public zzbfd()Lcom/google/android/gms/fitness/data/Goal$FrequencyObjective;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Goal;->Qp:Lcom/google/android/gms/fitness/data/Goal$FrequencyObjective;

    return-object v0
.end method
