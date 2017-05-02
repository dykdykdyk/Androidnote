.class public Lcom/google/android/gms/fitness/request/StopBleScanRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/request/StopBleScanRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final SP:Lcom/google/android/gms/internal/zzuh;

.field private final TZ:Lcom/google/android/gms/fitness/request/zzs;

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zzah;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzah;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/StopBleScanRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/request/StopBleScanRequest;->mVersionCode:I

    invoke-static {p2}, Lcom/google/android/gms/fitness/request/zzs$zza;->zzgl(Landroid/os/IBinder;)Lcom/google/android/gms/fitness/request/zzs;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/StopBleScanRequest;->TZ:Lcom/google/android/gms/fitness/request/zzs;

    invoke-static {p3}, Lcom/google/android/gms/internal/zzuh$zza;->zzgi(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzuh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/StopBleScanRequest;->SP:Lcom/google/android/gms/internal/zzuh;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/request/BleScanCallback;Lcom/google/android/gms/internal/zzuh;)V
    .registers 4

    invoke-static {}, Lcom/google/android/gms/fitness/request/zza$zza;->zzbfx()Lcom/google/android/gms/fitness/request/zza$zza;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/request/zza$zza;->zzb(Lcom/google/android/gms/fitness/request/BleScanCallback;)Lcom/google/android/gms/fitness/request/zza;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/fitness/request/StopBleScanRequest;-><init>(Lcom/google/android/gms/fitness/request/zzs;Lcom/google/android/gms/internal/zzuh;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/request/zzs;Lcom/google/android/gms/internal/zzuh;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/fitness/request/StopBleScanRequest;->mVersionCode:I

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/StopBleScanRequest;->TZ:Lcom/google/android/gms/fitness/request/zzs;

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/StopBleScanRequest;->SP:Lcom/google/android/gms/internal/zzuh;

    return-void
.end method


# virtual methods
.method public getCallbackBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/StopBleScanRequest;->SP:Lcom/google/android/gms/internal/zzuh;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/StopBleScanRequest;->SP:Lcom/google/android/gms/internal/zzuh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzuh;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_5
.end method

.method getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/fitness/request/StopBleScanRequest;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/request/zzah;->zza(Lcom/google/android/gms/fitness/request/StopBleScanRequest;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzbgx()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/StopBleScanRequest;->TZ:Lcom/google/android/gms/fitness/request/zzs;

    invoke-interface {v0}, Lcom/google/android/gms/fitness/request/zzs;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
