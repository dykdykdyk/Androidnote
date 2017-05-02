.class Lcom/google/android/gms/internal/zzrq$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzrq$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzrq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zx:Lcom/google/android/gms/internal/zzrq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzrq;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrq$1;->zx:Lcom/google/android/gms/internal/zzrq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzc(Lcom/google/android/gms/internal/zzqe;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzqe",
            "<*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrq$1;->zx:Lcom/google/android/gms/internal/zzrq;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzrq;->zu:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzqe;->zzaqf()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrq$1;->zx:Lcom/google/android/gms/internal/zzrq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrq;->zza(Lcom/google/android/gms/internal/zzrq;)Lcom/google/android/gms/common/api/zzf;

    move-result-object v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrq$1;->zx:Lcom/google/android/gms/internal/zzrq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrq;->zza(Lcom/google/android/gms/internal/zzrq;)Lcom/google/android/gms/common/api/zzf;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzqe;->zzaqf()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/zzf;->remove(I)V

    :cond_26
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrq$1;->zx:Lcom/google/android/gms/internal/zzrq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrq;->zzb(Lcom/google/android/gms/internal/zzrq;)Lcom/google/android/gms/internal/zzrq$zzc;

    move-result-object v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrq$1;->zx:Lcom/google/android/gms/internal/zzrq;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzrq;->zu:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrq$1;->zx:Lcom/google/android/gms/internal/zzrq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrq;->zzb(Lcom/google/android/gms/internal/zzrq;)Lcom/google/android/gms/internal/zzrq$zzc;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzrq$zzc;->zzask()V

    :cond_41
    return-void
.end method
