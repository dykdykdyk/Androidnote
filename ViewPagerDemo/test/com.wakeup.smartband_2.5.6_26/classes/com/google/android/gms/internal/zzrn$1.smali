.class Lcom/google/android/gms/internal/zzrn$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzrn;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzra;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zc:Lcom/google/android/gms/internal/zzra;

.field final synthetic zj:Lcom/google/android/gms/internal/zzrn;

.field final synthetic zzap:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzrn;Lcom/google/android/gms/internal/zzra;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrn$1;->zj:Lcom/google/android/gms/internal/zzrn;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzrn$1;->zc:Lcom/google/android/gms/internal/zzra;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzrn$1;->zzap:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrn$1;->zj:Lcom/google/android/gms/internal/zzrn;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrn;->zza(Lcom/google/android/gms/internal/zzrn;)I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_22

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrn$1;->zc:Lcom/google/android/gms/internal/zzra;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrn$1;->zj:Lcom/google/android/gms/internal/zzrn;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrn;->zzb(Lcom/google/android/gms/internal/zzrn;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrn$1;->zj:Lcom/google/android/gms/internal/zzrn;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrn;->zzb(Lcom/google/android/gms/internal/zzrn;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrn$1;->zzap:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :goto_1f
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzra;->onCreate(Landroid/os/Bundle;)V

    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrn$1;->zj:Lcom/google/android/gms/internal/zzrn;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrn;->zza(Lcom/google/android/gms/internal/zzrn;)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_30

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrn$1;->zc:Lcom/google/android/gms/internal/zzra;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzra;->onStart()V

    :cond_30
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrn$1;->zj:Lcom/google/android/gms/internal/zzrn;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrn;->zza(Lcom/google/android/gms/internal/zzrn;)I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_3e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrn$1;->zc:Lcom/google/android/gms/internal/zzra;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzra;->onStop()V

    :cond_3e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrn$1;->zj:Lcom/google/android/gms/internal/zzrn;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrn;->zza(Lcom/google/android/gms/internal/zzrn;)I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_4c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrn$1;->zc:Lcom/google/android/gms/internal/zzra;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzra;->onDestroy()V

    :cond_4c
    return-void

    :cond_4d
    const/4 v0, 0x0

    goto :goto_1f
.end method
