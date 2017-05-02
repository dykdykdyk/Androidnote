.class public Lcom/google/android/gms/fitness/request/zzm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/fitness/request/DataUpdateRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static zza(Lcom/google/android/gms/fitness/request/DataUpdateRequest;Landroid/os/Parcel;I)V
    .registers 8

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzcr(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/request/DataUpdateRequest;->zzafn()J

    move-result-wide v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/request/DataUpdateRequest;->zzbao()J

    move-result-wide v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/request/DataUpdateRequest;->getDataSet()Lcom/google/android/gms/fitness/data/DataSet;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/request/DataUpdateRequest;->getCallbackBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/16 v1, 0x3e8

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/request/DataUpdateRequest;->getVersionCode()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzc(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzaj(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/fitness/request/zzm;->zzjw(Landroid/os/Parcel;)Lcom/google/android/gms/fitness/request/DataUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/fitness/request/zzm;->zzpi(I)[Lcom/google/android/gms/fitness/request/DataUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method public zzjw(Landroid/os/Parcel;)Lcom/google/android/gms/fitness/request/DataUpdateRequest;
    .registers 12

    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzcq(Landroid/os/Parcel;)I

    move-result v8

    const/4 v1, 0x0

    move-object v6, v7

    move-wide v2, v4

    :goto_a
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ge v0, v8, :cond_3d

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzcp(Landroid/os/Parcel;)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzgv(I)I

    move-result v9

    sparse-switch v9, :sswitch_data_66

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzb(Landroid/os/Parcel;I)V

    goto :goto_a

    :sswitch_1f
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzi(Landroid/os/Parcel;I)J

    move-result-wide v2

    goto :goto_a

    :sswitch_24
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzi(Landroid/os/Parcel;I)J

    move-result-wide v4

    goto :goto_a

    :sswitch_29
    sget-object v6, Lcom/google/android/gms/fitness/data/DataSet;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0, v6}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSet;

    move-object v6, v0

    goto :goto_a

    :sswitch_33
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzr(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v7

    goto :goto_a

    :sswitch_38
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzg(Landroid/os/Parcel;I)I

    move-result v1

    goto :goto_a

    :cond_3d
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-eq v0, v8, :cond_5f

    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/zza$zza;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x25

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Overread allowed size end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/zza$zza;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0

    :cond_5f
    new-instance v0, Lcom/google/android/gms/fitness/request/DataUpdateRequest;

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/fitness/request/DataUpdateRequest;-><init>(IJJLcom/google/android/gms/fitness/data/DataSet;Landroid/os/IBinder;)V

    return-object v0

    nop

    :sswitch_data_66
    .sparse-switch
        0x1 -> :sswitch_1f
        0x2 -> :sswitch_24
        0x3 -> :sswitch_29
        0x4 -> :sswitch_33
        0x3e8 -> :sswitch_38
    .end sparse-switch
.end method

.method public zzpi(I)[Lcom/google/android/gms/fitness/request/DataUpdateRequest;
    .registers 3

    new-array v0, p1, [Lcom/google/android/gms/fitness/request/DataUpdateRequest;

    return-object v0
.end method
