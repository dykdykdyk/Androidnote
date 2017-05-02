.class public Lcom/google/android/gms/fitness/data/zzv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/fitness/data/Goal$MetricObjective;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static zza(Lcom/google/android/gms/fitness/data/Goal$MetricObjective;Landroid/os/Parcel;I)V
    .registers 7

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzcr(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/Goal$MetricObjective;->zzbfe()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/Goal$MetricObjective;->zzbff()D

    move-result-wide v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza(Landroid/os/Parcel;ID)V

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/Goal$MetricObjective;->zzbfg()D

    move-result-wide v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza(Landroid/os/Parcel;ID)V

    const/16 v1, 0x3e8

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/Goal$MetricObjective;->getVersionCode()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzc(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzaj(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/fitness/data/zzv;->zzja(Landroid/os/Parcel;)Lcom/google/android/gms/fitness/data/Goal$MetricObjective;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/fitness/data/zzv;->zzok(I)[Lcom/google/android/gms/fitness/data/Goal$MetricObjective;

    move-result-object v0

    return-object v0
.end method

.method public zzja(Landroid/os/Parcel;)Lcom/google/android/gms/fitness/data/Goal$MetricObjective;
    .registers 11

    const-wide/16 v6, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzcq(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-wide v4, v6

    :goto_9
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-ge v1, v0, :cond_32

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzcp(Landroid/os/Parcel;)I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzgv(I)I

    move-result v8

    sparse-switch v8, :sswitch_data_5a

    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzb(Landroid/os/Parcel;I)V

    goto :goto_9

    :sswitch_1e
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzq(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    :sswitch_23
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzn(Landroid/os/Parcel;I)D

    move-result-wide v4

    goto :goto_9

    :sswitch_28
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzn(Landroid/os/Parcel;I)D

    move-result-wide v6

    goto :goto_9

    :sswitch_2d
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzg(Landroid/os/Parcel;I)I

    move-result v2

    goto :goto_9

    :cond_32
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-eq v1, v0, :cond_54

    new-instance v1, Lcom/google/android/gms/common/internal/safeparcel/zza$zza;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x25

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Overread allowed size end="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/common/internal/safeparcel/zza$zza;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v1

    :cond_54
    new-instance v1, Lcom/google/android/gms/fitness/data/Goal$MetricObjective;

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/fitness/data/Goal$MetricObjective;-><init>(ILjava/lang/String;DD)V

    return-object v1

    :sswitch_data_5a
    .sparse-switch
        0x1 -> :sswitch_1e
        0x2 -> :sswitch_23
        0x3 -> :sswitch_28
        0x3e8 -> :sswitch_2d
    .end sparse-switch
.end method

.method public zzok(I)[Lcom/google/android/gms/fitness/data/Goal$MetricObjective;
    .registers 3

    new-array v0, p1, [Lcom/google/android/gms/fitness/data/Goal$MetricObjective;

    return-object v0
.end method
