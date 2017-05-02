.class public Lcom/google/android/gms/phenotype/zzb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/phenotype/Flag;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static zza(Lcom/google/android/gms/phenotype/Flag;Landroid/os/Parcel;I)V
    .registers 8

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzcr(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/phenotype/Flag;->mVersionCode:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzc(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/phenotype/Flag;->name:Ljava/lang/String;

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/phenotype/Flag;->axp:J

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/android/gms/phenotype/Flag;->afy:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/android/gms/phenotype/Flag;->afA:D

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza(Landroid/os/Parcel;ID)V

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/phenotype/Flag;->Dr:Ljava/lang/String;

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/phenotype/Flag;->axq:[B

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza(Landroid/os/Parcel;I[BZ)V

    const/16 v1, 0x8

    iget v2, p0, Lcom/google/android/gms/phenotype/Flag;->axr:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzc(Landroid/os/Parcel;II)V

    const/16 v1, 0x9

    iget v2, p0, Lcom/google/android/gms/phenotype/Flag;->axs:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzc(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzaj(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/phenotype/zzb;->zzrr(Landroid/os/Parcel;)Lcom/google/android/gms/phenotype/Flag;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/phenotype/zzb;->zzzj(I)[Lcom/google/android/gms/phenotype/Flag;

    move-result-object v0

    return-object v0
.end method

.method public zzrr(Landroid/os/Parcel;)Lcom/google/android/gms/phenotype/Flag;
    .registers 16

    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzcq(Landroid/os/Parcel;)I

    move-result v0

    const-wide/16 v3, 0x0

    const-wide/16 v6, 0x0

    move v10, v11

    move-object v8, v9

    move v5, v11

    move-object v2, v9

    move v1, v11

    :goto_f
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v12

    if-ge v12, v0, :cond_51

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzcp(Landroid/os/Parcel;)I

    move-result v12

    invoke-static {v12}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzgv(I)I

    move-result v13

    packed-switch v13, :pswitch_data_7a

    invoke-static {p1, v12}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzb(Landroid/os/Parcel;I)V

    goto :goto_f

    :pswitch_24
    invoke-static {p1, v12}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzg(Landroid/os/Parcel;I)I

    move-result v1

    goto :goto_f

    :pswitch_29
    invoke-static {p1, v12}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzq(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_f

    :pswitch_2e
    invoke-static {p1, v12}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzi(Landroid/os/Parcel;I)J

    move-result-wide v3

    goto :goto_f

    :pswitch_33
    invoke-static {p1, v12}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzc(Landroid/os/Parcel;I)Z

    move-result v5

    goto :goto_f

    :pswitch_38
    invoke-static {p1, v12}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzn(Landroid/os/Parcel;I)D

    move-result-wide v6

    goto :goto_f

    :pswitch_3d
    invoke-static {p1, v12}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzq(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_f

    :pswitch_42
    invoke-static {p1, v12}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzt(Landroid/os/Parcel;I)[B

    move-result-object v9

    goto :goto_f

    :pswitch_47
    invoke-static {p1, v12}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzg(Landroid/os/Parcel;I)I

    move-result v10

    goto :goto_f

    :pswitch_4c
    invoke-static {p1, v12}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzg(Landroid/os/Parcel;I)I

    move-result v11

    goto :goto_f

    :cond_51
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v12

    if-eq v12, v0, :cond_73

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

    :cond_73
    new-instance v0, Lcom/google/android/gms/phenotype/Flag;

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/phenotype/Flag;-><init>(ILjava/lang/String;JZDLjava/lang/String;[BII)V

    return-object v0

    nop

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_24
        :pswitch_29
        :pswitch_2e
        :pswitch_33
        :pswitch_38
        :pswitch_3d
        :pswitch_42
        :pswitch_47
        :pswitch_4c
    .end packed-switch
.end method

.method public zzzj(I)[Lcom/google/android/gms/phenotype/Flag;
    .registers 3

    new-array v0, p1, [Lcom/google/android/gms/phenotype/Flag;

    return-object v0
.end method
