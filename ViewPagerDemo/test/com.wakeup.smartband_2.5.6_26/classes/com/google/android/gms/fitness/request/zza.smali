.class public Lcom/google/android/gms/fitness/request/zza;
.super Lcom/google/android/gms/fitness/request/zzs$zza;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/fitness/request/zza$zza;
    }
.end annotation


# instance fields
.field private final SK:Lcom/google/android/gms/fitness/request/BleScanCallback;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/fitness/request/BleScanCallback;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/fitness/request/zzs$zza;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/BleScanCallback;

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/zza;->SK:Lcom/google/android/gms/fitness/request/BleScanCallback;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/fitness/request/BleScanCallback;Lcom/google/android/gms/fitness/request/zza$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/request/zza;-><init>(Lcom/google/android/gms/fitness/request/BleScanCallback;)V

    return-void
.end method


# virtual methods
.method public onDeviceFound(Lcom/google/android/gms/fitness/data/BleDevice;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zza;->SK:Lcom/google/android/gms/fitness/request/BleScanCallback;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/request/BleScanCallback;->onDeviceFound(Lcom/google/android/gms/fitness/data/BleDevice;)V

    return-void
.end method

.method public onScanStopped()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zza;->SK:Lcom/google/android/gms/fitness/request/BleScanCallback;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/request/BleScanCallback;->onScanStopped()V

    return-void
.end method
