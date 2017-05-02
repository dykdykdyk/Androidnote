.class public Lcom/google/android/gms/internal/zzra;
.super Ljava/lang/Object;


# instance fields
.field protected final yY:Lcom/google/android/gms/internal/zzrb;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/zzrb;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzra;->yY:Lcom/google/android/gms/internal/zzrb;

    return-void
.end method

.method protected static zzc(Lcom/google/android/gms/internal/zzqz;)Lcom/google/android/gms/internal/zzrb;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqz;->zzasn()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqz;->zzasp()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrn;->zza(Landroid/support/v4/app/FragmentActivity;)Lcom/google/android/gms/internal/zzrn;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqz;->zzaso()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrc;->zzt(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzrc;

    move-result-object v0

    goto :goto_e
.end method

.method protected static zzs(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzrb;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/zzqz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzqz;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzra;->zzc(Lcom/google/android/gms/internal/zzqz;)Lcom/google/android/gms/internal/zzrb;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->yY:Lcom/google/android/gms/internal/zzrb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzrb;->zzasq()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    return-void
.end method

.method public onDestroy()V
    .registers 1
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    return-void
.end method

.method public onStart()V
    .registers 1
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    return-void
.end method

.method public onStop()V
    .registers 1
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    return-void
.end method
