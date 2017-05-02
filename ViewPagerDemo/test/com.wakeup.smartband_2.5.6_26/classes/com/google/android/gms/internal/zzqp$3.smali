.class Lcom/google/android/gms/internal/zzqp$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


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

.field final synthetic yg:Lcom/google/android/gms/internal/zzrm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzqp;Lcom/google/android/gms/internal/zzrm;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqp$3;->ye:Lcom/google/android/gms/internal/zzqp;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzqp$3;->yg:Lcom/google/android/gms/internal/zzrm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 5
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp$3;->yg:Lcom/google/android/gms/internal/zzrm;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzrm;->zzc(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
