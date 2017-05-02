.class public Lcom/google/android/gms/fitness/data/Goal$Recurrence;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fitness/data/Goal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Recurrence"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/data/Goal$Recurrence;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final Qt:I

.field private final count:I

.field private final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/fitness/data/zzz;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/zzz;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/Goal$Recurrence;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(III)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/data/Goal$Recurrence;->versionCode:I

    iput p2, p0, Lcom/google/android/gms/fitness/data/Goal$Recurrence;->count:I

    if-lez p3, :cond_13

    const/4 v0, 0x3

    if-gt p3, v0, :cond_13

    const/4 v0, 0x1

    :goto_d
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzbr(Z)V

    iput p3, p0, Lcom/google/android/gms/fitness/data/Goal$Recurrence;->Qt:I

    return-void

    :cond_13
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private zza(Lcom/google/android/gms/fitness/data/Goal$Recurrence;)Z
    .registers 4

    iget v0, p0, Lcom/google/android/gms/fitness/data/Goal$Recurrence;->count:I

    iget v1, p1, Lcom/google/android/gms/fitness/data/Goal$Recurrence;->count:I

    if-ne v0, v1, :cond_e

    iget v0, p0, Lcom/google/android/gms/fitness/data/Goal$Recurrence;->Qt:I

    iget v1, p1, Lcom/google/android/gms/fitness/data/Goal$Recurrence;->Qt:I

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static zzoh(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_18

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid unit value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_c
    const-string/jumbo v0, "day"

    :goto_f
    return-object v0

    :pswitch_10
    const-string/jumbo v0, "week"

    goto :goto_f

    :pswitch_14
    const-string/jumbo v0, "month"

    goto :goto_f

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_c
        :pswitch_10
        :pswitch_14
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-eq p0, p1, :cond_e

    instance-of v0, p1, Lcom/google/android/gms/fitness/data/Goal$Recurrence;

    if-eqz v0, :cond_10

    check-cast p1, Lcom/google/android/gms/fitness/data/Goal$Recurrence;

    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/data/Goal$Recurrence;->zza(Lcom/google/android/gms/fitness/data/Goal$Recurrence;)Z

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

.method public getCount()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/fitness/data/Goal$Recurrence;->count:I

    return v0
.end method

.method getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/fitness/data/Goal$Recurrence;->versionCode:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/fitness/data/Goal$Recurrence;->count:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/fitness/data/Goal$Recurrence;->Qt:I

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

    const-string/jumbo v1, "count"

    iget v2, p0, Lcom/google/android/gms/fitness/data/Goal$Recurrence;->count:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzab$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    const-string/jumbo v1, "unit"

    iget v2, p0, Lcom/google/android/gms/fitness/data/Goal$Recurrence;->Qt:I

    invoke-static {v2}, Lcom/google/android/gms/fitness/data/Goal$Recurrence;->zzoh(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzab$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzab$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/data/zzz;->zza(Lcom/google/android/gms/fitness/data/Goal$Recurrence;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzbfh()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/fitness/data/Goal$Recurrence;->Qt:I

    return v0
.end method
