.class public abstract Lcom/google/android/gms/internal/zzqd;
.super Lcom/google/android/gms/internal/zzra;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzqd$zza;
    }
.end annotation


# instance fields
.field protected mStarted:Z

.field protected final vP:Lcom/google/android/gms/common/GoogleApiAvailability;

.field private wA:I

.field private final wB:Landroid/os/Handler;

.field protected wy:Z

.field private wz:Lcom/google/android/gms/common/ConnectionResult;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/zzrb;)V
    .registers 3

    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzqd;-><init>(Lcom/google/android/gms/internal/zzrb;Lcom/google/android/gms/common/GoogleApiAvailability;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzrb;Lcom/google/android/gms/common/GoogleApiAvailability;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzra;-><init>(Lcom/google/android/gms/internal/zzrb;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzqd;->wA:I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqd;->wB:Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzqd;->vP:Lcom/google/android/gms/common/GoogleApiAvailability;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzqd;)Lcom/google/android/gms/common/ConnectionResult;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->wz:Lcom/google/android/gms/common/ConnectionResult;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzqd;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzqd;->wA:I

    return v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 9

    const/16 v4, 0x12

    const/16 v2, 0xd

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_4a

    :cond_9
    :goto_9
    move v0, v1

    :cond_a
    if-eqz v0, :cond_3e

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqd;->zzaqo()V

    :goto_f
    return-void

    :pswitch_10
    iget-object v2, p0, Lcom/google/android/gms/internal/zzqd;->vP:Lcom/google/android/gms/common/GoogleApiAvailability;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqd;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_48

    :goto_1c
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqd;->wz:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v1

    if-ne v1, v4, :cond_a

    if-ne v2, v4, :cond_a

    goto :goto_f

    :pswitch_27
    const/4 v3, -0x1

    if-eq p2, v3, :cond_a

    if-nez p2, :cond_9

    if-eqz p3, :cond_46

    const-string/jumbo v0, "<<ResolutionFailureErrorDetail>>"

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    :goto_35
    new-instance v2, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzqd;->wz:Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_9

    :cond_3e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->wz:Lcom/google/android/gms/common/ConnectionResult;

    iget v1, p0, Lcom/google/android/gms/internal/zzqd;->wA:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzqd;->zza(Lcom/google/android/gms/common/ConnectionResult;I)V

    goto :goto_f

    :cond_46
    move v0, v2

    goto :goto_35

    :cond_48
    move v0, v1

    goto :goto_1c

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_27
        :pswitch_10
    .end packed-switch
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 5

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    iget v1, p0, Lcom/google/android/gms/internal/zzqd;->wA:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzqd;->zza(Lcom/google/android/gms/common/ConnectionResult;I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqd;->zzaqo()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzra;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_34

    const-string/jumbo v0, "resolving_error"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzqd;->wy:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzqd;->wy:Z

    if-eqz v0, :cond_34

    const-string/jumbo v0, "failed_client_id"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzqd;->wA:I

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const-string/jumbo v0, "failed_status"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v0, "failed_resolution"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzqd;->wz:Lcom/google/android/gms/common/ConnectionResult;

    :cond_34
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzra;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "resolving_error"

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzqd;->wy:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzqd;->wy:Z

    if-eqz v0, :cond_2f

    const-string/jumbo v0, "failed_client_id"

    iget v1, p0, Lcom/google/android/gms/internal/zzqd;->wA:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "failed_status"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqd;->wz:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "failed_resolution"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqd;->wz:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->getResolution()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_2f
    return-void
.end method

.method public onStart()V
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzra;->onStart()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzqd;->mStarted:Z

    return-void
.end method

.method public onStop()V
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzra;->onStop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzqd;->mStarted:Z

    return-void
.end method

.method protected abstract zza(Lcom/google/android/gms/common/ConnectionResult;I)V
.end method

.method protected abstract zzaqk()V
.end method

.method protected zzaqo()V
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzqd;->wA:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzqd;->wy:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqd;->wz:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqd;->zzaqk()V

    return-void
.end method

.method public zzb(Lcom/google/android/gms/common/ConnectionResult;I)V
    .registers 6

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzqd;->wy:Z

    if-nez v0, :cond_16

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzqd;->wy:Z

    iput p2, p0, Lcom/google/android/gms/internal/zzqd;->wA:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqd;->wz:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->wB:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzqd$zza;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/zzqd$zza;-><init>(Lcom/google/android/gms/internal/zzqd;Lcom/google/android/gms/internal/zzqd$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_16
    return-void
.end method
