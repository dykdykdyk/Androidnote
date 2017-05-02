.class final Lcom/google/android/gms/common/internal/zzg$3;
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
.field final synthetic BS:[C


# direct methods
.method constructor <init>([C)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzg$3;->BS:[C

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/zzg;-><init>()V

    return-void
.end method


# virtual methods
.method public zzd(C)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzg$3;->BS:[C

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v0

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
