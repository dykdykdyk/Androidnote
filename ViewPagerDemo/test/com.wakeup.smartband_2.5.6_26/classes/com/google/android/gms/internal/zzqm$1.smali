.class Lcom/google/android/gms/internal/zzqm$1;
.super Lcom/google/android/gms/internal/zzqr$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzqm;->zzd(Lcom/google/android/gms/internal/zzqc$zza;)Lcom/google/android/gms/internal/zzqc$zza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic xm:Lcom/google/android/gms/internal/zzqm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzqm;Lcom/google/android/gms/internal/zzqq;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqm$1;->xm:Lcom/google/android/gms/internal/zzqm;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzqr$zza;-><init>(Lcom/google/android/gms/internal/zzqq;)V

    return-void
.end method


# virtual methods
.method public zzari()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqm$1;->xm:Lcom/google/android/gms/internal/zzqm;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzqm;->onConnectionSuspended(I)V

    return-void
.end method
