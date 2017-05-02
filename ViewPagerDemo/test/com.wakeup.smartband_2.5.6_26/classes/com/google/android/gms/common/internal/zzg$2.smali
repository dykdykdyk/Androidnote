.class final Lcom/google/android/gms/common/internal/zzg$2;
.super Lcom/google/android/gms/common/internal/zzg;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/common/internal/zzg;->zza(Ljava/lang/CharSequence;)Lcom/google/android/gms/common/internal/zzg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic BQ:C

.field final synthetic BR:C


# direct methods
.method constructor <init>(CC)V
    .registers 3

    iput-char p1, p0, Lcom/google/android/gms/common/internal/zzg$2;->BQ:C

    iput-char p2, p0, Lcom/google/android/gms/common/internal/zzg$2;->BR:C

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/zzg;-><init>()V

    return-void
.end method


# virtual methods
.method public zzd(C)Z
    .registers 3

    iget-char v0, p0, Lcom/google/android/gms/common/internal/zzg$2;->BQ:C

    if-eq p1, v0, :cond_8

    iget-char v0, p0, Lcom/google/android/gms/common/internal/zzg$2;->BR:C

    if-ne p1, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
