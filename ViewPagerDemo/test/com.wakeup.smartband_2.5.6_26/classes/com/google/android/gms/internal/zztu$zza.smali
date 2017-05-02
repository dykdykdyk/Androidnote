.class public abstract Lcom/google/android/gms/internal/zztu$zza;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/internal/zztu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zztu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zztu$zza$zza;
    }
.end annotation


# direct methods
.method public static zzfv(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zztu;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string/jumbo v0, "com.google.android.gms.fitness.internal.IGoogleFitBleApi"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/google/android/gms/internal/zztu;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/google/android/gms/internal/zztu;

    goto :goto_3

    :cond_14
    new-instance v0, Lcom/google/android/gms/internal/zztu$zza$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zztu$zza$zza;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_a0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_9
    return v0

    :sswitch_a
    const-string/jumbo v0, "com.google.android.gms.fitness.internal.IGoogleFitBleApi"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    goto :goto_9

    :sswitch_12
    const-string/jumbo v2, "com.google.android.gms.fitness.internal.IGoogleFitBleApi"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_26

    sget-object v0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;

    :cond_26
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zztu$zza;->zza(Lcom/google/android/gms/fitness/request/StartBleScanRequest;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto :goto_9

    :sswitch_2e
    const-string/jumbo v2, "com.google.android.gms.fitness.internal.IGoogleFitBleApi"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_42

    sget-object v0, Lcom/google/android/gms/fitness/request/StopBleScanRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/StopBleScanRequest;

    :cond_42
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zztu$zza;->zza(Lcom/google/android/gms/fitness/request/StopBleScanRequest;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto :goto_9

    :sswitch_4a
    const-string/jumbo v2, "com.google.android.gms.fitness.internal.IGoogleFitBleApi"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5e

    sget-object v0, Lcom/google/android/gms/fitness/request/ClaimBleDeviceRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/ClaimBleDeviceRequest;

    :cond_5e
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zztu$zza;->zza(Lcom/google/android/gms/fitness/request/ClaimBleDeviceRequest;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto :goto_9

    :sswitch_66
    const-string/jumbo v2, "com.google.android.gms.fitness.internal.IGoogleFitBleApi"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7a

    sget-object v0, Lcom/google/android/gms/fitness/request/UnclaimBleDeviceRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/UnclaimBleDeviceRequest;

    :cond_7a
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zztu$zza;->zza(Lcom/google/android/gms/fitness/request/UnclaimBleDeviceRequest;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto :goto_9

    :sswitch_82
    const-string/jumbo v2, "com.google.android.gms.fitness.internal.IGoogleFitBleApi"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_96

    sget-object v0, Lcom/google/android/gms/fitness/request/ListClaimedBleDevicesRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/ListClaimedBleDevicesRequest;

    :cond_96
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zztu$zza;->zza(Lcom/google/android/gms/fitness/request/ListClaimedBleDevicesRequest;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto/16 :goto_9

    nop

    :sswitch_data_a0
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_2e
        0x3 -> :sswitch_4a
        0x4 -> :sswitch_66
        0x5 -> :sswitch_82
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
