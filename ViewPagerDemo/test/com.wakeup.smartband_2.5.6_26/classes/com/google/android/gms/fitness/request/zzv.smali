.class public Lcom/google/android/gms/fitness/request/zzv;
.super Lcom/google/android/gms/fitness/data/zzt$zza;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/fitness/request/zzv$zza;
    }
.end annotation


# instance fields
.field private final Tv:Lcom/google/android/gms/fitness/request/OnDataPointListener;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/fitness/request/OnDataPointListener;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/fitness/data/zzt$zza;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/OnDataPointListener;

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/zzv;->Tv:Lcom/google/android/gms/fitness/request/OnDataPointListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/fitness/request/OnDataPointListener;Lcom/google/android/gms/fitness/request/zzv$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/request/zzv;-><init>(Lcom/google/android/gms/fitness/request/OnDataPointListener;)V

    return-void
.end method


# virtual methods
.method public zzf(Lcom/google/android/gms/fitness/data/DataPoint;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzv;->Tv:Lcom/google/android/gms/fitness/request/OnDataPointListener;

    invoke-interface {v0, p1}, Lcom/google/android/gms/fitness/request/OnDataPointListener;->onDataPoint(Lcom/google/android/gms/fitness/data/DataPoint;)V

    return-void
.end method
