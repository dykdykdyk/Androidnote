.class public Lcom/google/android/gms/fitness/result/zzn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/fitness/result/SyncInfoResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static zza(Lcom/google/android/gms/fitness/result/SyncInfoResult;Landroid/os/Parcel;I)V
    .registers 7

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzcr(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/result/SyncInfoResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/result/SyncInfoResult;->zzbhi()J

    move-result-wide v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza(Landroid/os/Parcel;IJ)V

    const/16 v1, 0x3e8

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/result/SyncInfoResult;->getVersionCode()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzc(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzaj(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/fitness/result/zzn;->zzlg(Landroid/os/Parcel;)Lcom/google/android/gms/fitness/result/SyncInfoResult;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/fitness/result/zzn;->zzqs(I)[Lcom/google/android/gms/fitness/result/SyncInfoResult;

    move-result-object v0

    return-object v0
.end method

.method public zzlg(Landroid/os/Parcel;)Lcom/google/android/gms/fitness/result/SyncInfoResult;
    .registers 11

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzcq(Landroid/os/Parcel;)I

    move-result v6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    :goto_8
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ge v0, v6, :cond_40

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzcp(Landroid/os/Parcel;)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzgv(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_68

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzb(Landroid/os/Parcel;I)V

    move-wide v0, v2

    move-object v2, v4

    move v3, v5

    :goto_1f
    move-object v4, v2

    move v5, v3

    move-wide v2, v0

    goto :goto_8

    :sswitch_23
    sget-object v1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Status;

    move-wide v7, v2

    move-object v2, v0

    move v3, v5

    move-wide v0, v7

    goto :goto_1f

    :sswitch_30
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzi(Landroid/os/Parcel;I)J

    move-result-wide v0

    move-object v2, v4

    move v3, v5

    goto :goto_1f

    :sswitch_37
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzg(Landroid/os/Parcel;I)I

    move-result v0

    move-wide v7, v2

    move-object v2, v4

    move v3, v0

    move-wide v0, v7

    goto :goto_1f

    :cond_40
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-eq v0, v6, :cond_62

    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/zza$zza;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x25

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Overread allowed size end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/zza$zza;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0

    :cond_62
    new-instance v0, Lcom/google/android/gms/fitness/result/SyncInfoResult;

    invoke-direct {v0, v5, v4, v2, v3}, Lcom/google/android/gms/fitness/result/SyncInfoResult;-><init>(ILcom/google/android/gms/common/api/Status;J)V

    return-object v0

    :sswitch_data_68
    .sparse-switch
        0x1 -> :sswitch_23
        0x2 -> :sswitch_30
        0x3e8 -> :sswitch_37
    .end sparse-switch
.end method

.method public zzqs(I)[Lcom/google/android/gms/fitness/result/SyncInfoResult;
    .registers 3

    new-array v0, p1, [Lcom/google/android/gms/fitness/result/SyncInfoResult;

    return-object v0
.end method
