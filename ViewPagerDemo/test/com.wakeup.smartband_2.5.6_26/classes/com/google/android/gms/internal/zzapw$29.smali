.class final Lcom/google/android/gms/internal/zzapw$29;
.super Lcom/google/android/gms/internal/zzaot;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzapw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzaot",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaot;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzaqa;Ljava/lang/Number;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzaqa;->zza(Ljava/lang/Number;)Lcom/google/android/gms/internal/zzaqa;

    return-void
.end method

.method public bridge synthetic zza(Lcom/google/android/gms/internal/zzaqa;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzapw$29;->zza(Lcom/google/android/gms/internal/zzaqa;Ljava/lang/Number;)V

    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzapy;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzapw$29;->zzg(Lcom/google/android/gms/internal/zzapy;)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public zzg(Lcom/google/android/gms/internal/zzapy;)Ljava/lang/Number;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapy;->bn()Lcom/google/android/gms/internal/zzapz;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzapz;->bos:Lcom/google/android/gms/internal/zzapz;

    if-ne v0, v1, :cond_d

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapy;->nextNull()V

    const/4 v0, 0x0

    :goto_c
    return-object v0

    :cond_d
    :try_start_d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapy;->nextInt()I

    move-result v0

    int-to-short v0, v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_15} :catch_17

    move-result-object v0

    goto :goto_c

    :catch_17
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzaoq;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzaoq;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
