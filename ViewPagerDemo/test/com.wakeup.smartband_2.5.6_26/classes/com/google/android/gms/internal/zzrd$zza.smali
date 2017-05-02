.class final Lcom/google/android/gms/internal/zzrd$zza;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzrd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "zza"
.end annotation


# instance fields
.field final synthetic zg:Lcom/google/android/gms/internal/zzrd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzrd;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrd$zza;->zg:Lcom/google/android/gms/internal/zzrd;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    const/4 v0, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v0, :cond_12

    :goto_5
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzbs(Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrd$zza;->zg:Lcom/google/android/gms/internal/zzrd;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/zzrd$zzc;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzrd;->zzb(Lcom/google/android/gms/internal/zzrd$zzc;)V

    return-void

    :cond_12
    const/4 v0, 0x0

    goto :goto_5
.end method
