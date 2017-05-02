.class public Lcom/google/android/gms/fitness/data/zzad;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/fitness/data/Value;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static zza(Lcom/google/android/gms/fitness/data/Value;Landroid/os/Parcel;I)V
    .registers 7

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzcr(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/Value;->getFormat()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzc(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/Value;->isSet()Z

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/Value;->zzbfi()F

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza(Landroid/os/Parcel;IF)V

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/Value;->zzbfn()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/Value;->zzbfo()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/Value;->zzbfp()[I

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza(Landroid/os/Parcel;I[IZ)V

    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/Value;->zzbfq()[F

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza(Landroid/os/Parcel;I[FZ)V

    const/16 v1, 0x3e8

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/Value;->getVersionCode()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzc(Landroid/os/Parcel;II)V

    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/Value;->zzbfr()[B

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza(Landroid/os/Parcel;I[BZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzaj(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/fitness/data/zzad;->zzji(Landroid/os/Parcel;)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/fitness/data/zzad;->zzot(I)[Lcom/google/android/gms/fitness/data/Value;

    move-result-object v0

    return-object v0
.end method

.method public zzji(Landroid/os/Parcel;)Lcom/google/android/gms/fitness/data/Value;
    .registers 14

    const/4 v3, 0x0

    const/4 v9, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzcq(Landroid/os/Parcel;)I

    move-result v0

    const/4 v4, 0x0

    move-object v8, v9

    move-object v7, v9

    move-object v6, v9

    move-object v5, v9

    move v2, v3

    move v1, v3

    :goto_d
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v10

    if-ge v10, v0, :cond_4f

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzcp(Landroid/os/Parcel;)I

    move-result v10

    invoke-static {v10}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzgv(I)I

    move-result v11

    sparse-switch v11, :sswitch_data_78

    invoke-static {p1, v10}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzb(Landroid/os/Parcel;I)V

    goto :goto_d

    :sswitch_22
    invoke-static {p1, v10}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzg(Landroid/os/Parcel;I)I

    move-result v2

    goto :goto_d

    :sswitch_27
    invoke-static {p1, v10}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzc(Landroid/os/Parcel;I)Z

    move-result v3

    goto :goto_d

    :sswitch_2c
    invoke-static {p1, v10}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzl(Landroid/os/Parcel;I)F

    move-result v4

    goto :goto_d

    :sswitch_31
    invoke-static {p1, v10}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzq(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_d

    :sswitch_36
    invoke-static {p1, v10}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzs(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v6

    goto :goto_d

    :sswitch_3b
    invoke-static {p1, v10}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzw(Landroid/os/Parcel;I)[I

    move-result-object v7

    goto :goto_d

    :sswitch_40
    invoke-static {p1, v10}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzz(Landroid/os/Parcel;I)[F

    move-result-object v8

    goto :goto_d

    :sswitch_45
    invoke-static {p1, v10}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzg(Landroid/os/Parcel;I)I

    move-result v1

    goto :goto_d

    :sswitch_4a
    invoke-static {p1, v10}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzt(Landroid/os/Parcel;I)[B

    move-result-object v9

    goto :goto_d

    :cond_4f
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v10

    if-eq v10, v0, :cond_71

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

    :cond_71
    new-instance v0, Lcom/google/android/gms/fitness/data/Value;

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/fitness/data/Value;-><init>(IIZFLjava/lang/String;Landroid/os/Bundle;[I[F[B)V

    return-object v0

    nop

    :sswitch_data_78
    .sparse-switch
        0x1 -> :sswitch_22
        0x2 -> :sswitch_27
        0x3 -> :sswitch_2c
        0x4 -> :sswitch_31
        0x5 -> :sswitch_36
        0x6 -> :sswitch_3b
        0x7 -> :sswitch_40
        0x8 -> :sswitch_4a
        0x3e8 -> :sswitch_45
    .end sparse-switch
.end method

.method public zzot(I)[Lcom/google/android/gms/fitness/data/Value;
    .registers 3

    new-array v0, p1, [Lcom/google/android/gms/fitness/data/Value;

    return-object v0
.end method
