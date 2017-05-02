.class public Lcom/google/android/gms/internal/zztg;
.super Lcom/google/android/gms/internal/zztf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zztg$zzb;,
        Lcom/google/android/gms/internal/zztg$zzc;,
        Lcom/google/android/gms/internal/zztg$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zztf",
        "<",
        "Lcom/google/android/gms/internal/zztu;",
        ">;"
    }
.end annotation


# static fields
.field public static final API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final fa:Lcom/google/android/gms/common/api/Api$zzf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzf",
            "<",
            "Lcom/google/android/gms/internal/zztg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zztg;->fa:Lcom/google/android/gms/common/api/Api$zzf;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    const-string/jumbo v1, "Fitness.BLE_API"

    new-instance v2, Lcom/google/android/gms/internal/zztg$zzb;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zztg$zzb;-><init>()V

    sget-object v3, Lcom/google/android/gms/internal/zztg;->fa:Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzf;)V

    sput-object v0, Lcom/google/android/gms/internal/zztg;->API:Lcom/google/android/gms/common/api/Api;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzh;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .registers 13

    const/16 v3, 0x3b

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zztf;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Lcom/google/android/gms/common/internal/zzh;)V

    return-void
.end method


# virtual methods
.method public zzfh(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zztu;
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/internal/zztu$zza;->zzfv(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zztu;

    move-result-object v0

    return-object v0
.end method

.method public synthetic zzh(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zztg;->zzfh(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zztu;

    move-result-object v0

    return-object v0
.end method

.method public zzix()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "com.google.android.gms.fitness.BleApi"

    return-object v0
.end method

.method public zziy()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "com.google.android.gms.fitness.internal.IGoogleFitBleApi"

    return-object v0
.end method
