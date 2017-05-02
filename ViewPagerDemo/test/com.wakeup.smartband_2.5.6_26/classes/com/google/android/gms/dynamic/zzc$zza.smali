.class public abstract Lcom/google/android/gms/dynamic/zzc$zza;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/dynamic/zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/dynamic/zzc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/dynamic/zzc$zza$zza;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/dynamic/zzc$zza;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static zzfd(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/zzc;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string/jumbo v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/google/android/gms/dynamic/zzc;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/google/android/gms/dynamic/zzc;

    goto :goto_3

    :cond_14
    new-instance v0, Lcom/google/android/gms/dynamic/zzc$zza$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/dynamic/zzc$zza$zza;-><init>(Landroid/os/IBinder;)V

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

    const/4 v2, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_252

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_a
    return v1

    :sswitch_b
    const-string/jumbo v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a

    :sswitch_12
    const-string/jumbo v2, "com.google.android.gms.dynamic.IFragmentWrapper"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/zzc$zza;->zzbdu()Lcom/google/android/gms/dynamic/zzd;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_25

    invoke-interface {v2}, Lcom/google/android/gms/dynamic/zzd;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_25
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_a

    :sswitch_29
    const-string/jumbo v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/zzc$zza;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_3f

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_a

    :cond_3f
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    :sswitch_43
    const-string/jumbo v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/zzc$zza;->getId()I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    :sswitch_54
    const-string/jumbo v2, "com.google.android.gms.dynamic.IFragmentWrapper"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/zzc$zza;->zzbdv()Lcom/google/android/gms/dynamic/zzc;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_67

    invoke-interface {v2}, Lcom/google/android/gms/dynamic/zzc;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_67
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_a

    :sswitch_6b
    const-string/jumbo v2, "com.google.android.gms.dynamic.IFragmentWrapper"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/zzc$zza;->zzbdw()Lcom/google/android/gms/dynamic/zzd;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_7e

    invoke-interface {v2}, Lcom/google/android/gms/dynamic/zzd;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_7e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_a

    :sswitch_82
    const-string/jumbo v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/zzc$zza;->getRetainInstance()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_97

    move v0, v1

    :goto_92
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :cond_97
    move v0, v2

    goto :goto_92

    :sswitch_99
    const-string/jumbo v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/zzc$zza;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_a

    :sswitch_ab
    const-string/jumbo v2, "com.google.android.gms.dynamic.IFragmentWrapper"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/zzc$zza;->zzbdx()Lcom/google/android/gms/dynamic/zzc;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_be

    invoke-interface {v2}, Lcom/google/android/gms/dynamic/zzc;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_be
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_a

    :sswitch_c3
    const-string/jumbo v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/zzc$zza;->getTargetRequestCode()I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_d5
    const-string/jumbo v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/zzc$zza;->getUserVisibleHint()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_e5

    move v2, v1

    :cond_e5
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_ea
    const-string/jumbo v2, "com.google.android.gms.dynamic.IFragmentWrapper"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/zzc$zza;->getView()Lcom/google/android/gms/dynamic/zzd;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_fd

    invoke-interface {v2}, Lcom/google/android/gms/dynamic/zzd;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_fd
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_a

    :sswitch_102
    const-string/jumbo v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/zzc$zza;->isAdded()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_112

    move v2, v1

    :cond_112
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_117
    const-string/jumbo v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/zzc$zza;->isDetached()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_127

    move v2, v1

    :cond_127
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_12c
    const-string/jumbo v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/zzc$zza;->isHidden()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_13c

    move v2, v1

    :cond_13c
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_141
    const-string/jumbo v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/zzc$zza;->isInLayout()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_151

    move v2, v1

    :cond_151
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_156
    const-string/jumbo v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/zzc$zza;->isRemoving()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_166

    move v2, v1

    :cond_166
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_16b
    const-string/jumbo v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/zzc$zza;->isResumed()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_17b

    move v2, v1

    :cond_17b
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_180
    const-string/jumbo v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/zzc$zza;->isVisible()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_190

    move v2, v1

    :cond_190
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_195
    const-string/jumbo v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zzd$zza;->zzfe(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/dynamic/zzc$zza;->zzac(Lcom/google/android/gms/dynamic/zzd;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_1ab
    const-string/jumbo v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1b8

    move v2, v1

    :cond_1b8
    invoke-virtual {p0, v2}, Lcom/google/android/gms/dynamic/zzc$zza;->setHasOptionsMenu(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_1c0
    const-string/jumbo v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1cd

    move v2, v1

    :cond_1cd
    invoke-virtual {p0, v2}, Lcom/google/android/gms/dynamic/zzc$zza;->setMenuVisibility(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_1d5
    const-string/jumbo v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1e2

    move v2, v1

    :cond_1e2
    invoke-virtual {p0, v2}, Lcom/google/android/gms/dynamic/zzc$zza;->setRetainInstance(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_1ea
    const-string/jumbo v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1f7

    move v2, v1

    :cond_1f7
    invoke-virtual {p0, v2}, Lcom/google/android/gms/dynamic/zzc$zza;->setUserVisibleHint(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_1ff
    const-string/jumbo v2, "com.google.android.gms.dynamic.IFragmentWrapper"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_213

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    :cond_213
    invoke-virtual {p0, v0}, Lcom/google/android/gms/dynamic/zzc$zza;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_21b
    const-string/jumbo v2, "com.google.android.gms.dynamic.IFragmentWrapper"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_22f

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    :cond_22f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/dynamic/zzc$zza;->startActivityForResult(Landroid/content/Intent;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_23b
    const-string/jumbo v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zzd$zza;->zzfe(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/dynamic/zzc$zza;->zzad(Lcom/google/android/gms/dynamic/zzd;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    nop

    :sswitch_data_252
    .sparse-switch
        0x2 -> :sswitch_12
        0x3 -> :sswitch_29
        0x4 -> :sswitch_43
        0x5 -> :sswitch_54
        0x6 -> :sswitch_6b
        0x7 -> :sswitch_82
        0x8 -> :sswitch_99
        0x9 -> :sswitch_ab
        0xa -> :sswitch_c3
        0xb -> :sswitch_d5
        0xc -> :sswitch_ea
        0xd -> :sswitch_102
        0xe -> :sswitch_117
        0xf -> :sswitch_12c
        0x10 -> :sswitch_141
        0x11 -> :sswitch_156
        0x12 -> :sswitch_16b
        0x13 -> :sswitch_180
        0x14 -> :sswitch_195
        0x15 -> :sswitch_1ab
        0x16 -> :sswitch_1c0
        0x17 -> :sswitch_1d5
        0x18 -> :sswitch_1ea
        0x19 -> :sswitch_1ff
        0x1a -> :sswitch_21b
        0x1b -> :sswitch_23b
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
