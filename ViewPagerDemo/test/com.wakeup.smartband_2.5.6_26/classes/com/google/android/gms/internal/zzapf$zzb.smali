.class final Lcom/google/android/gms/internal/zzapf$zzb;
.super Ljava/util/AbstractSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzapf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic blW:Lcom/google/android/gms/internal/zzapf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzapf;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzapf$zzb;->blW:Lcom/google/android/gms/internal/zzapf;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapf$zzb;->blW:Lcom/google/android/gms/internal/zzapf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzapf;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapf$zzb;->blW:Lcom/google/android/gms/internal/zzapf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzapf;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzapf$zzb$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzapf$zzb$1;-><init>(Lcom/google/android/gms/internal/zzapf$zzb;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapf$zzb;->blW:Lcom/google/android/gms/internal/zzapf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzapf;->zzcs(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzapf$zzd;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapf$zzb;->blW:Lcom/google/android/gms/internal/zzapf;

    iget v0, v0, Lcom/google/android/gms/internal/zzapf;->size:I

    return v0
.end method
