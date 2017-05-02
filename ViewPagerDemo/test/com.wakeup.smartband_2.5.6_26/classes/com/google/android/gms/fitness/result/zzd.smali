.class public Lcom/google/android/gms/fitness/result/zzd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/fitness/result/DataSourceStatsResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static zza(Lcom/google/android/gms/fitness/result/DataSourceStatsResult;Landroid/os/Parcel;I)V
    .registers 7

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzcr(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/fitness/result/DataSourceStatsResult;->ON:Lcom/google/android/gms/fitness/data/DataSource;

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/fitness/result/DataSourceStatsResult;->fr:J

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/android/gms/fitness/result/DataSourceStatsResult;->Ui:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/android/gms/fitness/result/DataSourceStatsResult;->Uj:J

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/android/gms/fitness/result/DataSourceStatsResult;->Uk:J

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza(Landroid/os/Parcel;IJ)V

    const/16 v1, 0x3e8

    iget v2, p0, Lcom/google/android/gms/fitness/result/DataSourceStatsResult;->mVersionCode:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzc(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzaj(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/fitness/result/zzd;->zzkw(Landroid/os/Parcel;)Lcom/google/android/gms/fitness/result/DataSourceStatsResult;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/fitness/result/zzd;->zzqi(I)[Lcom/google/android/gms/fitness/result/DataSourceStatsResult;

    move-result-object v0

    return-object v0
.end method

.method public zzkw(Landroid/os/Parcel;)Lcom/google/android/gms/fitness/result/DataSourceStatsResult;
    .registers 14

    const/4 v5, 0x0

    const-wide/16 v8, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzcq(Landroid/os/Parcel;)I

    move-result v10

    const/4 v2, 0x0

    move-wide v6, v8

    move-wide v3, v8

    move v1, v5

    :goto_b
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ge v0, v10, :cond_43

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzcp(Landroid/os/Parcel;)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzgv(I)I

    move-result v11

    sparse-switch v11, :sswitch_data_6c

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzb(Landroid/os/Parcel;I)V

    goto :goto_b

    :sswitch_20
    sget-object v2, Lcom/google/android/gms/fitness/data/DataSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSource;

    move-object v2, v0

    goto :goto_b

    :sswitch_2a
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzi(Landroid/os/Parcel;I)J

    move-result-wide v3

    goto :goto_b

    :sswitch_2f
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzc(Landroid/os/Parcel;I)Z

    move-result v5

    goto :goto_b

    :sswitch_34
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzi(Landroid/os/Parcel;I)J

    move-result-wide v6

    goto :goto_b

    :sswitch_39
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzi(Landroid/os/Parcel;I)J

    move-result-wide v8

    goto :goto_b

    :sswitch_3e
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzg(Landroid/os/Parcel;I)I

    move-result v1

    goto :goto_b

    :cond_43
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-eq v0, v10, :cond_65

    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/zza$zza;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x25

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Overread allowed size end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/zza$zza;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0

    :cond_65
    new-instance v0, Lcom/google/android/gms/fitness/result/DataSourceStatsResult;

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/fitness/result/DataSourceStatsResult;-><init>(ILcom/google/android/gms/fitness/data/DataSource;JZJJ)V

    return-object v0

    nop

    :sswitch_data_6c
    .sparse-switch
        0x1 -> :sswitch_20
        0x2 -> :sswitch_2a
        0x3 -> :sswitch_2f
        0x4 -> :sswitch_34
        0x5 -> :sswitch_39
        0x3e8 -> :sswitch_3e
    .end sparse-switch
.end method

.method public zzqi(I)[Lcom/google/android/gms/fitness/result/DataSourceStatsResult;
    .registers 3

    new-array v0, p1, [Lcom/google/android/gms/fitness/result/DataSourceStatsResult;

    return-object v0
.end method
