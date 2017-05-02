.class public Lcom/google/android/gms/internal/zzsb;
.super Lcom/google/android/gms/common/internal/zzl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzl",
        "<",
        "Lcom/google/android/gms/internal/zzsd;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzh;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .registers 13

    const/16 v3, 0x27

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzl;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzh;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-void
.end method


# virtual methods
.method protected zzea(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzsd;
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/internal/zzsd$zza;->zzec(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzsd;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic zzh(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzsb;->zzea(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzsd;

    move-result-object v0

    return-object v0
.end method

.method public zzix()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "com.google.android.gms.common.service.START"

    return-object v0
.end method

.method protected zziy()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "com.google.android.gms.common.internal.service.ICommonService"

    return-object v0
.end method
