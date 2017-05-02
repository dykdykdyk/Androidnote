.class public Lcom/google/android/gms/fitness/request/ListClaimedBleDevicesRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/request/ListClaimedBleDevicesRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final Tt:Lcom/google/android/gms/internal/zzuu;

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zzt;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzt;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/ListClaimedBleDevicesRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/request/ListClaimedBleDevicesRequest;->mVersionCode:I

    invoke-static {p2}, Lcom/google/android/gms/internal/zzuu$zza;->zzgk(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzuu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/ListClaimedBleDevicesRequest;->Tt:Lcom/google/android/gms/internal/zzuu;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzuu;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/fitness/request/ListClaimedBleDevicesRequest;->mVersionCode:I

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/ListClaimedBleDevicesRequest;->Tt:Lcom/google/android/gms/internal/zzuu;

    return-void
.end method


# virtual methods
.method public getCallbackBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/ListClaimedBleDevicesRequest;->Tt:Lcom/google/android/gms/internal/zzuu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzuu;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/fitness/request/ListClaimedBleDevicesRequest;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/request/zzt;->zza(Lcom/google/android/gms/fitness/request/ListClaimedBleDevicesRequest;Landroid/os/Parcel;I)V

    return-void
.end method
