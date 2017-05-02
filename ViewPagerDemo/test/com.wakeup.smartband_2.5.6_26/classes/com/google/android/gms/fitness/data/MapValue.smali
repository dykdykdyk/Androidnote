.class public Lcom/google/android/gms/fitness/data/MapValue;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/data/MapValue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final Rr:I

.field private final Rs:F

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/fitness/data/zzu;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/zzu;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/MapValue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IF)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/fitness/data/MapValue;-><init>(IIF)V

    return-void
.end method

.method constructor <init>(IIF)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/data/MapValue;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/fitness/data/MapValue;->Rr:I

    iput p3, p0, Lcom/google/android/gms/fitness/data/MapValue;->Rs:F

    return-void
.end method

.method private zza(Lcom/google/android/gms/fitness/data/MapValue;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/fitness/data/MapValue;->Rr:I

    iget v3, p1, Lcom/google/android/gms/fitness/data/MapValue;->Rr:I

    if-ne v2, v3, :cond_26

    iget v2, p0, Lcom/google/android/gms/fitness/data/MapValue;->Rr:I

    packed-switch v2, :pswitch_data_28

    iget v2, p0, Lcom/google/android/gms/fitness/data/MapValue;->Rs:F

    iget v3, p1, Lcom/google/android/gms/fitness/data/MapValue;->Rs:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_24

    :cond_15
    :goto_15
    return v0

    :pswitch_16
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/MapValue;->asFloat()F

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/MapValue;->asFloat()F

    move-result v3

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_15

    move v0, v1

    goto :goto_15

    :cond_24
    move v0, v1

    goto :goto_15

    :cond_26
    move v0, v1

    goto :goto_15

    :pswitch_data_28
    .packed-switch 0x2
        :pswitch_16
    .end packed-switch
.end method

.method public static zzd(F)Lcom/google/android/gms/fitness/data/MapValue;
    .registers 3

    new-instance v0, Lcom/google/android/gms/fitness/data/MapValue;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/fitness/data/MapValue;-><init>(IF)V

    return-object v0
.end method


# virtual methods
.method public asFloat()F
    .registers 3

    iget v0, p0, Lcom/google/android/gms/fitness/data/MapValue;->Rr:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    :goto_6
    const-string/jumbo v1, "Value is not in float format"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    iget v0, p0, Lcom/google/android/gms/fitness/data/MapValue;->Rs:F

    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-eq p0, p1, :cond_e

    instance-of v0, p1, Lcom/google/android/gms/fitness/data/MapValue;

    if-eqz v0, :cond_10

    check-cast p1, Lcom/google/android/gms/fitness/data/MapValue;

    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/data/MapValue;->zza(Lcom/google/android/gms/fitness/data/MapValue;)Z

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

.method getFormat()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/fitness/data/MapValue;->Rr:I

    return v0
.end method

.method getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/fitness/data/MapValue;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/fitness/data/MapValue;->Rs:F

    float-to-int v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget v0, p0, Lcom/google/android/gms/fitness/data/MapValue;->Rr:I

    packed-switch v0, :pswitch_data_12

    const-string/jumbo v0, "unknown"

    :goto_8
    return-object v0

    :pswitch_9
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/MapValue;->asFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :pswitch_data_12
    .packed-switch 0x2
        :pswitch_9
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/data/zzu;->zza(Lcom/google/android/gms/fitness/data/MapValue;Landroid/os/Parcel;I)V

    return-void
.end method

.method zzbfi()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/fitness/data/MapValue;->Rs:F

    return v0
.end method
