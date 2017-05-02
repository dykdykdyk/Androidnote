.class public final Lcom/google/android/gms/location/LocationRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/LocationRequestCreator;

.field public static final PRIORITY_BALANCED_POWER_ACCURACY:I = 0x66

.field public static final PRIORITY_HIGH_ACCURACY:I = 0x64

.field public static final PRIORITY_LOW_POWER:I = 0x68

.field public static final PRIORITY_NO_POWER:I = 0x69


# instance fields
.field TN:Z

.field agU:J

.field ahp:J

.field ahq:J

.field ahr:I

.field ahs:F

.field aht:J

.field mPriority:I

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/location/LocationRequestCreator;

    invoke-direct {v0}, Lcom/google/android/gms/location/LocationRequestCreator;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/LocationRequest;->CREATOR:Lcom/google/android/gms/location/LocationRequestCreator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/location/LocationRequest;->mVersionCode:I

    const/16 v0, 0x66

    iput v0, p0, Lcom/google/android/gms/location/LocationRequest;->mPriority:I

    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->ahp:J

    const-wide/32 v0, 0x927c0

    iput-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->ahq:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/location/LocationRequest;->TN:Z

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->agU:J

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/gms/location/LocationRequest;->ahr:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/location/LocationRequest;->ahs:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->aht:J

    return-void
.end method

.method constructor <init>(IIJJZJIFJ)V
    .registers 14

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/LocationRequest;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/location/LocationRequest;->mPriority:I

    iput-wide p3, p0, Lcom/google/android/gms/location/LocationRequest;->ahp:J

    iput-wide p5, p0, Lcom/google/android/gms/location/LocationRequest;->ahq:J

    iput-boolean p7, p0, Lcom/google/android/gms/location/LocationRequest;->TN:Z

    iput-wide p8, p0, Lcom/google/android/gms/location/LocationRequest;->agU:J

    iput p10, p0, Lcom/google/android/gms/location/LocationRequest;->ahr:I

    iput p11, p0, Lcom/google/android/gms/location/LocationRequest;->ahs:F

    iput-wide p12, p0, Lcom/google/android/gms/location/LocationRequest;->aht:J

    return-void
.end method

.method public static create()Lcom/google/android/gms/location/LocationRequest;
    .registers 1

    new-instance v0, Lcom/google/android/gms/location/LocationRequest;

    invoke-direct {v0}, Lcom/google/android/gms/location/LocationRequest;-><init>()V

    return-object v0
.end method

.method private static zzau(J)V
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_22

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x26

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "invalid interval: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    return-void
.end method

.method private static zze(F)V
    .registers 4

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_21

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x25

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "invalid displacement: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    return-void
.end method

.method private static zzud(I)V
    .registers 4

    packed-switch p0, :pswitch_data_20

    :pswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1c

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "invalid quality: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1f
    return-void

    :pswitch_data_20
    .packed-switch 0x64
        :pswitch_1f
        :pswitch_3
        :pswitch_1f
        :pswitch_3
        :pswitch_1f
        :pswitch_1f
    .end packed-switch
.end method

.method public static zzue(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_18

    :pswitch_3
    const-string/jumbo v0, "???"

    :goto_6
    return-object v0

    :pswitch_7
    const-string/jumbo v0, "PRIORITY_HIGH_ACCURACY"

    goto :goto_6

    :pswitch_b
    const-string/jumbo v0, "PRIORITY_BALANCED_POWER_ACCURACY"

    goto :goto_6

    :pswitch_f
    const-string/jumbo v0, "PRIORITY_LOW_POWER"

    goto :goto_6

    :pswitch_13
    const-string/jumbo v0, "PRIORITY_NO_POWER"

    goto :goto_6

    nop

    :pswitch_data_18
    .packed-switch 0x64
        :pswitch_7
        :pswitch_3
        :pswitch_b
        :pswitch_3
        :pswitch_f
        :pswitch_13
    .end packed-switch
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
    instance-of v2, p1, Lcom/google/android/gms/location/LocationRequest;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/google/android/gms/location/LocationRequest;

    iget v2, p0, Lcom/google/android/gms/location/LocationRequest;->mPriority:I

    iget v3, p1, Lcom/google/android/gms/location/LocationRequest;->mPriority:I

    if-ne v2, v3, :cond_3f

    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->ahp:J

    iget-wide v4, p1, Lcom/google/android/gms/location/LocationRequest;->ahp:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3f

    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->ahq:J

    iget-wide v4, p1, Lcom/google/android/gms/location/LocationRequest;->ahq:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3f

    iget-boolean v2, p0, Lcom/google/android/gms/location/LocationRequest;->TN:Z

    iget-boolean v3, p1, Lcom/google/android/gms/location/LocationRequest;->TN:Z

    if-ne v2, v3, :cond_3f

    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->agU:J

    iget-wide v4, p1, Lcom/google/android/gms/location/LocationRequest;->agU:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3f

    iget v2, p0, Lcom/google/android/gms/location/LocationRequest;->ahr:I

    iget v3, p1, Lcom/google/android/gms/location/LocationRequest;->ahr:I

    if-ne v2, v3, :cond_3f

    iget v2, p0, Lcom/google/android/gms/location/LocationRequest;->ahs:F

    iget v3, p1, Lcom/google/android/gms/location/LocationRequest;->ahs:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_4

    :cond_3f
    move v0, v1

    goto :goto_4
.end method

.method public getExpirationTime()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->agU:J

    return-wide v0
.end method

.method public getFastestInterval()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->ahq:J

    return-wide v0
.end method

.method public getInterval()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->ahp:J

    return-wide v0
.end method

.method public getMaxWaitTime()J
    .registers 5

    iget-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->aht:J

    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->ahp:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_a

    iget-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->ahp:J

    :cond_a
    return-wide v0
.end method

.method public getNumUpdates()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/location/LocationRequest;->ahr:I

    return v0
.end method

.method public getPriority()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/location/LocationRequest;->mPriority:I

    return v0
.end method

.method public getSmallestDisplacement()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/location/LocationRequest;->ahs:F

    return v0
.end method

.method getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/location/LocationRequest;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .registers 5

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/location/LocationRequest;->mPriority:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->ahp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->ahq:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/android/gms/location/LocationRequest;->TN:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->agU:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/gms/location/LocationRequest;->ahr:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget v2, p0, Lcom/google/android/gms/location/LocationRequest;->ahs:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setExpirationDuration(J)Lcom/google/android/gms/location/LocationRequest;
    .registers 12

    const-wide v6, 0x7fffffffffffffffL

    const-wide/16 v4, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v2, v6, v0

    cmp-long v2, p1, v2

    if-lez v2, :cond_1c

    iput-wide v6, p0, Lcom/google/android/gms/location/LocationRequest;->agU:J

    :goto_13
    iget-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->agU:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_1b

    iput-wide v4, p0, Lcom/google/android/gms/location/LocationRequest;->agU:J

    :cond_1b
    return-object p0

    :cond_1c
    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->agU:J

    goto :goto_13
.end method

.method public setExpirationTime(J)Lcom/google/android/gms/location/LocationRequest;
    .registers 8

    const-wide/16 v2, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/location/LocationRequest;->agU:J

    iget-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->agU:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_c

    iput-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->agU:J

    :cond_c
    return-object p0
.end method

.method public setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;
    .registers 4

    invoke-static {p1, p2}, Lcom/google/android/gms/location/LocationRequest;->zzau(J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/location/LocationRequest;->TN:Z

    iput-wide p1, p0, Lcom/google/android/gms/location/LocationRequest;->ahq:J

    return-object p0
.end method

.method public setInterval(J)Lcom/google/android/gms/location/LocationRequest;
    .registers 8

    invoke-static {p1, p2}, Lcom/google/android/gms/location/LocationRequest;->zzau(J)V

    iput-wide p1, p0, Lcom/google/android/gms/location/LocationRequest;->ahp:J

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationRequest;->TN:Z

    if-nez v0, :cond_12

    iget-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->ahp:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x4018000000000000L

    div-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->ahq:J

    :cond_12
    return-object p0
.end method

.method public setMaxWaitTime(J)Lcom/google/android/gms/location/LocationRequest;
    .registers 4

    invoke-static {p1, p2}, Lcom/google/android/gms/location/LocationRequest;->zzau(J)V

    iput-wide p1, p0, Lcom/google/android/gms/location/LocationRequest;->aht:J

    return-object p0
.end method

.method public setNumUpdates(I)Lcom/google/android/gms/location/LocationRequest;
    .registers 5

    if-gtz p1, :cond_1e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1f

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "invalid numUpdates: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    iput p1, p0, Lcom/google/android/gms/location/LocationRequest;->ahr:I

    return-object p0
.end method

.method public setPriority(I)Lcom/google/android/gms/location/LocationRequest;
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/location/LocationRequest;->zzud(I)V

    iput p1, p0, Lcom/google/android/gms/location/LocationRequest;->mPriority:I

    return-object p0
.end method

.method public setSmallestDisplacement(F)Lcom/google/android/gms/location/LocationRequest;
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/location/LocationRequest;->zze(F)V

    iput p1, p0, Lcom/google/android/gms/location/LocationRequest;->ahs:F

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Request["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/location/LocationRequest;->mPriority:I

    invoke-static {v2}, Lcom/google/android/gms/location/LocationRequest;->zzue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/location/LocationRequest;->mPriority:I

    const/16 v2, 0x69

    if-eq v1, v2, :cond_2d

    const-string/jumbo v1, " requested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->ahp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2d
    const-string/jumbo v1, " fastest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->ahq:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->aht:J

    iget-wide v4, p0, Lcom/google/android/gms/location/LocationRequest;->ahp:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_59

    const-string/jumbo v1, " maxWait="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->aht:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_59
    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->agU:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v1, v2, v4

    if-eqz v1, :cond_7b

    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->agU:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-string/jumbo v1, " expireIn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7b
    iget v1, p0, Lcom/google/android/gms/location/LocationRequest;->ahr:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_8e

    const-string/jumbo v1, " num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/location/LocationRequest;->ahr:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_8e
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/LocationRequestCreator;->zza(Lcom/google/android/gms/location/LocationRequest;Landroid/os/Parcel;I)V

    return-void
.end method
