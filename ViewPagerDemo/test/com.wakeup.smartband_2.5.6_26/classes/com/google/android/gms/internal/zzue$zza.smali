.class public abstract Lcom/google/android/gms/internal/zzue$zza;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/internal/zzue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzue$zza$zza;
    }
.end annotation


# direct methods
.method public static zzgf(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzue;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string/jumbo v0, "com.google.android.gms.fitness.internal.IReadStatsCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/google/android/gms/internal/zzue;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/google/android/gms/internal/zzue;

    goto :goto_3

    :cond_14
    new-instance v0, Lcom/google/android/gms/internal/zzue$zza$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzue$zza$zza;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_2c

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_8
    return v0

    :sswitch_9
    const-string/jumbo v0, "com.google.android.gms.fitness.internal.IReadStatsCallback"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    goto :goto_8

    :sswitch_11
    const-string/jumbo v0, "com.google.android.gms.fitness.internal.IReadStatsCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2a

    sget-object v0, Lcom/google/android/gms/fitness/result/DataStatsResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/result/DataStatsResult;

    :goto_25
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzue$zza;->zza(Lcom/google/android/gms/fitness/result/DataStatsResult;)V

    move v0, v1

    goto :goto_8

    :cond_2a
    const/4 v0, 0x0

    goto :goto_25

    :sswitch_data_2c
    .sparse-switch
        0x1 -> :sswitch_11
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
