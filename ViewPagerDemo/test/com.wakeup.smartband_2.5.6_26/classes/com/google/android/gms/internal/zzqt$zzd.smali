.class Lcom/google/android/gms/internal/zzqt$zzd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/zze$zzf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzqt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zzd"
.end annotation


# instance fields
.field private final vC:Lcom/google/android/gms/common/api/Api$zze;

.field private final vx:Lcom/google/android/gms/internal/zzpz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpz",
            "<*>;"
        }
    .end annotation
.end field

.field final synthetic yE:Lcom/google/android/gms/internal/zzqt;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzqt;Lcom/google/android/gms/common/api/Api$zze;Lcom/google/android/gms/internal/zzpz;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api$zze;",
            "Lcom/google/android/gms/internal/zzpz",
            "<*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqt$zzd;->yE:Lcom/google/android/gms/internal/zzqt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzqt$zzd;->vC:Lcom/google/android/gms/common/api/Api$zze;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzqt$zzd;->vx:Lcom/google/android/gms/internal/zzpz;

    return-void
.end method


# virtual methods
.method public zzh(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 5
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqt$zzd;->vC:Lcom/google/android/gms/common/api/Api$zze;

    const/4 v1, 0x0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/common/api/Api$zze;->zza(Lcom/google/android/gms/common/internal/zzr;Ljava/util/Set;)V

    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqt$zzd;->yE:Lcom/google/android/gms/internal/zzqt;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqt;->zzg(Lcom/google/android/gms/internal/zzqt;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqt$zzd;->vx:Lcom/google/android/gms/internal/zzpz;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqt$zzc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzqt$zzc;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_10
.end method
