.class Lcom/google/android/gms/internal/zzqn$zzb$2;
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
.field final synthetic xI:Lcom/google/android/gms/internal/zzqn$zzb;

.field final synthetic xJ:Lcom/google/android/gms/common/internal/zze$zzf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzqn$zzb;Lcom/google/android/gms/internal/zzqq;Lcom/google/android/gms/common/internal/zze$zzf;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqn$zzb$2;->xI:Lcom/google/android/gms/internal/zzqn$zzb;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzqn$zzb$2;->xJ:Lcom/google/android/gms/common/internal/zze$zzf;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzqr$zza;-><init>(Lcom/google/android/gms/internal/zzqq;)V

    return-void
.end method


# virtual methods
.method public zzari()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqn$zzb$2;->xJ:Lcom/google/android/gms/common/internal/zze$zzf;

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/internal/zze$zzf;->zzh(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
