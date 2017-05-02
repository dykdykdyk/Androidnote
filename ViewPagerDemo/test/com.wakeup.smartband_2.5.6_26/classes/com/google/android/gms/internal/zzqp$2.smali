.class Lcom/google/android/gms/internal/zzqp$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzqp;->clearDefaultAccountAndReconnect()Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ye:Lcom/google/android/gms/internal/zzqp;

.field final synthetic yf:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic yg:Lcom/google/android/gms/internal/zzrm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzqp;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/zzrm;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqp$2;->ye:Lcom/google/android/gms/internal/zzqp;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzqp$2;->yf:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzqp$2;->yg:Lcom/google/android/gms/internal/zzrm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .registers 6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqp$2;->ye:Lcom/google/android/gms/internal/zzqp;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp$2;->yf:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqp$2;->yg:Lcom/google/android/gms/internal/zzrm;

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/gms/internal/zzqp;->zza(Lcom/google/android/gms/internal/zzqp;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzrm;Z)V

    return-void
.end method

.method public onConnectionSuspended(I)V
    .registers 2

    return-void
.end method
