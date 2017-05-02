.class public Lcom/google/android/gms/location/internal/ParcelableGeofence;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Lcom/google/android/gms/location/Geofence;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/internal/zzo;


# instance fields
.field private final agT:I

.field private final agV:S

.field private final agW:D

.field private final agX:D

.field private final agY:F

.field private final agZ:I

.field private final aha:I

.field private final ain:J

.field private final mVersionCode:I

.field private final zzcaj:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/location/internal/zzo;

    invoke-direct {v0}, Lcom/google/android/gms/location/internal/zzo;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->CREATOR:Lcom/google/android/gms/location/internal/zzo;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ISDDFJII)V
    .registers 15

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/location/internal/ParcelableGeofence;->zzkz(Ljava/lang/String;)V

    invoke-static {p9}, Lcom/google/android/gms/location/internal/ParcelableGeofence;->zzf(F)V

    invoke-static {p5, p6, p7, p8}, Lcom/google/android/gms/location/internal/ParcelableGeofence;->zza(DD)V

    invoke-static {p3}, Lcom/google/android/gms/location/internal/ParcelableGeofence;->zzuq(I)I

    move-result v0

    iput p1, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->mVersionCode:I

    iput-short p4, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->agV:S

    iput-object p2, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->zzcaj:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->agW:D

    iput-wide p7, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->agX:D

    iput p9, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->agY:F

    iput-wide p10, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->ain:J

    iput v0, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->agT:I

    iput p12, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->agZ:I

    iput p13, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->aha:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ISDDFJII)V
    .registers 29

    const/4 v2, 0x1

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move/from16 v10, p8

    move-wide/from16 v11, p9

    move/from16 v13, p11

    move/from16 v14, p12

    invoke-direct/range {v1 .. v14}, Lcom/google/android/gms/location/internal/ParcelableGeofence;-><init>(ILjava/lang/String;ISDDFJII)V

    return-void
.end method

.method private static zza(DD)V
    .registers 8

    const-wide v0, 0x4056800000000000L

    cmpl-double v0, p0, v0

    if-gtz v0, :cond_12

    const-wide v0, -0x3fa9800000000000L

    cmpg-double v0, p0, v0

    if-gez v0, :cond_2e

    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2a

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "invalid latitude: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    const-wide v0, 0x4066800000000000L

    cmpl-double v0, p2, v0

    if-gtz v0, :cond_40

    const-wide v0, -0x3f99800000000000L

    cmpg-double v0, p2, v0

    if-gez v0, :cond_5c

    :cond_40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2b

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "invalid longitude: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5c
    return-void
.end method

.method private static zzf(F)V
    .registers 4

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_21

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1f

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "invalid radius: "

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

.method private static zzkz(Ljava/lang/String;)V
    .registers 5

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_27

    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "requestId is null or too long: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_21

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1d
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_21
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1d

    :cond_27
    return-void
.end method

.method private static zzuq(I)I
    .registers 4

    and-int/lit8 v0, p0, 0x7

    if-nez v0, :cond_20

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "No supported transition specified: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    return v0
.end method

.method private static zzur(I)Ljava/lang/String;
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    packed-switch p0, :pswitch_data_a

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :pswitch_5
    const-string/jumbo v0, "CIRCLE"

    goto :goto_4

    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method

.method public static zzv([B)Lcom/google/android/gms/location/internal/ParcelableGeofence;
    .registers 4

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    array-length v0, p0

    invoke-virtual {v1, p0, v2, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->CREATOR:Lcom/google/android/gms/location/internal/zzo;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/internal/zzo;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/internal/ParcelableGeofence;

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v0
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
    if-nez p1, :cond_9

    move v0, v1

    goto :goto_4

    :cond_9
    instance-of v2, p1, Lcom/google/android/gms/location/internal/ParcelableGeofence;

    if-nez v2, :cond_f

    move v0, v1

    goto :goto_4

    :cond_f
    check-cast p1, Lcom/google/android/gms/location/internal/ParcelableGeofence;

    iget v2, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->agY:F

    iget v3, p1, Lcom/google/android/gms/location/internal/ParcelableGeofence;->agY:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1b

    move v0, v1

    goto :goto_4

    :cond_1b
    iget-wide v2, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->agW:D

    iget-wide v4, p1, Lcom/google/android/gms/location/internal/ParcelableGeofence;->agW:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_25

    move v0, v1

    goto :goto_4

    :cond_25
    iget-wide v2, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->agX:D

    iget-wide v4, p1, Lcom/google/android/gms/location/internal/ParcelableGeofence;->agX:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_2f

    move v0, v1

    goto :goto_4

    :cond_2f
    iget-short v2, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->agV:S

    iget-short v3, p1, Lcom/google/android/gms/location/internal/ParcelableGeofence;->agV:S

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public getExpirationTime()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->ain:J

    return-wide v0
.end method

.method public getLatitude()D
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->agW:D

    return-wide v0
.end method

.method public getLongitude()D
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->agX:D

    return-wide v0
.end method

.method public getRadius()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->agY:F

    return v0
.end method

.method public getRequestId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->zzcaj:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .registers 7

    const/16 v4, 0x20

    iget-wide v0, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->agW:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    ushr-long v2, v0, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->agX:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->agY:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-short v1, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->agV:S

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->agT:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "Geofence[%s id:%s transitions:%d %.6f, %.6f %.0fm, resp=%ds, dwell=%dms, @%d]"

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-short v4, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->agV:S

    invoke-static {v4}, Lcom/google/android/gms/location/internal/ParcelableGeofence;->zzur(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->zzcaj:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->agT:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-wide v4, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->agW:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-wide v4, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->agX:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget v4, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->agY:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget v4, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->agZ:I

    div-int/lit16 v4, v4, 0x3e8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    iget v4, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->aha:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    iget-wide v4, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->ain:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    sget-object v0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->CREATOR:Lcom/google/android/gms/location/internal/zzo;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/internal/zzo;->zza(Lcom/google/android/gms/location/internal/ParcelableGeofence;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzbpq()S
    .registers 2

    iget-short v0, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->agV:S

    return v0
.end method

.method public zzbpr()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->agT:I

    return v0
.end method

.method public zzbps()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->agZ:I

    return v0
.end method

.method public zzbpt()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->aha:I

    return v0
.end method
