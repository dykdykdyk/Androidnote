.class final Lcom/google/android/gms/common/internal/zzg$11;
.super Lcom/google/android/gms/common/internal/zzg;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/common/internal/zzg;->zzc(C)Lcom/google/android/gms/common/internal/zzg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic BV:C


# direct methods
.method constructor <init>(C)V
    .registers 2

    iput-char p1, p0, Lcom/google/android/gms/common/internal/zzg$11;->BV:C

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/zzg;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/common/internal/zzg;)Lcom/google/android/gms/common/internal/zzg;
    .registers 3

    iget-char v0, p0, Lcom/google/android/gms/common/internal/zzg$11;->BV:C

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/internal/zzg;->zzd(C)Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_8
    return-object p1

    :cond_9
    invoke-super {p0, p1}, Lcom/google/android/gms/common/internal/zzg;->zza(Lcom/google/android/gms/common/internal/zzg;)Lcom/google/android/gms/common/internal/zzg;

    move-result-object p1

    goto :goto_8
.end method

.method public zzd(C)Z
    .registers 3

    iget-char v0, p0, Lcom/google/android/gms/common/internal/zzg$11;->BV:C

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
