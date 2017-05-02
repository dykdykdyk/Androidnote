.class public Lcom/google/android/gms/location/ActivityRecognitionResult;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/ActivityRecognitionResultCreator;


# instance fields
.field agG:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/DetectedActivity;",
            ">;"
        }
    .end annotation
.end field

.field agH:J

.field agI:J

.field agJ:I

.field extras:Landroid/os/Bundle;

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/location/ActivityRecognitionResultCreator;

    invoke-direct {v0}, Lcom/google/android/gms/location/ActivityRecognitionResultCreator;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/ActivityRecognitionResult;->CREATOR:Lcom/google/android/gms/location/ActivityRecognitionResultCreator;

    return-void
.end method

.method public constructor <init>(ILjava/util/List;JJILandroid/os/Bundle;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/DetectedActivity;",
            ">;JJI",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->agG:Ljava/util/List;

    iput-wide p3, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->agH:J

    iput-wide p5, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->agI:J

    iput p7, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->agJ:I

    iput-object p8, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->extras:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/location/DetectedActivity;JJ)V
    .registers 14

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/location/ActivityRecognitionResult;-><init>(Lcom/google/android/gms/location/DetectedActivity;JJILandroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/location/DetectedActivity;JJILandroid/os/Bundle;)V
    .registers 16

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/location/ActivityRecognitionResult;-><init>(Ljava/util/List;JJILandroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;JJ)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/DetectedActivity;",
            ">;JJ)V"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/location/ActivityRecognitionResult;-><init>(Ljava/util/List;JJILandroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;JJILandroid/os/Bundle;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/DetectedActivity;",
            ">;JJI",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    if-eqz p1, :cond_32

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_32

    move v0, v1

    :goto_10
    const-string/jumbo v3, "Must have at least 1 detected activity"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    cmp-long v0, p2, v4

    if-lez v0, :cond_34

    cmp-long v0, p4, v4

    if-lez v0, :cond_34

    :goto_1e
    const-string/jumbo v0, "Must set times"

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->mVersionCode:I

    iput-object p1, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->agG:Ljava/util/List;

    iput-wide p2, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->agH:J

    iput-wide p4, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->agI:J

    iput p6, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->agJ:I

    iput-object p7, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->extras:Landroid/os/Bundle;

    return-void

    :cond_32
    move v0, v2

    goto :goto_10

    :cond_34
    move v1, v2

    goto :goto_1e
.end method

.method public static extractResult(Landroid/content/Intent;)Lcom/google/android/gms/location/ActivityRecognitionResult;
    .registers 3

    invoke-static {p0}, Lcom/google/android/gms/location/ActivityRecognitionResult;->zzx(Landroid/content/Intent;)Lcom/google/android/gms/location/ActivityRecognitionResult;

    move-result-object v0

    if-eqz v0, :cond_7

    :goto_6
    return-object v0

    :cond_7
    invoke-static {p0}, Lcom/google/android/gms/location/ActivityRecognitionResult;->zzz(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_6

    :cond_15
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/ActivityRecognitionResult;

    goto :goto_6
.end method

.method public static hasResult(Landroid/content/Intent;)Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_6

    move v0, v1

    :cond_5
    :goto_5
    return v0

    :cond_6
    invoke-static {p0}, Lcom/google/android/gms/location/ActivityRecognitionResult;->zzw(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {p0}, Lcom/google/android/gms/location/ActivityRecognitionResult;->zzz(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_18

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_18
    move v0, v1

    goto :goto_5
.end method

.method private static zzc(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_8

    if-nez p1, :cond_8

    move v0, v1

    :goto_7
    return v0

    :cond_8
    if-nez p0, :cond_c

    if-nez p1, :cond_10

    :cond_c
    if-eqz p0, :cond_12

    if-nez p1, :cond_12

    :cond_10
    move v0, v2

    goto :goto_7

    :cond_12
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v3

    if-eq v0, v3, :cond_1e

    move v0, v2

    goto :goto_7

    :cond_1e
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3a

    move v0, v2

    goto :goto_7

    :cond_3a
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_48

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_26

    move v0, v2

    goto :goto_7

    :cond_48
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Landroid/os/Bundle;

    if-eqz v4, :cond_60

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/gms/location/ActivityRecognitionResult;->zzc(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_26

    move v0, v2

    goto :goto_7

    :cond_60
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    move v0, v2

    goto :goto_7

    :cond_70
    move v0, v1

    goto :goto_7
.end method

.method private static zzw(Landroid/content/Intent;)Z
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    const-string/jumbo v0, "com.google.android.location.internal.EXTRA_ACTIVITY_RESULT"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3
.end method

.method private static zzx(Landroid/content/Intent;)Lcom/google/android/gms/location/ActivityRecognitionResult;
    .registers 4

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/google/android/gms/location/ActivityRecognitionResult;->hasResult(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_9

    move-object v0, v1

    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "com.google.android.location.internal.EXTRA_ACTIVITY_RESULT"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, [B

    if-eqz v2, :cond_23

    check-cast v0, [B

    sget-object v1, Lcom/google/android/gms/location/ActivityRecognitionResult;->CREATOR:Lcom/google/android/gms/location/ActivityRecognitionResultCreator;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/zzc;->zza([BLandroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/ActivityRecognitionResult;

    goto :goto_8

    :cond_23
    instance-of v2, v0, Lcom/google/android/gms/location/ActivityRecognitionResult;

    if-eqz v2, :cond_2a

    check-cast v0, Lcom/google/android/gms/location/ActivityRecognitionResult;

    goto :goto_8

    :cond_2a
    move-object v0, v1

    goto :goto_8
.end method

.method public static zzy(Landroid/content/Intent;)Z
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    const-string/jumbo v0, "com.google.android.location.internal.EXTRA_ACTIVITY_RESULT_LIST"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3
.end method

.method public static zzz(Landroid/content/Intent;)Ljava/util/List;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/ActivityRecognitionResult;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/location/ActivityRecognitionResult;->zzy(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    const-string/jumbo v0, "com.google.android.location.internal.EXTRA_ACTIVITY_RESULT_LIST"

    sget-object v1, Lcom/google/android/gms/location/ActivityRecognitionResult;->CREATOR:Lcom/google/android/gms/location/ActivityRecognitionResultCreator;

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/zzc;->zzb(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_7
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    :cond_11
    move v0, v1

    goto :goto_4

    :cond_13
    check-cast p1, Lcom/google/android/gms/location/ActivityRecognitionResult;

    iget-wide v2, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->agH:J

    iget-wide v4, p1, Lcom/google/android/gms/location/ActivityRecognitionResult;->agH:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3f

    iget-wide v2, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->agI:J

    iget-wide v4, p1, Lcom/google/android/gms/location/ActivityRecognitionResult;->agI:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3f

    iget v2, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->agJ:I

    iget v3, p1, Lcom/google/android/gms/location/ActivityRecognitionResult;->agJ:I

    if-ne v2, v3, :cond_3f

    iget-object v2, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->agG:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/location/ActivityRecognitionResult;->agG:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzab;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    iget-object v2, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->extras:Landroid/os/Bundle;

    iget-object v3, p1, Lcom/google/android/gms/location/ActivityRecognitionResult;->extras:Landroid/os/Bundle;

    invoke-static {v2, v3}, Lcom/google/android/gms/location/ActivityRecognitionResult;->zzc(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3f
    move v0, v1

    goto :goto_4
.end method

.method public getActivityConfidence(I)I
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->agG:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/DetectedActivity;

    invoke-virtual {v0}, Lcom/google/android/gms/location/DetectedActivity;->getType()I

    move-result v2

    if-ne v2, p1, :cond_6

    invoke-virtual {v0}, Lcom/google/android/gms/location/DetectedActivity;->getConfidence()I

    move-result v0

    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public getElapsedRealtimeMillis()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->agI:J

    return-wide v0
.end method

.method public getMostProbableActivity()Lcom/google/android/gms/location/DetectedActivity;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->agG:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/DetectedActivity;

    return-object v0
.end method

.method public getProbableActivities()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/DetectedActivity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->agG:Ljava/util/List;

    return-object v0
.end method

.method public getTime()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->agH:J

    return-wide v0
.end method

.method public getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .registers 5

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->agH:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->agI:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->agJ:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->agG:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->extras:Landroid/os/Bundle;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->agG:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->agH:J

    iget-wide v4, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->agI:J

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x7c

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v6, "ActivityRecognitionResult [probableActivities="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", timeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", elapsedRealtimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/ActivityRecognitionResultCreator;->zza(Lcom/google/android/gms/location/ActivityRecognitionResult;Landroid/os/Parcel;I)V

    return-void
.end method
