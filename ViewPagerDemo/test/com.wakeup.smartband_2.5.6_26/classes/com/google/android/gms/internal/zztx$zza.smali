.class public abstract Lcom/google/android/gms/internal/zztx$zza;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/internal/zztx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zztx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zztx$zza$zza;
    }
.end annotation


# direct methods
.method public static zzfy(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zztx;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string/jumbo v0, "com.google.android.gms.fitness.internal.IGoogleFitHistoryApi"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/google/android/gms/internal/zztx;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/google/android/gms/internal/zztx;

    goto :goto_3

    :cond_14
    new-instance v0, Lcom/google/android/gms/internal/zztx$zza$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zztx$zza$zza;-><init>(Landroid/os/IBinder;)V

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

    sparse-switch p1, :sswitch_data_16a

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_9
    return v0

    :sswitch_a
    const-string/jumbo v0, "com.google.android.gms.fitness.internal.IGoogleFitHistoryApi"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    goto :goto_9

    :sswitch_12
    const-string/jumbo v2, "com.google.android.gms.fitness.internal.IGoogleFitHistoryApi"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_26

    sget-object v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/DataReadRequest;

    :cond_26
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zztx$zza;->zza(Lcom/google/android/gms/fitness/request/DataReadRequest;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto :goto_9

    :sswitch_2e
    const-string/jumbo v2, "com.google.android.gms.fitness.internal.IGoogleFitHistoryApi"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_42

    sget-object v0, Lcom/google/android/gms/fitness/request/DataInsertRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/DataInsertRequest;

    :cond_42
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zztx$zza;->zza(Lcom/google/android/gms/fitness/request/DataInsertRequest;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto :goto_9

    :sswitch_4a
    const-string/jumbo v2, "com.google.android.gms.fitness.internal.IGoogleFitHistoryApi"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5e

    sget-object v0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;

    :cond_5e
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zztx$zza;->zza(Lcom/google/android/gms/fitness/request/DataDeleteRequest;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto :goto_9

    :sswitch_66
    const-string/jumbo v2, "com.google.android.gms.fitness.internal.IGoogleFitHistoryApi"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7a

    sget-object v0, Lcom/google/android/gms/fitness/request/GetSyncInfoRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/GetSyncInfoRequest;

    :cond_7a
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zztx$zza;->zza(Lcom/google/android/gms/fitness/request/GetSyncInfoRequest;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto :goto_9

    :sswitch_82
    const-string/jumbo v2, "com.google.android.gms.fitness.internal.IGoogleFitHistoryApi"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_96

    sget-object v0, Lcom/google/android/gms/fitness/request/ReadStatsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/ReadStatsRequest;

    :cond_96
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zztx$zza;->zza(Lcom/google/android/gms/fitness/request/ReadStatsRequest;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto/16 :goto_9

    :sswitch_9f
    const-string/jumbo v2, "com.google.android.gms.fitness.internal.IGoogleFitHistoryApi"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_b3

    sget-object v0, Lcom/google/android/gms/fitness/request/ReadRawRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/ReadRawRequest;

    :cond_b3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zztx$zza;->zza(Lcom/google/android/gms/fitness/request/ReadRawRequest;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto/16 :goto_9

    :sswitch_bc
    const-string/jumbo v2, "com.google.android.gms.fitness.internal.IGoogleFitHistoryApi"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_d0

    sget-object v0, Lcom/google/android/gms/fitness/request/DailyTotalRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/DailyTotalRequest;

    :cond_d0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zztx$zza;->zza(Lcom/google/android/gms/fitness/request/DailyTotalRequest;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto/16 :goto_9

    :sswitch_d9
    const-string/jumbo v2, "com.google.android.gms.fitness.internal.IGoogleFitHistoryApi"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_ed

    sget-object v0, Lcom/google/android/gms/fitness/request/DataInsertRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/DataInsertRequest;

    :cond_ed
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zztx$zza;->zzb(Lcom/google/android/gms/fitness/request/DataInsertRequest;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto/16 :goto_9

    :sswitch_f6
    const-string/jumbo v2, "com.google.android.gms.fitness.internal.IGoogleFitHistoryApi"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_10a

    sget-object v0, Lcom/google/android/gms/fitness/request/DataUpdateRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/DataUpdateRequest;

    :cond_10a
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zztx$zza;->zza(Lcom/google/android/gms/fitness/request/DataUpdateRequest;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto/16 :goto_9

    :sswitch_113
    const-string/jumbo v2, "com.google.android.gms.fitness.internal.IGoogleFitHistoryApi"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_127

    sget-object v0, Lcom/google/android/gms/fitness/request/DataUpdateListenerRegistrationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/DataUpdateListenerRegistrationRequest;

    :cond_127
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zztx$zza;->zza(Lcom/google/android/gms/fitness/request/DataUpdateListenerRegistrationRequest;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto/16 :goto_9

    :sswitch_130
    const-string/jumbo v2, "com.google.android.gms.fitness.internal.IGoogleFitHistoryApi"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_144

    sget-object v0, Lcom/google/android/gms/fitness/request/DataUpdateListenerUnregistrationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/DataUpdateListenerUnregistrationRequest;

    :cond_144
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zztx$zza;->zza(Lcom/google/android/gms/fitness/request/DataUpdateListenerUnregistrationRequest;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto/16 :goto_9

    :sswitch_14d
    const-string/jumbo v2, "com.google.android.gms.fitness.internal.IGoogleFitHistoryApi"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_161

    sget-object v0, Lcom/google/android/gms/fitness/request/GetFileUriRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/GetFileUriRequest;

    :cond_161
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zztx$zza;->zza(Lcom/google/android/gms/fitness/request/GetFileUriRequest;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto/16 :goto_9

    :sswitch_data_16a
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_2e
        0x3 -> :sswitch_4a
        0x4 -> :sswitch_66
        0x5 -> :sswitch_82
        0x6 -> :sswitch_9f
        0x7 -> :sswitch_bc
        0x8 -> :sswitch_d9
        0x9 -> :sswitch_f6
        0xa -> :sswitch_113
        0xb -> :sswitch_130
        0xc -> :sswitch_14d
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
