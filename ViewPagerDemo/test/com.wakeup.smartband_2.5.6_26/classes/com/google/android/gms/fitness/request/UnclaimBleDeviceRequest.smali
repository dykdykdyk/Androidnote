.class public Lcom/google/android/gms/fitness/request/UnclaimBleDeviceRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/request/UnclaimBleDeviceRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final SN:Ljava/lang/String;

.field private final SP:Lcom/google/android/gms/internal/zzuh;

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zzaj;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzaj;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/UnclaimBleDeviceRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Landroid/os/IBinder;)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/request/UnclaimBleDeviceRequest;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/UnclaimBleDeviceRequest;->SN:Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/gms/internal/zzuh$zza;->zzgi(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzuh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/UnclaimBleDeviceRequest;->SP:Lcom/google/android/gms/internal/zzuh;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzuh;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/google/android/gms/fitness/request/UnclaimBleDeviceRequest;->mVersionCode:I

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/UnclaimBleDeviceRequest;->SN:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/UnclaimBleDeviceRequest;->SP:Lcom/google/android/gms/internal/zzuh;

    return-void
.end method


# virtual methods
.method public getCallbackBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/UnclaimBleDeviceRequest;->SP:Lcom/google/android/gms/internal/zzuh;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/UnclaimBleDeviceRequest;->SP:Lcom/google/android/gms/internal/zzuh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzuh;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_5
.end method

.method public getDeviceAddress()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/UnclaimBleDeviceRequest;->SN:Ljava/lang/String;

    return-object v0
.end method

.method getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/fitness/request/UnclaimBleDeviceRequest;->mVersionCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-string/jumbo v0, "UnclaimBleDeviceRequest{%s}"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/fitness/request/UnclaimBleDeviceRequest;->SN:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/request/zzaj;->zza(Lcom/google/android/gms/fitness/request/UnclaimBleDeviceRequest;Landroid/os/Parcel;I)V

    return-void
.end method
