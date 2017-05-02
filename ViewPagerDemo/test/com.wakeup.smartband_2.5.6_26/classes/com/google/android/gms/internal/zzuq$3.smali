.class Lcom/google/android/gms/internal/zzuq$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzuq$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzuq;->remove(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/OnDataPointListener;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Su:Lcom/google/android/gms/internal/zzuq;

.field final synthetic Sy:Lcom/google/android/gms/fitness/request/OnDataPointListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzuq;Lcom/google/android/gms/fitness/request/OnDataPointListener;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzuq$3;->Su:Lcom/google/android/gms/internal/zzuq;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzuq$3;->Sy:Lcom/google/android/gms/fitness/request/OnDataPointListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzbfv()V
    .registers 3

    invoke-static {}, Lcom/google/android/gms/fitness/request/zzv$zza;->zzbgm()Lcom/google/android/gms/fitness/request/zzv$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzuq$3;->Sy:Lcom/google/android/gms/fitness/request/OnDataPointListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/request/zzv$zza;->zzc(Lcom/google/android/gms/fitness/request/OnDataPointListener;)Lcom/google/android/gms/fitness/request/zzv;

    return-void
.end method
