.class Lcom/google/android/gms/internal/zzqn$zzb$1;
.super Lcom/google/android/gms/internal/zzqr$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzqn$zzb;->zzari()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic xH:Lcom/google/android/gms/common/ConnectionResult;

.field final synthetic xI:Lcom/google/android/gms/internal/zzqn$zzb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzqn$zzb;Lcom/google/android/gms/internal/zzqq;Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqn$zzb$1;->xI:Lcom/google/android/gms/internal/zzqn$zzb;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzqn$zzb$1;->xH:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzqr$zza;-><init>(Lcom/google/android/gms/internal/zzqq;)V

    return-void
.end method


# virtual methods
.method public zzari()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqn$zzb$1;->xI:Lcom/google/android/gms/internal/zzqn$zzb;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqn$zzb;->xE:Lcom/google/android/gms/internal/zzqn;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqn$zzb$1;->xH:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzqn;->zza(Lcom/google/android/gms/internal/zzqn;Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
