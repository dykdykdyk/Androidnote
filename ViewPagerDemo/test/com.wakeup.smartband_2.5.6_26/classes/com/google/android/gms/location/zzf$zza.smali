.class public abstract Lcom/google/android/gms/location/zzf$zza;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/location/zzf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/location/zzf$zza$zza;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.google.android.gms.location.ILocationCallback"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/location/zzf$zza;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static zzgx(Landroid/os/IBinder;)Lcom/google/android/gms/location/zzf;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string/jumbo v0, "com.google.android.gms.location.ILocationCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/google/android/gms/location/zzf;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/google/android/gms/location/zzf;

    goto :goto_3

    :cond_14
    new-instance v0, Lcom/google/android/gms/location/zzf$zza$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/location/zzf$zza$zza;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_44

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_9
    return v0

    :sswitch_a
    const-string/jumbo v0, "com.google.android.gms.location.ILocationCallback"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    goto :goto_9

    :sswitch_12
    const-string/jumbo v2, "com.google.android.gms.location.ILocationCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_26

    sget-object v0, Lcom/google/android/gms/location/LocationResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/LocationResult;

    :cond_26
    invoke-virtual {p0, v0}, Lcom/google/android/gms/location/zzf$zza;->onLocationResult(Lcom/google/android/gms/location/LocationResult;)V

    move v0, v1

    goto :goto_9

    :sswitch_2b
    const-string/jumbo v2, "com.google.android.gms.location.ILocationCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3f

    sget-object v0, Lcom/google/android/gms/location/LocationAvailability;->CREATOR:Lcom/google/android/gms/location/LocationAvailabilityCreator;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/location/LocationAvailabilityCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/LocationAvailability;

    :cond_3f
    invoke-virtual {p0, v0}, Lcom/google/android/gms/location/zzf$zza;->onLocationAvailability(Lcom/google/android/gms/location/LocationAvailability;)V

    move v0, v1

    goto :goto_9

    :sswitch_data_44
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_2b
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
