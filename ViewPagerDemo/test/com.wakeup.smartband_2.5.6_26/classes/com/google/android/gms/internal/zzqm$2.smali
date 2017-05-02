.class Lcom/google/android/gms/internal/zzqm$2;
.super Lcom/google/android/gms/internal/zzqr$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzqm;->connect()V
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

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqm$2;->xm:Lcom/google/android/gms/internal/zzqm;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzqr$zza;-><init>(Lcom/google/android/gms/internal/zzqq;)V

    return-void
.end method


# virtual methods
.method public zzari()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqm$2;->xm:Lcom/google/android/gms/internal/zzqm;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqm;->zza(Lcom/google/android/gms/internal/zzqm;)Lcom/google/android/gms/internal/zzqr;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqr;->yp:Lcom/google/android/gms/internal/zzqy$zza;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzqy$zza;->zzn(Landroid/os/Bundle;)V

    return-void
.end method
