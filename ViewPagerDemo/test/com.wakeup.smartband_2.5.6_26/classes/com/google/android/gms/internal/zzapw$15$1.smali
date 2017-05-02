.class Lcom/google/android/gms/internal/zzapw$15$1;
.super Lcom/google/android/gms/internal/zzaot;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzapw$15;->zza(Lcom/google/android/gms/internal/zzaob;Lcom/google/android/gms/internal/zzapx;)Lcom/google/android/gms/internal/zzaot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzaot",
        "<",
        "Ljava/sql/Timestamp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic bnK:Lcom/google/android/gms/internal/zzaot;

.field final synthetic bnL:Lcom/google/android/gms/internal/zzapw$15;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzapw$15;Lcom/google/android/gms/internal/zzaot;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzapw$15$1;->bnL:Lcom/google/android/gms/internal/zzapw$15;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzapw$15$1;->bnK:Lcom/google/android/gms/internal/zzaot;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaot;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic zza(Lcom/google/android/gms/internal/zzaqa;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/sql/Timestamp;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzapw$15$1;->zza(Lcom/google/android/gms/internal/zzaqa;Ljava/sql/Timestamp;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzaqa;Ljava/sql/Timestamp;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapw$15$1;->bnK:Lcom/google/android/gms/internal/zzaot;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzaot;->zza(Lcom/google/android/gms/internal/zzaqa;Ljava/lang/Object;)V

    return-void
.end method

.method public zzaa(Lcom/google/android/gms/internal/zzapy;)Ljava/sql/Timestamp;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapw$15$1;->bnK:Lcom/google/android/gms/internal/zzaot;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzaot;->zzb(Lcom/google/android/gms/internal/zzapy;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-eqz v0, :cond_15

    new-instance v1, Ljava/sql/Timestamp;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    move-object v0, v1

    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzapy;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzapw$15$1;->zzaa(Lcom/google/android/gms/internal/zzapy;)Ljava/sql/Timestamp;

    move-result-object v0

    return-object v0
.end method
