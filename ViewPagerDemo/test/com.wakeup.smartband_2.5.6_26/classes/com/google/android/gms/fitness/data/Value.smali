.class public final Lcom/google/android/gms/fitness/data/Value;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/data/Value;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private Dr:Ljava/lang/String;

.field private RJ:Z

.field private RK:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/fitness/data/MapValue;",
            ">;"
        }
    .end annotation
.end field

.field private RL:[I

.field private RM:[F

.field private RN:[B

.field private final format:I

.field private value:F

.field private final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/fitness/data/zzad;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/zzad;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/Value;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 12

    const/4 v5, 0x0

    const/4 v1, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p1

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/fitness/data/Value;-><init>(IIZFLjava/lang/String;Landroid/os/Bundle;[I[F[B)V

    return-void
.end method

.method constructor <init>(IIZFLjava/lang/String;Landroid/os/Bundle;[I[F[B)V
    .registers 11

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/data/Value;->versionCode:I

    iput p2, p0, Lcom/google/android/gms/fitness/data/Value;->format:I

    iput-boolean p3, p0, Lcom/google/android/gms/fitness/data/Value;->RJ:Z

    iput p4, p0, Lcom/google/android/gms/fitness/data/Value;->value:F

    iput-object p5, p0, Lcom/google/android/gms/fitness/data/Value;->Dr:Ljava/lang/String;

    invoke-static {p6}, Lcom/google/android/gms/fitness/data/Value;->zzaa(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->RK:Ljava/util/Map;

    iput-object p7, p0, Lcom/google/android/gms/fitness/data/Value;->RL:[I

    iput-object p8, p0, Lcom/google/android/gms/fitness/data/Value;->RM:[F

    iput-object p9, p0, Lcom/google/android/gms/fitness/data/Value;->RN:[B

    return-void
.end method

.method private zza(Lcom/google/android/gms/fitness/data/Value;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/fitness/data/Value;->format:I

    iget v3, p1, Lcom/google/android/gms/fitness/data/Value;->format:I

    if-ne v2, v3, :cond_61

    iget-boolean v2, p0, Lcom/google/android/gms/fitness/data/Value;->RJ:Z

    iget-boolean v3, p1, Lcom/google/android/gms/fitness/data/Value;->RJ:Z

    if-ne v2, v3, :cond_61

    iget v2, p0, Lcom/google/android/gms/fitness/data/Value;->format:I

    packed-switch v2, :pswitch_data_64

    iget v2, p0, Lcom/google/android/gms/fitness/data/Value;->value:F

    iget v3, p1, Lcom/google/android/gms/fitness/data/Value;->value:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_5f

    :cond_1b
    :goto_1b
    return v0

    :pswitch_1c
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/Value;->asInt()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Value;->asInt()I

    move-result v3

    if-eq v2, v3, :cond_1b

    move v0, v1

    goto :goto_1b

    :pswitch_28
    iget v2, p0, Lcom/google/android/gms/fitness/data/Value;->value:F

    iget v3, p1, Lcom/google/android/gms/fitness/data/Value;->value:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1b

    move v0, v1

    goto :goto_1b

    :pswitch_32
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->Dr:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/fitness/data/Value;->Dr:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1b

    :pswitch_3b
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->RK:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/android/gms/fitness/data/Value;->RK:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1b

    :pswitch_44
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->RL:[I

    iget-object v1, p1, Lcom/google/android/gms/fitness/data/Value;->RL:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    goto :goto_1b

    :pswitch_4d
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->RM:[F

    iget-object v1, p1, Lcom/google/android/gms/fitness/data/Value;->RM:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    goto :goto_1b

    :pswitch_56
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->RN:[B

    iget-object v1, p1, Lcom/google/android/gms/fitness/data/Value;->RN:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_1b

    :cond_5f
    move v0, v1

    goto :goto_1b

    :cond_61
    move v0, v1

    goto :goto_1b

    nop

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_28
        :pswitch_32
        :pswitch_3b
        :pswitch_44
        :pswitch_4d
        :pswitch_56
    .end packed-switch
.end method

.method private static zzaa(Landroid/os/Bundle;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/fitness/data/MapValue;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-class v0, Lcom/google/android/gms/fitness/data/MapValue;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    new-instance v2, Landroid/support/v4/util/ArrayMap;

    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v0

    invoke-direct {v2, v0}, Landroid/support/v4/util/ArrayMap;-><init>(I)V

    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/fitness/data/MapValue;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    :cond_34
    move-object v0, v2

    goto :goto_3
.end method


# virtual methods
.method public asActivity()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/Value;->asInt()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/fitness/FitnessActivities;->getName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public asFloat()F
    .registers 3

    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->format:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    :goto_6
    const-string/jumbo v1, "Value is not in float format"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->value:F

    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public asInt()I
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/fitness/data/Value;->format:I

    if-ne v1, v0, :cond_12

    :goto_5
    const-string/jumbo v1, "Value is not in int format"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->value:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public asString()Ljava/lang/String;
    .registers 3

    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->format:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    :goto_6
    const-string/jumbo v1, "Value is not in string format"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->Dr:Ljava/lang/String;

    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public clearKey(Ljava/lang/String;)V
    .registers 4

    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->format:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_16

    const/4 v0, 0x1

    :goto_6
    const-string/jumbo v1, "Attempting to set a key\'s value to a field that is not in FLOAT_MAP format.  Please check the data type definition and use the right format."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->RK:Ljava/util/Map;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->RK:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    return-void

    :cond_16
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-eq p0, p1, :cond_e

    instance-of v0, p1, Lcom/google/android/gms/fitness/data/Value;

    if-eqz v0, :cond_10

    check-cast p1, Lcom/google/android/gms/fitness/data/Value;

    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/data/Value;->zza(Lcom/google/android/gms/fitness/data/Value;)Z

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

.method public getFormat()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->format:I

    return v0
.end method

.method public getKeyValue(Ljava/lang/String;)Ljava/lang/Float;
    .registers 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->format:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_29

    const/4 v0, 0x1

    :goto_6
    const-string/jumbo v1, "Value is not in float map format"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->RK:Ljava/util/Map;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->RK:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->RK:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/MapValue;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/MapValue;->asFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :goto_28
    return-object v0

    :cond_29
    const/4 v0, 0x0

    goto :goto_6

    :cond_2b
    const/4 v0, 0x0

    goto :goto_28
.end method

.method getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->versionCode:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/fitness/data/Value;->value:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Value;->Dr:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Value;->RK:Ljava/util/Map;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Value;->RL:[I

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Value;->RM:[F

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Value;->RN:[B

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isSet()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/data/Value;->RJ:Z

    return v0
.end method

.method public setActivity(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/fitness/FitnessActivities;->zzje(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/fitness/data/Value;->setInt(I)V

    return-void
.end method

.method public setFloat(F)V
    .registers 5

    const/4 v1, 0x1

    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->format:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_12

    move v0, v1

    :goto_7
    const-string/jumbo v2, "Attempting to set an float value to a field that is not in FLOAT format.  Please check the data type definition and use the right format."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    iput-boolean v1, p0, Lcom/google/android/gms/fitness/data/Value;->RJ:Z

    iput p1, p0, Lcom/google/android/gms/fitness/data/Value;->value:F

    return-void

    :cond_12
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setInt(I)V
    .registers 5

    const/4 v1, 0x1

    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->format:I

    if-ne v0, v1, :cond_15

    move v0, v1

    :goto_6
    const-string/jumbo v2, "Attempting to set an int value to a field that is not in INT32 format.  Please check the data type definition and use the right format."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    iput-boolean v1, p0, Lcom/google/android/gms/fitness/data/Value;->RJ:Z

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/fitness/data/Value;->value:F

    return-void

    :cond_15
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public setKeyValue(Ljava/lang/String;F)V
    .registers 6

    const/4 v1, 0x1

    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->format:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_24

    move v0, v1

    :goto_7
    const-string/jumbo v2, "Attempting to set a key\'s value to a field that is not in FLOAT_MAP format.  Please check the data type definition and use the right format."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    iput-boolean v1, p0, Lcom/google/android/gms/fitness/data/Value;->RJ:Z

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->RK:Ljava/util/Map;

    if-nez v0, :cond_1a

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->RK:Ljava/util/Map;

    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->RK:Ljava/util/Map;

    invoke-static {p2}, Lcom/google/android/gms/fitness/data/MapValue;->zzd(F)Lcom/google/android/gms/fitness/data/MapValue;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_24
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setString(Ljava/lang/String;)V
    .registers 5

    const/4 v1, 0x1

    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->format:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_12

    move v0, v1

    :goto_7
    const-string/jumbo v2, "Attempting to set a string value to a field that is not in STRING format.  Please check the data type definition and use the right format."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    iput-boolean v1, p0, Lcom/google/android/gms/fitness/data/Value;->RJ:Z

    iput-object p1, p0, Lcom/google/android/gms/fitness/data/Value;->Dr:Ljava/lang/String;

    return-void

    :cond_12
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/data/Value;->RJ:Z

    if-nez v0, :cond_9

    const-string/jumbo v0, "unset"

    :goto_8
    return-object v0

    :cond_9
    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->format:I

    packed-switch v0, :pswitch_data_4a

    const-string/jumbo v0, "unknown"

    goto :goto_8

    :pswitch_12
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/Value;->asInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :pswitch_1b
    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->value:F

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :pswitch_22
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->Dr:Ljava/lang/String;

    goto :goto_8

    :pswitch_25
    new-instance v0, Ljava/util/TreeMap;

    iget-object v1, p0, Lcom/google/android/gms/fitness/data/Value;->RK:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Ljava/util/TreeMap;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :pswitch_31
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->RL:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :pswitch_38
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->RM:[F

    invoke-static {v0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :pswitch_3f
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->RN:[B

    iget-object v1, p0, Lcom/google/android/gms/fitness/data/Value;->RN:[B

    array-length v1, v1

    invoke-static {v0, v2, v1, v2}, Lcom/google/android/gms/common/util/zzm;->zza([BIIZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_12
        :pswitch_1b
        :pswitch_22
        :pswitch_25
        :pswitch_31
        :pswitch_38
        :pswitch_3f
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/data/zzad;->zza(Lcom/google/android/gms/fitness/data/Value;Landroid/os/Parcel;I)V

    return-void
.end method

.method zzbfi()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->value:F

    return v0
.end method

.method zzbfn()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->Dr:Ljava/lang/String;

    return-object v0
.end method

.method zzbfo()Landroid/os/Bundle;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->RK:Ljava/util/Map;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    new-instance v2, Landroid/os/Bundle;

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->RK:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v2, v0}, Landroid/os/Bundle;-><init>(I)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->RK:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_1b

    :cond_37
    move-object v0, v2

    goto :goto_5
.end method

.method zzbfp()[I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->RL:[I

    return-object v0
.end method

.method zzbfq()[F
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->RM:[F

    return-object v0
.end method

.method zzbfr()[B
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->RN:[B

    return-object v0
.end method
