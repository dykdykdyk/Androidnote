.class public Lcom/google/android/gms/internal/zzqu;
.super Lcom/google/android/gms/internal/zzql;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/google/android/gms/common/api/Api$ApiOptions;",
        ">",
        "Lcom/google/android/gms/internal/zzql;"
    }
.end annotation


# instance fields
.field private final yN:Lcom/google/android/gms/common/api/zzd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/zzd",
            "<TO;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/zzd;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzd",
            "<TO;>;)V"
        }
    .end annotation

    const-string/jumbo v0, "Method is not supported by connectionless client. APIs supporting connectionless client must not call this method."

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzql;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqu;->yN:Lcom/google/android/gms/common/api/zzd;

    return-void
.end method


# virtual methods
.method public getLooper()Landroid/os/Looper;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqu;->yN:Lcom/google/android/gms/common/api/zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/zzd;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzrp;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqu;->yN:Lcom/google/android/gms/common/api/zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/zzd;->zzapu()V

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzrp;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqu;->yN:Lcom/google/android/gms/common/api/zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/zzd;->zzapv()V

    return-void
.end method

.method public zzc(Lcom/google/android/gms/internal/zzqc$zza;)Lcom/google/android/gms/internal/zzqc$zza;
    .registers 3
    .param p1    # Lcom/google/android/gms/internal/zzqc$zza;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "R::",
            "Lcom/google/android/gms/common/api/Result;",
            "T:",
            "Lcom/google/android/gms/internal/zzqc$zza",
            "<TR;TA;>;>(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqu;->yN:Lcom/google/android/gms/common/api/zzd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/zzd;->zza(Lcom/google/android/gms/internal/zzqc$zza;)Lcom/google/android/gms/internal/zzqc$zza;

    move-result-object v0

    return-object v0
.end method

.method public zzd(Lcom/google/android/gms/internal/zzqc$zza;)Lcom/google/android/gms/internal/zzqc$zza;
    .registers 3
    .param p1    # Lcom/google/android/gms/internal/zzqc$zza;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "T:",
            "Lcom/google/android/gms/internal/zzqc$zza",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqu;->yN:Lcom/google/android/gms/common/api/zzd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/zzd;->zzb(Lcom/google/android/gms/internal/zzqc$zza;)Lcom/google/android/gms/internal/zzqc$zza;

    move-result-object v0

    return-object v0
.end method
