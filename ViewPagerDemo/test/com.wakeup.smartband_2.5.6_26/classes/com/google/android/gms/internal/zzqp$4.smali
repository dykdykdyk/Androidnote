.class Lcom/google/android/gms/internal/zzqp$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzqp;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzrm;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic lX:Lcom/google/android/gms/common/api/GoogleApiClient;

.field final synthetic ye:Lcom/google/android/gms/internal/zzqp;

.field final synthetic yg:Lcom/google/android/gms/internal/zzrm;

.field final synthetic yh:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzqp;Lcom/google/android/gms/internal/zzrm;ZLcom/google/android/gms/common/api/GoogleApiClient;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqp$4;->ye:Lcom/google/android/gms/internal/zzqp;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzqp$4;->yg:Lcom/google/android/gms/internal/zzrm;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzqp$4;->yh:Z

    iput-object p4, p0, Lcom/google/android/gms/internal/zzqp$4;->lX:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .registers 2
    .param p1    # Lcom/google/android/gms/common/api/Result;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzqp$4;->zzp(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public zzp(Lcom/google/android/gms/common/api/Status;)V
    .registers 3
    .param p1    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp$4;->ye:Lcom/google/android/gms/internal/zzqp;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqp;->zzc(Lcom/google/android/gms/internal/zzqp;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/internal/zzk;->zzbd(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/zzk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/internal/zzk;->zzaie()V

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp$4;->ye:Lcom/google/android/gms/internal/zzqp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqp;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp$4;->ye:Lcom/google/android/gms/internal/zzqp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqp;->reconnect()V

    :cond_20
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp$4;->yg:Lcom/google/android/gms/internal/zzrm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzrm;->zzc(Lcom/google/android/gms/common/api/Result;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzqp$4;->yh:Z

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp$4;->lX:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    :cond_2e
    return-void
.end method
