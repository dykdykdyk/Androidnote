.class public Lcom/google/android/gms/fitness/data/Goal$FrequencyObjective;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fitness/data/Goal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrequencyObjective"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/data/Goal$FrequencyObjective;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final frequency:I

.field private final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/fitness/data/zzp;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/zzp;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/Goal$FrequencyObjective;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/data/Goal$FrequencyObjective;->versionCode:I

    iput p2, p0, Lcom/google/android/gms/fitness/data/Goal$FrequencyObjective;->frequency:I

    return-void
.end method

.method private zza(Lcom/google/android/gms/fitness/data/Goal$FrequencyObjective;)Z
    .registers 4

    iget v0, p0, Lcom/google/android/gms/fitness/data/Goal$FrequencyObjective;->frequency:I

    iget v1, p1, Lcom/google/android/gms/fitness/data/Goal$FrequencyObjective;->frequency:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-eq p0, p1, :cond_e

    instance-of v0, p1, Lcom/google/android/gms/fitness/data/Goal$FrequencyObjective;

    if-eqz v0, :cond_10

    check-cast p1, Lcom/google/android/gms/fitness/data/Goal$FrequencyObjective;

    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/data/Goal$FrequencyObjective;->zza(Lcom/google/android/gms/fitness/data/Goal$FrequencyObjective;)Z

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

.method public getFrequency()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/fitness/data/Goal$FrequencyObjective;->frequency:I

    return v0
.end method

.method getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/fitness/data/Goal$FrequencyObjective;->versionCode:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/fitness/data/Goal$FrequencyObjective;->frequency:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzab;->zzx(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    const-string/jumbo v1, "frequency"

    iget v2, p0, Lcom/google/android/gms/fitness/data/Goal$FrequencyObjective;->frequency:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzab$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzab$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/data/zzp;->zza(Lcom/google/android/gms/fitness/data/Goal$FrequencyObjective;Landroid/os/Parcel;I)V

    return-void
.end method
