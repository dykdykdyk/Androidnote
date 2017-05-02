.class final Lcom/google/android/gms/internal/zzapw$20;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzaou;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzapw;->zza(Lcom/google/android/gms/internal/zzapx;Lcom/google/android/gms/internal/zzaot;)Lcom/google/android/gms/internal/zzaou;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic blO:Lcom/google/android/gms/internal/zzapx;

.field final synthetic bnM:Lcom/google/android/gms/internal/zzaot;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzapx;Lcom/google/android/gms/internal/zzaot;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzapw$20;->blO:Lcom/google/android/gms/internal/zzapx;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzapw$20;->bnM:Lcom/google/android/gms/internal/zzaot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzaob;Lcom/google/android/gms/internal/zzapx;)Lcom/google/android/gms/internal/zzaot;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzaob;",
            "Lcom/google/android/gms/internal/zzapx",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/zzaot",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapw$20;->blO:Lcom/google/android/gms/internal/zzapx;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/zzapx;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapw$20;->bnM:Lcom/google/android/gms/internal/zzaot;

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
