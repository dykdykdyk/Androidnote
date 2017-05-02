.class public Lcom/google/android/gms/internal/zzpy$zzb;
.super Lcom/google/android/gms/internal/zzpy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzpy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lcom/google/android/gms/internal/zzqc$zza",
        "<+",
        "Lcom/google/android/gms/common/api/Result;",
        "Lcom/google/android/gms/common/api/Api$zzb;",
        ">;>",
        "Lcom/google/android/gms/internal/zzpy;"
    }
.end annotation


# instance fields
.field protected final wi:Lcom/google/android/gms/internal/zzqc$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILcom/google/android/gms/internal/zzqc$zza;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITA;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzpy;-><init>(II)V

    iput-object p3, p0, Lcom/google/android/gms/internal/zzpy$zzb;->wi:Lcom/google/android/gms/internal/zzqc$zza;

    return-void
.end method


# virtual methods
.method public cancel()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy$zzb;->wi:Lcom/google/android/gms/internal/zzqc$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqc$zza;->zzaqq()Z

    move-result v0

    return v0
.end method

.method public zza(Landroid/util/SparseArray;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/gms/internal/zzrq;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzpy$zzb;->wf:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzrq;

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpy$zzb;->wi:Lcom/google/android/gms/internal/zzqc$zza;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzrq;->zzb(Lcom/google/android/gms/internal/zzqe;)V

    :cond_f
    return-void
.end method

.method public zzb(Lcom/google/android/gms/common/api/Api$zzb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy$zzb;->wi:Lcom/google/android/gms/internal/zzqc$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzqc$zza;->zzb(Lcom/google/android/gms/common/api/Api$zzb;)V

    return-void
.end method

.method public zzx(Lcom/google/android/gms/common/api/Status;)V
    .registers 3
    .param p1    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy$zzb;->wi:Lcom/google/android/gms/internal/zzqc$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzqc$zza;->zzz(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
