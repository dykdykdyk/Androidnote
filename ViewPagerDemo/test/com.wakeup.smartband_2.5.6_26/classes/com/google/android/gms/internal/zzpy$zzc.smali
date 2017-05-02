.class public final Lcom/google/android/gms/internal/zzpy$zzc;
.super Lcom/google/android/gms/internal/zzpy$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzpy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzc"
.end annotation


# instance fields
.field public final wj:Lcom/google/android/gms/internal/zzrh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzrh",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            ">;"
        }
    .end annotation
.end field

.field public final wk:Lcom/google/android/gms/internal/zzrr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzrr",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/google/android/gms/internal/zzri;Lcom/google/android/gms/tasks/TaskCompletionSource;Landroid/util/SparseArray;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/internal/zzri;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/zzrd$zzb",
            "<*>;",
            "Lcom/google/android/gms/internal/zzri;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/google/android/gms/internal/zzpy$zza;-><init>(IILcom/google/android/gms/tasks/TaskCompletionSource;Landroid/util/SparseArray;)V

    iget-object v0, p2, Lcom/google/android/gms/internal/zzri;->wj:Lcom/google/android/gms/internal/zzrh;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpy$zzc;->wj:Lcom/google/android/gms/internal/zzrh;

    iget-object v0, p2, Lcom/google/android/gms/internal/zzri;->wk:Lcom/google/android/gms/internal/zzrr;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpy$zzc;->wk:Lcom/google/android/gms/internal/zzrr;

    return-void
.end method


# virtual methods
.method public bridge synthetic cancel()Z
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzpy$zza;->cancel()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic zza(Landroid/util/SparseArray;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzpy$zza;->zza(Landroid/util/SparseArray;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy$zzc;->wj:Lcom/google/android/gms/internal/zzrh;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpy$zzc;->wh:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzrh;->zza(Lcom/google/android/gms/common/api/Api$zzb;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy$zzc;->wg:Landroid/util/SparseArray;

    iget v1, p0, Lcom/google/android/gms/internal/zzpy$zzc;->wf:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_20

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/support/v4/util/ArrayMap;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpy$zzc;->wg:Landroid/util/SparseArray;

    iget v2, p0, Lcom/google/android/gms/internal/zzpy$zzc;->wf:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_20
    const-string/jumbo v1, "reg"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpy$zzc;->wj:Lcom/google/android/gms/internal/zzrh;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzrh;->zzasr()Lcom/google/android/gms/internal/zzrd$zzb;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xc

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "registered: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpy$zzc;->wj:Lcom/google/android/gms/internal/zzrh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzrh;->zzasr()Lcom/google/android/gms/internal/zzrd$zzb;

    move-result-object v1

    if-eqz v1, :cond_68

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpy$zzc;->wj:Lcom/google/android/gms/internal/zzrh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzrh;->zzasr()Lcom/google/android/gms/internal/zzrd$zzb;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzri;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzpy$zzc;->wj:Lcom/google/android/gms/internal/zzrh;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzpy$zzc;->wk:Lcom/google/android/gms/internal/zzrr;

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/zzri;-><init>(Lcom/google/android/gms/internal/zzrh;Lcom/google/android/gms/internal/zzrr;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_68
    return-void
.end method

.method public bridge synthetic zzx(Lcom/google/android/gms/common/api/Status;)V
    .registers 2
    .param p1    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzpy$zza;->zzx(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
