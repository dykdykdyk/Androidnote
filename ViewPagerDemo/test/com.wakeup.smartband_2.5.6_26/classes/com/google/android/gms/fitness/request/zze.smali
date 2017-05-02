.class public Lcom/google/android/gms/fitness/request/zze;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/fitness/request/DataInsertRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static zza(Lcom/google/android/gms/fitness/request/DataInsertRequest;Landroid/os/Parcel;I)V
    .registers 7

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzcr(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/request/DataInsertRequest;->getDataSet()Lcom/google/android/gms/fitness/data/DataSet;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/request/DataInsertRequest;->getCallbackBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/request/DataInsertRequest;->zzbgd()Z

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza(Landroid/os/Parcel;IZ)V

    const/16 v1, 0x3e8

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/request/DataInsertRequest;->getVersionCode()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzc(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzaj(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/fitness/request/zze;->zzjo(Landroid/os/Parcel;)Lcom/google/android/gms/fitness/request/DataInsertRequest;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/fitness/request/zze;->zzpa(I)[Lcom/google/android/gms/fitness/request/DataInsertRequest;

    move-result-object v0

    return-object v0
.end method

.method public zzjo(Landroid/os/Parcel;)Lcom/google/android/gms/fitness/request/DataInsertRequest;
    .registers 10

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzcq(Landroid/os/Parcel;)I

    move-result v5

    move-object v3, v2

    move v4, v1

    :goto_8
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ge v0, v5, :cond_4f

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzcp(Landroid/os/Parcel;)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzgv(I)I

    move-result v6

    sparse-switch v6, :sswitch_data_78

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzb(Landroid/os/Parcel;I)V

    move v0, v1

    move-object v1, v2

    move-object v2, v3

    move v3, v4

    :goto_20
    move v4, v3

    move-object v3, v2

    move-object v2, v1

    move v1, v0

    goto :goto_8

    :sswitch_25
    sget-object v3, Lcom/google/android/gms/fitness/data/DataSet;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSet;

    move v3, v4

    move-object v7, v2

    move-object v2, v0

    move v0, v1

    move-object v1, v7

    goto :goto_20

    :sswitch_33
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzr(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v0

    move-object v2, v3

    move v3, v4

    move v7, v1

    move-object v1, v0

    move v0, v7

    goto :goto_20

    :sswitch_3d
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzc(Landroid/os/Parcel;I)Z

    move-result v0

    move-object v1, v2

    move-object v2, v3

    move v3, v4

    goto :goto_20

    :sswitch_45
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzg(Landroid/os/Parcel;I)I

    move-result v0

    move v7, v1

    move-object v1, v2

    move-object v2, v3

    move v3, v0

    move v0, v7

    goto :goto_20

    :cond_4f
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-eq v0, v5, :cond_71

    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/zza$zza;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x25

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Overread allowed size end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/zza$zza;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0

    :cond_71
    new-instance v0, Lcom/google/android/gms/fitness/request/DataInsertRequest;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/google/android/gms/fitness/request/DataInsertRequest;-><init>(ILcom/google/android/gms/fitness/data/DataSet;Landroid/os/IBinder;Z)V

    return-object v0

    nop

    :sswitch_data_78
    .sparse-switch
        0x1 -> :sswitch_25
        0x2 -> :sswitch_33
        0x4 -> :sswitch_3d
        0x3e8 -> :sswitch_45
    .end sparse-switch
.end method

.method public zzpa(I)[Lcom/google/android/gms/fitness/request/DataInsertRequest;
    .registers 3

    new-array v0, p1, [Lcom/google/android/gms/fitness/request/DataInsertRequest;

    return-object v0
.end method
