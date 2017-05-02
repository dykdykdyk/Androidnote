.class public Lcom/google/android/gms/fitness/data/Session$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fitness/data/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private GX:J

.field private OY:I

.field private RD:Ljava/lang/String;

.field private RF:Ljava/lang/Long;

.field private Y:Ljava/lang/String;

.field private bZ:J

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->bZ:J

    iput-wide v0, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->GX:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->mName:Ljava/lang/String;

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->OY:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/fitness/data/Session$Builder;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->bZ:J

    return-wide v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/fitness/data/Session$Builder;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->GX:J

    return-wide v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/fitness/data/Session$Builder;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/fitness/data/Session$Builder;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->RD:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/fitness/data/Session$Builder;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->Y:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/fitness/data/Session$Builder;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->OY:I

    return v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/fitness/data/Session$Builder;)Lcom/google/android/gms/fitness/data/Application;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic zzh(Lcom/google/android/gms/fitness/data/Session$Builder;)Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->RF:Ljava/lang/Long;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/android/gms/fitness/data/Session;
    .registers 9

    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->bZ:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_60

    move v0, v1

    :goto_b
    const-string/jumbo v3, "Start time should be specified."

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    iget-wide v4, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->GX:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1f

    iget-wide v4, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->GX:J

    iget-wide v6, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->bZ:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_20

    :cond_1f
    move v2, v1

    :cond_20
    const-string/jumbo v0, "End time should be later than start time."

    invoke-static {v2, v0}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->RD:Ljava/lang/String;

    if-nez v0, :cond_50

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->mName:Ljava/lang/String;

    if-nez v0, :cond_62

    const-string/jumbo v0, ""

    :goto_31
    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->bZ:J

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x14

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->RD:Ljava/lang/String;

    :cond_50
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->Y:Ljava/lang/String;

    if-nez v0, :cond_59

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->Y:Ljava/lang/String;

    :cond_59
    new-instance v0, Lcom/google/android/gms/fitness/data/Session;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/fitness/data/Session;-><init>(Lcom/google/android/gms/fitness/data/Session$Builder;Lcom/google/android/gms/fitness/data/Session$1;)V

    return-object v0

    :cond_60
    move v0, v2

    goto :goto_b

    :cond_62
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->mName:Ljava/lang/String;

    goto :goto_31
.end method

.method public setActiveTime(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/data/Session$Builder;
    .registers 7

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->RF:Ljava/lang/Long;

    return-object p0
.end method

.method public setActivity(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Session$Builder;
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/fitness/FitnessActivities;->zzje(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/fitness/data/Session$Builder;->zzop(I)Lcom/google/android/gms/fitness/data/Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Session$Builder;
    .registers 7

    const/16 v4, 0x3e8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v4, :cond_1c

    move v0, v1

    :goto_b
    const-string/jumbo v3, "Session description cannot exceed %d characters"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->Y:Ljava/lang/String;

    return-object p0

    :cond_1c
    move v0, v2

    goto :goto_b
.end method

.method public setEndTime(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/data/Session$Builder;
    .registers 7

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_14

    const/4 v0, 0x1

    :goto_7
    const-string/jumbo v1, "End time should be positive."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->GX:J

    return-object p0

    :cond_14
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setIdentifier(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Session$Builder;
    .registers 3

    if-eqz p1, :cond_f

    invoke-static {p1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-lez v0, :cond_f

    const/4 v0, 0x1

    :goto_9
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzbs(Z)V

    iput-object p1, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->RD:Ljava/lang/String;

    return-object p0

    :cond_f
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Session$Builder;
    .registers 7

    const/16 v4, 0x64

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v4, :cond_1c

    move v0, v1

    :goto_b
    const-string/jumbo v3, "Session name cannot exceed %d characters"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->mName:Ljava/lang/String;

    return-object p0

    :cond_1c
    move v0, v2

    goto :goto_b
.end method

.method public setStartTime(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/data/Session$Builder;
    .registers 7

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_14

    const/4 v0, 0x1

    :goto_7
    const-string/jumbo v1, "Start time should be positive."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->bZ:J

    return-object p0

    :cond_14
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public zzop(I)Lcom/google/android/gms/fitness/data/Session$Builder;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->OY:I

    return-object p0
.end method
